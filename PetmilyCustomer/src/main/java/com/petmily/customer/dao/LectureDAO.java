package com.petmily.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.petmily.customer.dto.LectureDTO;


public class LectureDAO {

	DataSource dataSource;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;

	public LectureDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//전체검색
			public LectureDTO lecturView(String slid){
				LectureDTO dto=null;
				Connection connection = null;
				PreparedStatement preparedStatement = null;
				ResultSet resultSet = null;
				
				try {
					connection = dataSource.getConnection();
					
					String query = "select ltitle, lcontent, lvideolink, lchapter, lvideolength from lecture where lid = ?";
					preparedStatement = connection.prepareStatement(query);
					preparedStatement.setInt(1, Integer.parseInt(slid));
					resultSet = preparedStatement.executeQuery();
					
					if(resultSet.next()) {
						
						String ltitle = resultSet.getString("ltitle");
						String lcontent = resultSet.getString("lcontent");
						String lvideolink = resultSet.getString("lvideolink");
						int lchapter = resultSet.getInt("lchapter");
						int lvideolength = resultSet.getInt("lvideolength");
						
						
						dto = new LectureDTO(ltitle, lcontent, lvideolink, lchapter, lvideolength);
						
					}
					
					
				}catch(Exception e) {
					e.printStackTrace();
				}finally {
			         try {
			             if(resultSet != null) resultSet.close();
			             if(preparedStatement != null ) preparedStatement.close();
			             if(connection != null) connection.close();
			          }catch (Exception e) {
			             e.printStackTrace();
			          }
				}
				
				return dto;
			}// list
	
	
}//End
