package com.petmily.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.petmily.admin.dto.PostingDTO;

public class PostingDAO {

	DataSource dataSource;

	public PostingDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//postList - 최근게시글 4개 불러오는것/ 게시글레벨 0으로 가정 /병준
	public ArrayList<PostingDTO> postList(){
		
		ArrayList<PostingDTO> dtos = new ArrayList<PostingDTO>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String ptitle = "";
		try {
			connection = dataSource.getConnection();
			
			String query = "select pid, ptitle, left(pcontent,6), pcategory, plocation, pinitdate from posting where plevel ='0' order by pinitdate desc limit 4";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int pid = resultSet.getInt("pid");
				 ptitle = resultSet.getString("ptitle");
				String pcontent = resultSet.getString("left(pcontent,6)");
				String pcategory = resultSet.getString("pcategory");
				String plocation = resultSet.getString("plocation");
				Timestamp pinitdate = resultSet.getTimestamp("pinitdate");
								
				PostingDTO dto = new PostingDTO(pid, ptitle, pcontent,pcategory, plocation, pinitdate);
				dtos.add(dto);
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
		
		return dtos;
	}// postList End
	
	//commentList - 최근댓글 4개 불러오는것/ 게시글레벨 1으로 가정 /병준
	public ArrayList<PostingDTO> commentList(){
		ArrayList<PostingDTO> dtos = new ArrayList<PostingDTO>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataSource.getConnection();
			
			String query = "select pid, ptitle, left(pcontent,6), pcategory, plocation, pinitdate from posting where plevel ='1' limit 4";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int pid = resultSet.getInt("pid");
				String ptitle = resultSet.getString("ptitle");
				String pcontent = resultSet.getString("left(pcontent,6)");
				String pcategory = resultSet.getString("pcategory");
				String plocation = resultSet.getString("plocation");
				Timestamp pinitdate = resultSet.getTimestamp("pinitdate");
				
				PostingDTO dto = new PostingDTO(pid, ptitle, pcontent,pcategory, plocation, pinitdate);
				dtos.add(dto);
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
		
		return dtos;
	}// commentList End
	
	
	
	
	
	
	
	
}//End
