package com.petmily.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.petmily.customer.dto.PagingDTO;
import com.petmily.customer.dto.PostingDTO;

public class PostingDAO {

	DataSource dataSource;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;

	public PostingDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 게시물 입력
	public int postingWriteAction(String ptitle, String pcontent, String pcategory, String plocation, String pimage1, String pimage2, String pimage3, int plevel,
			String user_uid) {

		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			connection = dataSource.getConnection();

			String query = "insert into posting (ptitle, pcontent, pcategory, plocation, pimage1, pimage2, pimage3,  plevel, user_uid, pinitdate ) ";
			String query2 = "values (?,?,?,?,?,?,?,?,?,now())";
			preparedStatement = connection.prepareStatement(query + query2);

			preparedStatement.setString(1, ptitle);
			preparedStatement.setString(2, pcontent);
			preparedStatement.setString(3, pcategory);
			preparedStatement.setString(4, plocation);
			preparedStatement.setString(5, pimage1);
			preparedStatement.setString(6, pimage2);
			preparedStatement.setString(7, pimage3);
			preparedStatement.setInt(8, plevel);
			preparedStatement.setString(9, user_uid);

			preparedStatement.executeUpdate();

			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return 0;
	}

	// 카테고리별 posting 갯수 카운트
	public int postingListRow(String pcategory) {
		int postingCnt = 0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색

		try {
			connection = dataSource.getConnection();

			String query = "select count(*) from posting where pdeletedate is null and pcategory = '" + pcategory + "'";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			// 한개일때는 if, 여러개일때는while

			if (resultSet.next() == true) {
				postingCnt = resultSet.getInt(1);
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
		return postingCnt;

	}

	// 페이징관련 계산
	public PagingDTO postingListPaging(int cPage, int totalRows, int pageLength) {

		int currentBlock = 0;
		int startPage = 0;// 시작 페이지
		int endPage = 0;// 마지막 페이지
		int totalPages = 0;// 총 페이지수
		int startRow = 0;// 시작 로우
		int endRow = 0;// 마지막로우

		totalPages = totalRows % pageLength == 0 ? totalRows / pageLength : (totalRows / pageLength) + 1;

		currentBlock = cPage % pageLength == 0 ? cPage / pageLength : (cPage / pageLength) + 1;
		startPage = (currentBlock - 1) * pageLength + 1;
		endPage = startPage + pageLength - 1;

		startRow = (cPage - 1) * pageLength;
		endRow = totalRows - startRow;

		if (endPage > totalPages) {
			endPage = totalPages;
		}

		PagingDTO dto = new PagingDTO(cPage, currentBlock, pageLength, startPage, endPage, totalPages, startRow,
				endRow);

		return dto;

	}

	// postingList 출력
	public ArrayList<PostingDTO> postingGetList(int cPage, int rowLength, String pcategory, String option, String query) {

		ArrayList<PostingDTO> dtos = new ArrayList<PostingDTO>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색
		int start = (cPage - 1) * rowLength;

		try {
			connection = dataSource.getConnection();

			//String query = "select pid, ptitle, plocation, pinitdate, user_uid from posting where pcategory = '" + pcategory + "' and pdeletedate is null order by pid desc  limit " + start + "," + rowLength;
			String query1 = "select pid, ptitle, plocation, pinitdate, user_uid, pcategory from posting ";
			String query2 = "where pcategory = '"+pcategory+"' and pdeletedate is null and "+option+" like '%"+query+"%' ";
			String query3 = "order by pid desc limit "+start+","+rowLength;
			preparedStatement = connection.prepareStatement(query1+query2+query3);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				int pid = resultSet.getInt(1);
				String ptitle = resultSet.getString(2);
				String plocation = resultSet.getString(3);
				Timestamp pinitdate = resultSet.getTimestamp(4);
				String user_uid = resultSet.getString(5);
				String category = resultSet.getString(6);

				PostingDTO dto = new PostingDTO(pid, ptitle, plocation, pinitdate, user_uid,pcategory);
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

	// 게시물 출력
	public PostingDTO postingGetDetail(int pid) {

		PostingDTO dto = new PostingDTO();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색

		String ptitle;
		String pcontent;
		String pimage1;
		String pimage2;
		String pimage3;
		String plocation;
		Timestamp pinitdate;
		String user_uid;
		String pcategory;

		try {
			connection = dataSource.getConnection();

			String query = "select ptitle, pcontent, pimage1, pimage2, pimage3, plocation, pinitdate, user_uid, pcategory from posting where pid = "
					+ pid;
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				ptitle = resultSet.getString(1);
				pcontent = resultSet.getString(2);
				pimage1 = resultSet.getString(3);
				pimage2 = resultSet.getString(4);
				pimage3 = resultSet.getString(5);
				plocation = resultSet.getString(6);
				pinitdate = resultSet.getTimestamp(7);
				user_uid = resultSet.getString(8);
				pcategory = resultSet.getString(9);

				dto = new PostingDTO(ptitle, pcontent, pimage1, pimage2, pimage3, plocation, pinitdate, user_uid,pcategory);
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

	//댓글 입력
	public void postingRyplyWriteAction(String pparentid, String ureply, int plevel, String user_uid ) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		
		try {
			connection = dataSource.getConnection();
			
			String query = "insert into posting (pparentid, pcontent, plevel, user_uid, pinitdate ) ";
			String query2 = "values (?,?,?,?,now())";
			preparedStatement = connection.prepareStatement(query + query2);
			
			preparedStatement.setString(1, pparentid);
			preparedStatement.setString(2, ureply);
			preparedStatement.setInt(3, plevel);
			preparedStatement.setString(4,user_uid);
			
			
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
	
	public ArrayList<PostingDTO> postingMypageWriteList(int cPage, int rowLength, String uid, String option, String pcategory, String query){
		ArrayList<PostingDTO> dtos = new ArrayList<PostingDTO>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색

		int start = (cPage - 1) * rowLength;

		try {
			connection = dataSource.getConnection();

			String query1 = "select pid, ptitle, plocation, pinitdate, user_uid, pcategory from posting ";
			String query2 = "where pcategory = '"+pcategory+"' and pdeletedate is null and "+option+" like '%"+query+"%' and user_uid = '"+uid+"'";
			String query3 = " order by pid desc limit "+start+","+rowLength;
			preparedStatement = connection.prepareStatement(query1+query2+query3);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				int pid = resultSet.getInt(1);
				String ptitle = resultSet.getString(2);
				String plocation = resultSet.getString(3);
				Timestamp pinitdate = resultSet.getTimestamp(4);
				String user_uid = resultSet.getString(5);
				String category = resultSet.getString(6);
				
				PostingDTO dto = new PostingDTO(pid, ptitle, plocation, pinitdate, user_uid,category);
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
	
	public ArrayList<PostingDTO> selectCommentList(int pid){
		ArrayList<PostingDTO> commentList = new ArrayList<>();
		
		String pcontent;
		Timestamp pinitdate;
		String user_uid;
		String pcategory;
		

		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색

		try {
			connection = dataSource.getConnection();

			String query = "select pcontent, pinitdate, user_uid, pcategory from posting where pparentid = " + pid + " order by pinitdate desc";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			// 한개일때는 if, 여러개일때는while

			while (resultSet.next() == true) {
				 pcontent = resultSet.getString(1);
				 pinitdate = resultSet.getTimestamp(2);
				 user_uid = resultSet.getString(3);
				 pcategory = resultSet.getString(4);
				 
				 PostingDTO dto = new PostingDTO(pcontent, pinitdate, user_uid,pcategory);
				 commentList.add(dto);
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
		
		
		return commentList;
	}
	//게시물 수정 [미완성]
	public int postingUpdateAction(String ptitle, String pcontent, String pcategory, String plocation, String pimage1, String pimage2, String pimage3, int plevel,
			String user_uid) {

		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			connection = dataSource.getConnection();

			String query = "update posting set ptitle = ?, pcontent = ?, pcategory = ?, plocation = ?, pimage1 = ?, pimage = 2, pimage = 3  where posting_pid = 2;";
			String query2 = "values (?,?,?,?,?,?,?,?,?,now())";
			preparedStatement = connection.prepareStatement(query + query2);

			preparedStatement.setString(1, ptitle);
			preparedStatement.setString(2, pcontent);
			preparedStatement.setString(3, pcategory);
			preparedStatement.setString(4, plocation);
			preparedStatement.setString(5, pimage1);
			preparedStatement.setString(6, pimage2);
			preparedStatement.setString(7, pimage3);
			preparedStatement.setInt(8, plevel);
			preparedStatement.setString(9, user_uid);

			preparedStatement.executeUpdate();

			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return 0;
	}
	
	public PostingDTO postingInfo(int posting_pid) {
		PostingDTO dto = new PostingDTO();
		
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색

		try {
			connection = dataSource.getConnection();

			String query = "select pid, ptitle, pcontent, pimage1, pimage2, pimage3, pcategory, plocation, pinitdate from posting where pid ="+posting_pid;
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			// 한개일때는 if, 여러개일때는while

			while (resultSet.next() == true) {
				int pid = resultSet.getInt(1);
				String ptitle = resultSet.getString(2);
				String pcontent = resultSet.getString(3); 
				String pimage1 = resultSet.getString(4);
				String pimage2 = resultSet.getString(5); 
				String pimage3 = resultSet.getString(6);
				String pcategory = resultSet.getString(7);
				String plocation = resultSet.getString(8);
				Timestamp pinitdate = resultSet.getTimestamp(9);
				 
				 
				dto = new PostingDTO(pid, ptitle, pcontent, pimage1, pimage2, pimage3, pcategory, plocation, pinitdate);
						 
				 
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
	//mypaga 작성내역 로우갯수
	public int postingWriteListRow(String user_uid) {
		int postingCnt = 0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색

		try {
			connection = dataSource.getConnection();

			String query = "select count(*) from posting where pdeletedate is null and user_uid = '" + user_uid + "'";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			// 한개일때는 if, 여러개일때는while

			if (resultSet.next() == true) {
				postingCnt = resultSet.getInt(1);
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
		return postingCnt;
	}
	
	public int postingDelete(int pid) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			connection = dataSource.getConnection();

			String query = "update posting set pdeletedate = now() where pid = "+pid;
			preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e) {
				e.printStackTrace();
				return 0;
			}
		}
		return 1;
		
	}

}
