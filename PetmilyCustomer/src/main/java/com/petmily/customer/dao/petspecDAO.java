package com.petmily.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.petmily.customer.dto.petspecDTO;

public class petspecDAO {

	DataSource dataSource;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;

	public petspecDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
		
	// by 은빈  -- petDictionary
	public ArrayList<petspecDTO> petList(String pstype) { 
		ArrayList<petspecDTO> dtos = new ArrayList<petspecDTO>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataSource.getConnection();
			
			String query = "select pstype, psimage, psbreeds from petspec where pstype = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, "pstype");
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				pstype = resultSet.getString("pstype");
				String psimage = resultSet.getString("psimage");
				String psbreeds = resultSet.getString("psbreeds");

						
				petspecDTO dto = new petspecDTO(pstype, psimage, psbreeds);
				dtos.add(dto);
					}
					
				}catch(Exception e) {
					e.printStackTrace();
				}finally {
					try {
						if(resultSet != null) resultSet.close();
						if(preparedStatement != null) preparedStatement.close();
						if(connection != null) connection.close();
					}catch(Exception e) {
						e.printStackTrace();
					}
				}
		return dtos;
			 
	} // petList
}
