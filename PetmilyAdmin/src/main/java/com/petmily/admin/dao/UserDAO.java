package com.petmily.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Arrays;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class UserDAO {

	DataSource dataSource;

	public UserDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//uLevelChart start
	//등급별 회원수 배열만드는 메소드(String형태로 만듬) -- 병준
	public ArrayList<String> uLevelChart(){
		ArrayList<String> ulevelCount = new ArrayList<String>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String bronzeCount="";
		String silverCount="";
		String goldCount="";
		
		
		try {
			connection = dataSource.getConnection();
			
			//브론즈 실버 골드 등급회원수 구하는 쿼리문
			//bronze : ulelvel = 0 
			//silver : ulelvel = 1
			//gold : ulelvel = 2
			String query1 = "select count(case when ulevel ='0' THEN 1 END) AS bronze,\n"
					+ "count(case when ulevel ='1' THEN 1 END) AS silver, \n"
					+ "count(case when ulevel ='2' THEN 1 END) AS gold from user";
//			String query2 = "count(case when ulevel ='1' THEN 1 END) AS silver, ";
//			String query3 = "count(case when ulevel ='2' THEN 1 END) AS gold from user ";
					
			
			
			preparedStatement = connection.prepareStatement(query1);
			resultSet = preparedStatement.executeQuery();
			
			if(resultSet.next()) {
				bronzeCount = resultSet.getString("bronze");
				silverCount = resultSet.getString("silver");
				goldCount = resultSet.getString("gold");
			
				//만들어놓은 배열에 담기
			}
			
			ulevelCount.add(bronzeCount);
			ulevelCount.add(silverCount);
			ulevelCount.add(goldCount);
		
//		System.out.println(ulevelCount.get(0));
//		System.out.println(ulevelCount.get(1));
//		System.out.println(ulevelCount.get(2));
			
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
		
		return ulevelCount;
	} //uLevelChart end
	
	
	
	
	
	
}//END
