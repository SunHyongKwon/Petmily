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
import com.petmily.customer.dto.UserDTO;

public class UserDAO {

	DataSource dataSource;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;

	public UserDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public UserDTO login(String uid, String upw) {
		int result = 0;
		String uname = "";
		String utype = "";
		String uimage = "";
		UserDTO udto = null;

		try {
			connection = dataSource.getConnection();

			String query = "select count(*) , uname, utype, uimage from user where uid = '" + uid + "' and upw = '"
					+ upw + "'";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				result = resultSet.getInt(1);
				uname = resultSet.getString(2);
				utype = resultSet.getString(3);
				uimage = resultSet.getString(4);
				udto = new UserDTO(uid, uname, utype, uimage);

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

		return udto;
	}

	public void insert(String uid, String upw, String uname, String uphone, String uemail, String unickname,
			String uaddress, String utype, String uimage) {
		// TODO Auto-generated method stub
		PreparedStatement ps = null;

		try {
			connection = dataSource.getConnection();

			String query = "insert into user (uid,upw,uname,uphone,uemail,unickname,uaddress, utype, uimage) values (? , ? , ? , ? , ? , ? , ? , ? ,?) ";

			ps = connection.prepareStatement(query);

			ps.setString(1, uid);
			ps.setString(2, upw);
			ps.setString(3, uname);
			ps.setString(4, uphone);
			ps.setString(5, uemail);
			ps.setString(6, unickname);
			ps.setString(7, uaddress);
			ps.setString(8, utype);
			ps.setString(9, uimage);

			ps.executeUpdate();

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
	}

	public int registerCheck(String uid) {

		try {
			connection = dataSource.getConnection();

			String query = "select * from user where uid = '" + uid + "'";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next() || uid.equals("")) {
				return 0;
			} else {
				return 1;
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

		return -1;
	}

	// pw체크
	public int userPwCheck(String uid, String upw) {

		int result = 0;
//맞으면 1 틀리면 0
		try {
			connection = dataSource.getConnection();

			String query = "select count(*) from user where uid = '" + uid + "' and upw = '" + upw + "'";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				result = resultSet.getInt(1);

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

		return result;
	}

	// 개인정보수정 유저 정보 가져오기
	public UserDTO userInfo(String uid) {

		UserDTO dto = new UserDTO();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색

		try {
			connection = dataSource.getConnection();

			String query = "select uname, uemail, uphone, uaddress, unickname ,uimage from user where uid = '" + uid
					+ "'";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {

				String uname = resultSet.getString(1);
				String uemail = resultSet.getString(2);
				String uphone = resultSet.getString(3);
				String uaddress = resultSet.getString(4);
				String unickname = resultSet.getString(5);
				String uimage = resultSet.getString(6);

				dto = new UserDTO(uname, uemail, uphone, uaddress, unickname, uimage);

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

	public String selectImage(String uid) {
		String uimage = null;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색

		try {
			connection = dataSource.getConnection();

			String query = "select uimage from user where uid = '" + uid + "'";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				uimage = resultSet.getString(1);
			}

			return uimage;

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
		return null;

	}
	
	public ArrayList<String> selectImageList(ArrayList<PostingDTO> commentList) {
		ArrayList<String> imageList = new ArrayList<>();
		String uimage = null;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색

		try {
			connection = dataSource.getConnection();
			
			for(PostingDTO comment : commentList) {
				String query = "select uimage from user where uid = '" + comment.getUser_uid() + "'";
				
				preparedStatement = connection.prepareStatement(query);
				resultSet = preparedStatement.executeQuery();

				if (resultSet.next()) {
					uimage = resultSet.getString(1);
					
					imageList.add(uimage);
				}
			}
			return imageList;
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
		return null;

	}
}
