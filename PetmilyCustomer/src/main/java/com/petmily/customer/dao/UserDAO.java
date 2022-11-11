package com.petmily.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.petmily.customer.dto.UserDTO;

public class UserDAO {

	DataSource dataSource;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;

	public UserDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

	public UserDTO login(String uid, String upw) {
		int result = 0;
		String uname = "";
		String utype = "";
		UserDTO udto = null;
		
		try {
			connection = dataSource.getConnection();

			String query = "select count(*) , uname, utype from user where uid = '" + uid + "' and upw = '" + upw + "'";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				result = resultSet.getInt(1);
				uname = resultSet.getString(2);
				utype = resultSet.getString(3);
				udto = new UserDTO(uid, uname, utype);
				
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
		
		
		return udto;
	}

	public void insert(String uid, String upw, String uname, String uphone, String uemail, 
			String uaddress_basic, String uaddress_detail, String utype) {
		// TODO Auto-generated method stub
			PreparedStatement ps = null;
			
			try {
				connection = dataSource.getConnection();
				
				String query = "insert into user (uid,upw,uname,uphone,uemail,uaddress, utype) values ( ? , ? , ? , ? , ? , ? , ? ) ";
				
				ps = connection.prepareStatement(query);
				
				ps.setString(1,uid);
				ps.setString(2,upw);
				ps.setString(3,uname);
				ps.setString(4,uphone);
				ps.setString(5,uemail);
				ps.setString(6,uaddress_basic+uaddress_detail);
				ps.setString(7,utype);

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
			
			
		}
	
	// by 은빈 -- 비밀번호 확인 후 마이페이지 들어가기
	
	public String mypagePwCheck(String uid) {
		int result = 0;
		try {
			connection = dataSource.getConnection();

			String query = "select count(*) , uid from user where uid = '" + uid + "'";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				result = resultSet.getInt(uid);
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
		return uid;
		
	}
	// by 은빈  -- 마이페이지 수정
	public void mypageLoginModify(String uid, String upw, String uname, String unickname, String uphone, String uemail, String uaddress) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connection = dataSource.getConnection();
			
			String query = "update user set uid, upw =?, uname =?, unickname =?, uphone =?, uemail =?, uaddress =? ";
			String query2 = "where uid =? ";
			preparedStatement = connection.prepareStatement(query+query2);
			
			
			preparedStatement.setString(1, uid);
			preparedStatement.setString(2,upw);
			preparedStatement.setString(3,uname);
			preparedStatement.setString(4,unickname);
			preparedStatement.setString(5,uphone);
			preparedStatement.setString(6,uemail);
			preparedStatement.setString(7,uaddress);
			
			preparedStatement.executeUpdate();
			
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		try {
			if(preparedStatement != null) preparedStatement.close();
			if(connection != null) connection.close();
		}catch(Exception e) {
				e.printStackTrace();
			}
		}
	} // MypageModifyLoginCommand
		
	
}
