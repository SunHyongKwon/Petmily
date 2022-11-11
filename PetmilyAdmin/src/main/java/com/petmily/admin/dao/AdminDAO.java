package com.petmily.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class AdminDAO {

	DataSource dataSource;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;

	public AdminDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// gukHwa[수정]
	public void update(String adpw, String adname, String adphone, String ademail) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connection = dataSource.getConnection();

			String query = "update admin set adpw = ? , adname = ? , adphone = ? , ademail = ? where specnum = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, adpw);
			preparedStatement.setString(2, adname);
			preparedStatement.setString(3, adphone);
			preparedStatement.setString(4, ademail);
			
			preparedStatement.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
				if (preparedStatement != null)
					connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}//update end
	
	
	//login 병준
	public String login(String adid, String adpw) {
		
		int result = 0;
		String adname = "";
		try {
			connection = dataSource.getConnection();

			String query = "select count(*) , adname from admin where adid = '" + adid + "' and adpw = '" + adpw + "'";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				result = resultSet.getInt(1);
				adname = resultSet.getString(2);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null)
					resultSet.close();
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return adname;
	}//login end
	
	//insert시작 병준 
	public void signupInsert(String adid, String adpw, String adname, String ademail, String adphone) {
		PreparedStatement ps = null;
		
		try {
			connection = dataSource.getConnection();
			
			String query = "insert into admin (adid, adpw, adname, ademail, adphone, adinitdate) values ( ? , ? , ? , ? , ? ,now() ) ";
			
			ps = connection.prepareStatement(query);
			
			ps.setString(1,adid);
			ps.setString(2,adpw);
			ps.setString(3,adname);
			ps.setString(4,ademail);
			ps.setString(5,adphone);

			ps.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(resultSet != null) resultSet.close();
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null)connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}//insert 끝
	
	//idcheck 병준
		public String idCheck(String adname, String ademail) {
			
			int result = 0;
			String adid = "";
			try {
				connection = dataSource.getConnection();

				String query = "select count(*), adid from admin where adname = '" + adname + "' and ademail = '" + ademail + "' group by adid";
				preparedStatement = connection.prepareStatement(query);
				resultSet = preparedStatement.executeQuery();

				if (resultSet.next()) {
					result = resultSet.getInt(1);
					adid = resultSet.getString(2);
				}
				System.out.println("adid"+adid);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (resultSet != null)
						resultSet.close();
					if (preparedStatement != null)
						preparedStatement.close();
					if (connection != null)
						connection.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return adid;
		}//idcheck end
		
		//pwcheck 병준
				public String pwCheck(String adid, String ademail) {
					
					int result = 0;
					String adpw = "";
					try {
						connection = dataSource.getConnection();

						String query = "select count(*) , adpw from admin where adid = '" + adid + "' and ademail = '" + ademail + "' group by adid";
						preparedStatement = connection.prepareStatement(query);
						resultSet = preparedStatement.executeQuery();

						if (resultSet.next()) {
							result = resultSet.getInt(1);
							adpw = resultSet.getString(2);
						}

					} catch (Exception e) {
						e.printStackTrace();
					} finally {
						try {
							if (resultSet != null)
								resultSet.close();
							if (preparedStatement != null)
								preparedStatement.close();
							if (connection != null)
								connection.close();
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
					return adpw;
				}//pwcheck end
	
}//End
