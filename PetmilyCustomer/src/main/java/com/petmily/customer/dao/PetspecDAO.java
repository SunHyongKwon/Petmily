package com.petmily.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.petmily.customer.dto.PetspecDTO;

public class PetspecDAO {
	DataSource dataSource;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;

	public PetspecDAO() {

		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// gukHwa [조회_견종설명]
	public String pscontent(String psbreeds) {
		String pscontent = "";

		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			connection = dataSource.getConnection();

			String query = "select pscontent from petspec where psbreeds = '" + psbreeds + "'";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				pscontent = resultSet.getString(1);
			}

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

		return pscontent;
	}

	// gukHwa [조회_견종설명]
	public ArrayList<String> psbreedsList(String pstype) {
		ArrayList<String> psbreedsList = new ArrayList<>();
		String psbreeds = null;

		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			connection = dataSource.getConnection();

			String query = "select psbreeds from petspec where pstype = '" + pstype + "'";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				psbreeds = resultSet.getString(1);
				psbreedsList.add(psbreeds);
			}

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

		return psbreedsList;
	}

	// gukHwa [조회_pet 설명_종류별(dog,cat,etc)card view 4개씩]
	public ArrayList<PetspecDTO> petSpecList(String pstype) {

		ArrayList<PetspecDTO> dtos = new ArrayList<>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			connection = dataSource.getConnection();

			String query = "select psbreeds, psimage, pscontent from petspec where pstype = '" + pstype + "'";

			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {

				String psbreeds = resultSet.getString("psbreeds");
				String psimage = resultSet.getString("psimage");
				String pscontent = resultSet.getString("pscontent");
				PetspecDTO dto = new PetspecDTO(psbreeds, psimage, pscontent);
				dtos.add(dto);
			}

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

		return dtos;
	}

	public ArrayList<PetspecDTO> petSpecListFour(String pstype) {

		ArrayList<PetspecDTO> dtos = new ArrayList<>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			connection = dataSource.getConnection();

			String query = "select psbreeds, psimage, pscontent from petspec where pstype = '" + pstype + "' limit 4";

			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {

				String psbreeds = resultSet.getString("psbreeds");
				String psimage = resultSet.getString("psimage");
				String pscontent = resultSet.getString("pscontent");
				PetspecDTO dto = new PetspecDTO(psbreeds, psimage, pscontent);
				dtos.add(dto);
			}

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

		return dtos;
	}

	public void insert(String pstype, String psbreeds) {
		// TODO Auto-generated method stub
		PreparedStatement ps = null;

		try {
			connection = dataSource.getConnection();

			String query = "insert into petspec (pstype,psbreeds) values ( ? , ? ) ";

			ps = connection.prepareStatement(query);

			ps.setString(1, pstype);
			ps.setString(2, psbreeds);

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

	public ArrayList<Integer> selectPsId(String[] pstype, String[] psbreeds) {

		ArrayList<Integer> psIdList = new ArrayList<>();
		int psid = 0;

		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			connection = dataSource.getConnection();

			for (int i = 0; i < pstype.length; i++) {

				String query = "select psid from petspec where pstype = '" + pstype[i] + "' and psbreeds = '" + psbreeds[i]
						+ "'";

				preparedStatement = connection.prepareStatement(query);
				resultSet = preparedStatement.executeQuery();

				if (resultSet.next()) {

					psid = resultSet.getInt(1);
					System.out.println(psid);
					psIdList.add(psid);
				}
			}

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

		return psIdList;
	}

}
