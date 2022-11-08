package com.petmily.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

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
