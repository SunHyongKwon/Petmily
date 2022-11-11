package com.petmily.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ChooseDAO {

	DataSource dataSource;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;

	public ChooseDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void insert(int petid , int psid) {
	      // TODO Auto-generated method stub
	      PreparedStatement ps = null;
	      
	      try {
	         connection = dataSource.getConnection();
	         
	         String query = "insert into choose (chodate , pet_petid , petspec_psid) values ( now() , ? , ? ) ";
	         
	         ps = connection.prepareStatement(query);
	         
	         ps.setInt(1, petid);
	         ps.setInt(2, psid);
	      

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
