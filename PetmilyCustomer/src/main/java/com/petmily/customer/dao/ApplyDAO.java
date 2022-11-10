package com.petmily.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.petmily.customer.dto.ApplyDTO;
import com.petmily.customer.dto.UserDTO;

public class ApplyDAO {

	DataSource dataSource;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;

	public ApplyDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// gukHwa [조회_신청함 리스트]
	public ArrayList<ApplyDTO> applyList(String user_uid) {

		ArrayList<ApplyDTO> dtos = new ArrayList<>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			connection = dataSource.getConnection();

			String query = "select " + user_uid + ",apcontent from apply";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				user_uid = resultSet.getString("user_uid");
				String apcontent = resultSet.getString("apcontent");

				ApplyDTO dto = new ApplyDTO(user_uid, apcontent);
				dtos.add(dto);
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

		return dtos;
	}

	// by 은빈 -- myPageView
	public UserDTO myPageView(String uid) {
		UserDTO dto = null;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			connection = dataSource.getConnection();

			String query = "select * from user where uid = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, "uid");
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				uid = resultSet.getString("uid");
				String upw = resultSet.getString("upw");
				String uname = resultSet.getString("uname");
				String unickname = resultSet.getString("unickname");
				String uphone = resultSet.getString("uphone");
				String uemail = resultSet.getString("uemail");
				String uaddress = resultSet.getString("uaddress");

				dto = new UserDTO(uid, upw, uname, unickname, uphone, uemail, uaddress);
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
		return dto;
	} // myPageView

}
