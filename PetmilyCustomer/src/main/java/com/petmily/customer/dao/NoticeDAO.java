package com.petmily.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.petmily.customer.dto.NoticeDTO;


public class NoticeDAO {

	DataSource dataSource;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;

	public NoticeDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void insert(String pstype, String psbreeds) {
		// TODO Auto-generated method stub
		PreparedStatement ps = null;
		
		try {
			connection = dataSource.getConnection();
			
			String query = "insert into petspec (pstype,psbreeds) values ( ? , ? ) ";
			
			ps = connection.prepareStatement(query);
			
			ps.setString(1,pstype);
			ps.setString(2,psbreeds);
		

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
