package com.petmily.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.petmily.customer.dto.PostingDTO;

public class PostingDAO {

	DataSource dataSource;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;

	public PostingDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// gukHwa [조회_게시판]
		public ArrayList<PostingDTO> postcategoryList(String pcategory) {

			ArrayList<PostingDTO> dtos = new ArrayList<>();
			Connection connection = null;
			PreparedStatement preparedStatement = null;
			ResultSet resultSet = null;
			
			try {
				connection = dataSource.getConnection();
				
			String query = "select nid, ntitle , ncontent , nimage1 , nimage2 , nimage3 , "
					+ "ncategory , nlocation from notice where ncategory = '" + pcategory + "'";
				
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
					
			while (resultSet.next()) {
				int nid = resultSet.getInt("nid");
				String ntitle = resultSet.getString("ntitle");
				String ncontent = resultSet.getString("ncontent");
				String nimage1 = resultSet.getString("nimage1");
				String nimage2 = resultSet.getString("nimage2");
				String nimage3 = resultSet.getString("nimage3");
				pcategory = resultSet.getString("ncategory");
				String nlocation = resultSet.getString("nlocation");
				
				PostingDTO dto = new PostingDTO(nid, ntitle, ncontent, nimage1, nimage2, nimage3, pcategory, nlocation);
				dtos.add(dto);
				}	
			
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
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
			
			return dtos; 
		}
}
