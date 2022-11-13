package com.petmily.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ChooseDAO {

	DataSource dataSource;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;

	public ChooseDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void insert(ArrayList<Integer> petIdList, ArrayList<Integer> psIdList) {

		// TODO Auto-generated method stub
		PreparedStatement ps = null;

		try {
			connection = dataSource.getConnection();

			for (int i = 0; i < petIdList.size(); i++) {

				String query = "insert into choose (pet_petid ,petspec_psid, chodate) values ( ? , ? ,now() ) ";

				ps = connection.prepareStatement(query);

				ps.setInt(1, petIdList.get(i));
				ps.setInt(2, psIdList.get(i));

				ps.executeUpdate();

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

	}
}
