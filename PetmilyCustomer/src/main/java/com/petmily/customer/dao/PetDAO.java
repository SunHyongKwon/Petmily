package com.petmily.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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

	public void insert(String[] petname, String[] petgender, String uid) {
		// TODO Auto-generated method stub
		PreparedStatement ps = null;

		try {
			connection = dataSource.getConnection();

			for (int i = 1; i < petname.length; i++) {
				
				String query = "insert into pet (petname,petgender,user_uid , petinitdate) values ( ? , ? ,? , now() ) ";

				ps = connection.prepareStatement(query);

				ps.setString(1, petname[i]);
				ps.setString(2, petgender[i]);
				ps.setString(3, uid);

				ps.executeUpdate();

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
	}
	
	public ArrayList<Integer> selectPetId(String uid){
		ArrayList<Integer> petIdList = new ArrayList<>();
		int petid = 0;
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			connection = dataSource.getConnection();

			String query = "select petid from pet where user_uid = '" + uid + "'";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
				
			while (resultSet.next()) {
				 petid = resultSet.getInt(1);
				 System.out.println(petid);
				 petIdList.add(petid);
			}
			
			return petIdList;

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
		
		return null;
	}

}
