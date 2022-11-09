package com.petmily.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

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
	
	public String login(String uid, String upw) {
		int result = 0;
		String unickname = "";
		try {
			connection = dataSource.getConnection();

			String query = "select count(*) , unickname from user where uid = '" + uid + "' and upw = '" + upw + "'";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				result = resultSet.getInt(1);
				unickname = resultSet.getString(2);
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
		return unickname;
	} 
	
}
