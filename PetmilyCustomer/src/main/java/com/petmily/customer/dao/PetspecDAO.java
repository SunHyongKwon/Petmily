package com.petmily.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class PetspecDAO {
	DataSource dataSource;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;


	public PetspecDAO() {
		
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// gukHwa [조회_견종설명] 
	public String pscontent(String psbreeds) {
		String pscontent = "";
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connection = dataSource.getConnection();
			
			String query = "select pscontent from petspec where psbreeds = " + psbreeds;
			preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.executeQuery();
			
			if(resultSet.next()) {
				pscontent = resultSet.getString(1);
			}
			
			
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
		
		return pscontent;
	}
}
