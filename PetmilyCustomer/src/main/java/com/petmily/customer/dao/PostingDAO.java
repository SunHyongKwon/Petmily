package com.petmily.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
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

	// 게시물 입력
	public void postingWriteAction(String ptitle, String pcontent, String pimage1, String pimage2, String pimage3,
			String pcategory, String plocation, int plevel, String user_uid) {

		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			connection = dataSource.getConnection();

			String query = "insert into posting (ptitle, pcontent, pimage1, pimage2, pimage3, pcategory, plocation, plevel, user_uid, pinitdate ) ";
			String query2 = "values (?,?,?,?,?,?,?,?,?,now())";
			preparedStatement = connection.prepareStatement(query + query2);

			preparedStatement.setString(1, ptitle);
			preparedStatement.setString(2, pcontent);
			preparedStatement.setString(3, pimage1);
			preparedStatement.setString(4, pimage2);
			preparedStatement.setString(5, pimage3);
			preparedStatement.setString(6, pcategory);
			preparedStatement.setString(7, plocation);
			preparedStatement.setInt(8, plevel);
			preparedStatement.setString(9, user_uid);

			preparedStatement.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

	// 게시물 출력
	public PostingDTO postingGetDetail(int pid) {

		PostingDTO dto = new PostingDTO();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색

		String ptitle;
		String pcontent;
		String pimage1;
		String pimage2;
		String pimage3;
		String plocation;
		Timestamp pinitdate;
		String user_uid;

		try {
			connection = dataSource.getConnection();

			String query = "select ptitle, pcontent, pimage1, pimage2, pimage3, plocation, pinitdate, user_uid from posting where pid = "
					+ pid;
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				ptitle = resultSet.getString(1);
				pcontent = resultSet.getString(2);
				pimage1 = resultSet.getString(3);
				pimage2 = resultSet.getString(4);
				pimage3 = resultSet.getString(5);
				plocation = resultSet.getString(6);
				pinitdate = resultSet.getTimestamp(7);
				user_uid = resultSet.getString(8);

				dto = new PostingDTO(ptitle, pcontent, pimage1, pimage2, pimage3, plocation, pinitdate, user_uid);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return dto;

	}
}
