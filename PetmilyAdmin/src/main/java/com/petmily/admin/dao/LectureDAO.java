package com.petmily.admin.dao;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class LectureDAO {

	DataSource dataSource;

	public LectureDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
