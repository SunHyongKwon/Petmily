package com.petmily.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.petmily.admin.dto.NoticeDTO;
import com.petmily.admin.dto.NoticePagingDTO;

public class NoticeDAO {

	DataSource dataSource;

	public NoticeDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//공지사항 작성시
	public void noticeInsert(String adid, String ntitle, String ncontent) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		
		try {
			connection = dataSource.getConnection();
			
			String query = "insert into notice (admin_adid, ntitle, ncontent, ninitdate) ";
			String query2 = "values (?,?,?,now())";
			preparedStatement = connection.prepareStatement(query + query2);
			
			preparedStatement.setString(1, adid);
			preparedStatement.setString(2, ntitle);
			preparedStatement.setString(3, ncontent);
			
			
			preparedStatement.executeUpdate();
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
	         try {
	             if(preparedStatement != null ) preparedStatement.close();
	             if(connection != null) connection.close();
	          }catch (Exception e) {
	             e.printStackTrace();
	          }
		}
	}
	
	//공지사항 삭제되지 않은 공지사항 갯수 출력
	public int noticeListRow(){
		int noticeMax = 0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색

		try {
			connection = dataSource.getConnection();

			String query = "select count(*) from notice where ndeletedate is null;";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			//한개일때는 if, 여러개일때는while
			
			if(resultSet.next()==true) {
				noticeMax = resultSet.getInt(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return noticeMax;

	}
	
	//페이징관련 계산
	public NoticePagingDTO noticeListPaging(int cPage,int totalRows, int pageLength) {
		
		
		int currentBlock = 0;
		int startPage = 0;//시작 페이지
		int endPage = 0;//마지막 페이지
		int totalPages = 0;//총 페이지수
		int startRow = 0;//시작 로우
		int endRow = 0;//마지막로우
	
		totalPages = totalRows % pageLength == 0 ? totalRows / pageLength : (totalRows/pageLength) + 1;
		
		currentBlock = cPage % pageLength == 0 ? cPage / pageLength : (cPage/pageLength) + 1;
		startPage = (currentBlock - 1) * pageLength +1;
		endPage = startPage + pageLength - 1;
		
		startRow = (cPage-1) * pageLength;
		endRow = totalRows-startRow;
		
		if(endPage > totalPages) {
			endPage = totalPages;
		}
		
		NoticePagingDTO dto = new NoticePagingDTO(cPage, currentBlock, pageLength, startPage, endPage, totalPages, startRow, endRow);
		
		return dto;
		
	}

	//
	public ArrayList<NoticeDTO> noticeGetList(int cPage, int rowLength){
		
		ArrayList<NoticeDTO> dtos = new ArrayList<NoticeDTO>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색
		
		int start = (cPage-1) * rowLength;
		
		
		try {
			connection = dataSource.getConnection();

			String query = "select nid, ntitle, ninitdate, admin_adid from notice order by nid desc limit "+start+","+rowLength;
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				int nid = resultSet.getInt(1);
				String ntitle = resultSet.getString(2);
				Timestamp ninitdate = resultSet.getTimestamp(3);
				String admin_adid = resultSet.getString(4);
				
				
				NoticeDTO dto = new NoticeDTO(nid, ntitle, ninitdate, admin_adid);
				dtos.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return dtos;
		
	}
	//공지사항 게시물 출력
	public NoticeDTO noticeView(int nids) {
		
		NoticeDTO dto = new  NoticeDTO();
		
		int nid;
		String ntitle;
		String ncontent;
		String nimage1;
		String nimage2;
		String nimage3;
		Timestamp ninitdate;
		String admin_adid;
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색

		try {
			connection = dataSource.getConnection();

			String query = "select nid, ntitle, ncontent, nimage1, nimage2, nimage3,ninitdate, admin_adid from notice where nid = " + nids;
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			//한개일때는 if, 여러개일때는while
			
			if(resultSet.next()==true) {
				nid = resultSet.getInt(1);
				ntitle = resultSet.getString(2);
				ncontent = resultSet.getString(3);
				nimage1 = resultSet.getString(4);
				nimage2 = resultSet.getString(5);
				nimage3 = resultSet.getString(6);
				ninitdate = resultSet.getTimestamp(7);
				admin_adid = resultSet.getString(8);
				
				dto = new  NoticeDTO(nid, ntitle, ncontent, nimage1, nimage2, nimage3, ninitdate, admin_adid);
						
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
		return dto;
	}
	
	
	
	
	


	
	
	
	
	
	
	
}
