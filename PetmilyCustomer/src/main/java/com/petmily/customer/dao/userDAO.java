package com.petmily.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.petmily.customer.dto.userDTO;

public class userDAO {

	DataSource dataSource;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;

	public userDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public userDTO login(String uid, String upw) {
		int result = 0;
		String unickname = "";
		String utype = "";
		userDTO udto = null;
		
		try {
			connection = dataSource.getConnection();

			String query = "select count(*) , unickname, utype from user where uid = '" + uid + "' and upw = '" + upw + "'";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				result = resultSet.getInt(1);
				unickname = resultSet.getString(2);
				utype = resultSet.getString(3);
			udto = new userDTO(uid, unickname, utype);
				
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
		
	
}
