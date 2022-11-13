package com.petmily.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ApplyDAO {

	DataSource dataSource;

	public ApplyDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	
	//Home에 주간 통계 List - 병준
	public ArrayList<String> weeklyList(){
		ArrayList<String> wlist = new ArrayList<String>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String DailyMatchingCount="";
		String DailyPostCount="";
		String DailyCommentCount="";
		
		
		try {
			connection = dataSource.getConnection();
			
			//일별 매칭횟수, 게시글수, 댓글수  쿼리문
			String query1 = "select a.a, b.b, c.c\n"
					+ "from\n"
					+ "	(select count(*) a from apply where apmatchingdate = curdate() and apcaceldate is null) a,\n"
					+ "    (select count(*) b from posting where ( plevel = '0' or plevel = '1' ) and pinitdate = curdate() and pdeletedate is null) b,\n"
					+ "    (select count(*) c from posting where plevel = '2' and pinitdate = curdate() and pdeletedate is null) c;";
//			String query2 = "count(case when ulevel ='1' THEN 1 END) AS silver, ";
//			String query3 = "count(case when ulevel ='2' THEN 1 END) AS gold from user ";
					
			
			
			preparedStatement = connection.prepareStatement(query1);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				DailyMatchingCount = resultSet.getString("a");
				DailyPostCount = resultSet.getString("b");
				DailyCommentCount = resultSet.getString("c");
			wList
				//만들어놓은 배열에 담기
			}
			
			
		
		System.out.println(ulevelCount.get(0));
		System.out.println(ulevelCount.get(1));
		System.out.println(ulevelCount.get(2));
			
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
	} //weeklyList end
	
	
	
}//End
