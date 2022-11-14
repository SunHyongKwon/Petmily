package com.petmily.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class LecturecheckDAO {

	DataSource dataSource;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;

	public LecturecheckDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void insertLecture(String uid, String categoryNum) {

		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			connection = dataSource.getConnection();

			String query = "insert into lecturecheck (lcdate, user_uid, lecture_lid) ";
			String query2 = "values (now() ,?,?)";
			preparedStatement = connection.prepareStatement(query + query2);

			preparedStatement.setString(1, uid);
			preparedStatement.setString(2, categoryNum);

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

	public int selectChapterOne(String uid) {
		int count = 0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색

		try {
			connection = dataSource.getConnection();

			String query = "select count(*) from lecturecheck where user_uid = '" + uid + "' and lecture_lid like '1%'";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			// 한개일때는 if, 여러개일때는while

			if (resultSet.next()) {
				count = resultSet.getInt(1);
			}
			return count;
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
		return 0;
	}

	public int selectChapterTwo(String uid) {
		int count = 0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색

		try {
			connection = dataSource.getConnection();

			String query = "select count(*) from lecturecheck where user_uid = '" + uid + "' and lecture_lid like '2%'";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			// 한개일때는 if, 여러개일때는while

			if (resultSet.next()) {
				count = resultSet.getInt(1);
			}
			return count;
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
		return 0;
	}

	public int selectChapterThree(String uid) {
		int count = 0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색

		try {
			connection = dataSource.getConnection();

			String query = "select count(*) from lecturecheck where user_uid = '" + uid + "' and lecture_lid like '3%'";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			// 한개일때는 if, 여러개일때는while

			if (resultSet.next()) {
				count = resultSet.getInt(1);
			}
			return count;
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
		return 0;
	}
}
