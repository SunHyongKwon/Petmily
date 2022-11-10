package com.petmily.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.petmily.customer.dto.VolunteerDTO;

public class VolunteerDAO {

	DataSource dataSource;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;

	public VolunteerDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// by 은빈  -- 봉사활동(1365) 리스트
	public ArrayList<VolunteerDTO> volunteerList(){  
		ArrayList<VolunteerDTO> dtos = new ArrayList<VolunteerDTO>();  
		Connection connection = null;  
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {			
			connection = dataSource.getConnection();
						
			String query = "select volunid, volunregisno, voluntime, volunorganization from volunteer";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int volunid = resultSet.getInt("volunid");
				String volunregisno = resultSet.getString("volunregisno");
				int voluntime = resultSet.getInt("voluntime");
				String volunorganization = resultSet.getString("volunorganization");
				
				VolunteerDTO dto = new VolunteerDTO(volunid, volunregisno, voluntime, volunorganization);
				dtos.add(dto);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			
		// 자원 반납 필수
		}finally {
			try {
				if(resultSet != null) resultSet.close();
				if(preparedStatement != null) preparedStatement.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return dtos;
	} // list
}
