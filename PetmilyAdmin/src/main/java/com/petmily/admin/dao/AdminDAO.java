package com.petmily.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.petmily.admin.dto.adminDTO;

public class AdminDAO {

	DataSource dataSource;

	public AdminDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// 석진[content view]
	public adminDTO adminContentView(String sadid) {
		
	adminDTO dto =null;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;// 검색

	try {
		connection = dataSource.getConnection();

		String query = "select *  from  petmily  where  adid = "+sadid;
		preparedStatement = connection.prepareStatement(query);
		resultSet = preparedStatement.executeQuery();

		if (resultSet.next()) {
			String adid = resultSet.getString("adid");
			String adname = resultSet.getString("adname");
			String ademail = resultSet.getString("ademail");
			String adpw = resultSet.getString("adpw");
			Timestamp adinitdate = resultSet.getTimestamp("adinitdate"); 

			dto = new adminDTO(adid, adname, ademail, adpw, adinitdate);

		}

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if (resultSet != null)resultSet.close();
			if (preparedStatement != null)preparedStatement.close(); 
			if (connection != null)connection.close(); 
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	return dto;
}//content_view
	
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
		
	}
	
}
