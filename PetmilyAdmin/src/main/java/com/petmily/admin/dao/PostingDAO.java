package com.petmily.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.petmily.admin.dto.PostingDTO;
import com.petmily.admin.dto.PagingDTO;

public class PostingDAO {

	DataSource dataSource;

	public PostingDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//postList - 최근게시글 4개 불러오는것/ 게시글레벨 0으로 가정 /병준
	public ArrayList<PostingDTO> postList(){
		
		System.out.println("dao postList");
		
		ArrayList<PostingDTO> dtos = new ArrayList<PostingDTO>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String ptitle = "";
		try {
			connection = dataSource.getConnection();
			
			String query = "select pid, ptitle, left(pcontent,6), pcategory, plocation, pinitdate from posting where plevel ='1' limit 4";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int pid = resultSet.getInt("pid");
				 ptitle = resultSet.getString("ptitle");
				String pcontent = resultSet.getString("left(pcontent,6)");
				String pcategory = resultSet.getString("pcategory");
				String plocation = resultSet.getString("plocation");
				Timestamp pinitdate = resultSet.getTimestamp("pinitdate");
								
				PostingDTO dto = new PostingDTO(pid, ptitle, pcontent,pcategory, plocation, pinitdate);
				dtos.add(dto);
			}
			
			System.out.println("제목"+ptitle);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
	         try {
	             if(resultSet != null) resultSet.close();
	             if(preparedStatement != null ) preparedStatement.close();
	             if(connection != null) connection.close();
	          }catch (Exception e) {
	             e.printStackTrace();
	          }
		}
		
		return dtos;
	}// postList End
	
	//commentList - 최근댓글 4개 불러오는것/ 게시글레벨 0으로 가정 /병준
	public ArrayList<PostingDTO> commentList(){
		ArrayList<PostingDTO> dtos = new ArrayList<PostingDTO>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String pcontent = "";
		try {
			connection = dataSource.getConnection();
			
			String query = "select pid, ptitle, pcontent, pcategory, plocation, pinitdate from posting where plevel ='0' limit 4";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int pid = resultSet.getInt("pid");
				String ptitle = resultSet.getString("ptitle");
				// 댓글 길이가 15이상일 경우 댓글 뒤에 .. 으로 보이게 만들어준다.
				if(resultSet.getString("pcontent").length()>15) {
					pcontent =  resultSet.getString("pcontent").substring(0,15) +"..";
				}else {
					pcontent = resultSet.getString("pcontent");
					}
				
				
				String pcategory = resultSet.getString("pcategory");
				String plocation = resultSet.getString("plocation");
				Timestamp pinitdate = resultSet.getTimestamp("pinitdate");
				
				PostingDTO dto = new PostingDTO(pid, ptitle, pcontent ,pcategory, plocation, pinitdate);
				dtos.add(dto);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(resultSet != null) resultSet.close();
				if(preparedStatement != null ) preparedStatement.close();
				if(connection != null) connection.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return dtos;
	}// commentList End
	
	// daylist - 일별 최근 7개 데이터 (게시글 갯수, 댓글 갯수, 매칭횟수)
	public ArrayList<PostingDTO> dayList(){
		ArrayList<PostingDTO> dtos = new ArrayList<PostingDTO>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String pcontent = "";
		try {
			connection = dataSource.getConnection();
			
			String query = "select \n"
					+ "   x.ok \n"
					+ "  ,ifnull(y.c,0) as postingquantity\n"
					+ "  ,ifnull(g.f,0) as commentquantity\n"
					+ "  ,ifnull(j.i,0) as matchingquantity\n"
					+ " from (\n"
					+ "    select \n"
					+ "    a.Date as ok     \n"
					+ "    from (\n"
					+ "        select curdate() - INTERVAL (a.a) DAY as Date\n"
					+ "        from (select 0 as a union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6) as a\n"
					+ "    ) a \n"
					+ ") x left join \n"
					+ "(SELECT date(pinitdate) as d,count(*) as c FROM posting WHERE plevel = '1' and DATE(pinitdate) BETWEEN DATE_ADD(curdate(),INTERVAL -1 WEEK )and curdate() group by date(pinitdate)\n"
					+ ") y on x.ok= y.d \n"
					+ "left join(SELECT date(pinitdate) as e,count(*) as f FROM posting WHERE plevel = '0' and DATE(pinitdate) BETWEEN DATE_ADD(curdate(),INTERVAL -1 WEEK )and curdate() group by date(pinitdate))\n"
					+ "g on x.ok =g.e \n"
					+ "left join(SELECT date(apmatchingdate) as h,count(*) as i FROM apply WHERE DATE(apmatchingdate) BETWEEN DATE_ADD(curdate(),INTERVAL -1 WEEK )and curdate() group by date(apmatchingdate))\n"
					+ "j on x.ok =j.h\n"
					+ "order by x.ok desc";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				Timestamp dates = resultSet.getTimestamp("ok");
				String date = new SimpleDateFormat("MM/dd").format(dates);
				int postingquantity = resultSet.getInt("postingquantity");
				int commentquantity = resultSet.getInt("commentquantity");
				int matchingquantity = resultSet.getInt("matchingquantity");
				
				PostingDTO dto = new PostingDTO(date, postingquantity, commentquantity, matchingquantity);
				dtos.add(dto);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(resultSet != null) resultSet.close();
				if(preparedStatement != null ) preparedStatement.close();
				if(connection != null) connection.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return dtos;
	}// commentList End
	
	// 카테고리별 posting 갯수 카운트
		public int postingListRow(String pcategory) {
			int postingCnt = 0;
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			ResultSet resultSet = null;// 검색
			String query = "";
			try {
				connection = dataSource.getConnection();
				
				if(pcategory.equals("all")) {
					query = "select count(*) from posting where pdeletedate is null";
				}else {
					query = "select count(*) from posting where pdeletedate is null and pcategory = '" + pcategory + "'";
					
				}
			
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

		}//postingListRow End
		
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

		}//postingListPaging End
		
		// postingList 출력
		public ArrayList<PostingDTO> postingGetList(int cPage, int rowLength, String pcategory, String option, String query) {

			ArrayList<PostingDTO> dtos = new ArrayList<PostingDTO>();
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			ResultSet resultSet = null;// 검색
			String query1="";
			String query2="";
			String query3="";
			int start = (cPage - 1) * rowLength;

			try {
				connection = dataSource.getConnection();
				if(pcategory.equals("all")) {
					query1 = "select pid, ptitle, plocation, pinitdate, user_uid, pcategory from posting ";
					query2 = "where pdeletedate is null and "+option+" like '%"+query+"%' ";
					query3 = "order by pid desc limit "+start+","+rowLength;
					
				}else {
				//String query = "select pid, ptitle, plocation, pinitdate, user_uid from posting where pcategory = '" + pcategory + "' and pdeletedate is null order by pid desc  limit " + start + "," + rowLength;
					query1 = "select pid, ptitle, plocation, pinitdate, user_uid, pcategory from posting ";
					query2 = "where pcategory = '"+pcategory+"' and pdeletedate is null and "+option+" like '%"+query+"%' ";
					query3 = "order by pid desc limit "+start+","+rowLength;
				}
				preparedStatement = connection.prepareStatement(query1+query2+query3);
				resultSet = preparedStatement.executeQuery();

				while (resultSet.next()) {
					int pid = resultSet.getInt(1);
					String ptitle = resultSet.getString(2);
					String plocation = resultSet.getString(3);
					Timestamp pinitdate = resultSet.getTimestamp(4);
					String user_uid = resultSet.getString(5);
					String category = resultSet.getString(6);

					PostingDTO dto = new PostingDTO(pid, ptitle, plocation, pinitdate, user_uid, category);
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

		}//end
		
		public ArrayList<PostingDTO> postingAllGetList(int cPage, int rowLength, String pcategory, String option, String query) {

			ArrayList<PostingDTO> dtos = new ArrayList<PostingDTO>();
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			ResultSet resultSet = null;// 검색
			int start = (cPage - 1) * rowLength;

			try {
				connection = dataSource.getConnection();

				//String query = "select pid, ptitle, plocation, pinitdate, user_uid from posting where pcategory = '" + pcategory + "' and pdeletedate is null order by pid desc  limit " + start + "," + rowLength;
				String query1 = "select pid, ptitle, plocation, pinitdate, user_uid, pcategory from posting ";
				String query2 = "where pdeletedate is null and "+option+" like '%"+query+"%' ";
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

					PostingDTO dto = new PostingDTO(pid, ptitle, plocation, pinitdate, user_uid, category);
					dtos.add(dto);
				}
				System.out.println("size"+dtos.size());
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
		
		//체크된것 삭제
		public void delete(String params) {
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			
			
			try {
				connection = dataSource.getConnection();
				
				String query = "delete from posting where pid in ("+params+")";
				
				preparedStatement = connection.prepareStatement(query);
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
			
			
		}// delete End
		
		
	
	
	
	
	
	
}//End
