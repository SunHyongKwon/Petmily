package com.petmily.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ShowDAO {

	DataSource dataSource;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;

	public ShowDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//조회수 여부 확인
	public int showViewCount(int pid, String user_uid) {
		
		int view=0;
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색

		try {
			connection = dataSource.getConnection();

			String query = "select count(shdate) from showing where user_uid ="+user_uid+" and posting_pid = "+pid;
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			//한개일때는 if, 여러개일때는while
			
			if(resultSet.next()==true) {
				view = resultSet.getInt(1);
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
		
		return view;
		
	}
	
	//좋아요 여부 확인
		public int showLikeCount(int pid, String user_uid) {
			
			int like=0;
			
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			ResultSet resultSet = null;// 검색

			try {
				connection = dataSource.getConnection();

				String query = "select count(shlike) from showing where user_uid ="+user_uid+" and posting_pid = "+pid+" and shlike and shlike >= 1";
				preparedStatement = connection.prepareStatement(query);
				resultSet = preparedStatement.executeQuery();
				//한개일때는 if, 여러개일때는while
				
				if(resultSet.next()==true) {
					like = resultSet.getInt(1);
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
			
			return like;
			
		}
	
	//클릭한 게시물의 조회수
	public int showViewAllCount(int pid) {
		int view=0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색

		try {
			connection = dataSource.getConnection();

			String query = "select count(shdate) from showing where posting_pid = "+pid+" and shdate is not null";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			//한개일때는 if, 여러개일때는while
			
			if(resultSet.next()==true) {
				view = resultSet.getInt(1);
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
		
		return view;
		
	}
	//클릭한 게시물의 좋아요 수
	public int showLikeAllCount(int pid) {
		int like=0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색

		try {
			connection = dataSource.getConnection();

			String query = "select count(shlike) from showing where posting_pid = "+pid+" and shlike >= 1";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			//한개일때는 if, 여러개일때는while
			
			if(resultSet.next()==true) {
				like = resultSet.getInt(1);
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
		
		return like;
		
	}
	
	//조회여부 입력
	public void showInsertView(int pid, String user_uid) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		
		try {
			connection = dataSource.getConnection();
			
			String query = "insert into showing  (posting_pid, user_uid, shdate, shlike) ";
			String query2 = "values (?,?,now(),0)";
			preparedStatement = connection.prepareStatement(query + query2);
			
			preparedStatement.setInt(1, pid);
			preparedStatement.setString(2, user_uid);
			
			
			
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
	//좋아요입력
	public void showInsetLike(int pid, String user_uid, int likeCheck) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		
		try {
			connection = dataSource.getConnection();
			
			   
			String query = "update showing set shlike = "+likeCheck+" where posting_pid = "+pid+" and user_uid = "+user_uid;
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
	}
}
