package com.petmily.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class PetDAO {

	DataSource dataSource;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;

	public PetDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void insert(String petname,String petgender) {
		// TODO Auto-generated method stub
			PreparedStatement ps = null;
			
			try {
				connection = dataSource.getConnection();
				
				String query = "insert into pet (petname,petgender) values ( ? , ? ) ";
				
				ps = connection.prepareStatement(query);
				
				ps.setString(1,petname);
				ps.setString(2,petgender);
			

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
	public int searchpetid(String petname) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int result = 0;
		try {
			connection = dataSource.getConnection();

			String query = "select petid from pet where petname = '" + petname + "'";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				result = resultSet.getInt(1);
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
		return result;
	}
	
}
