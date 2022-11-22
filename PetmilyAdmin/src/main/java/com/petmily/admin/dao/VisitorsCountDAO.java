package com.petmily.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.google.gson.Gson;

public class VisitorsCountDAO {
	DataSource dataSource;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;

	public VisitorsCountDAO() {
		// TODO Auto-generated constructor stub
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//방문자수 +1 해주는 메소드
	public void count() {
		int result =0;
		try {
			connection = dataSource.getConnection();
			
			
			//-------첫방문자인지 아닌지 체크
			String query1 = "select count(*) from visitorscount where visitdate = curdate() ";
			preparedStatement = connection.prepareStatement(query1);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				result = resultSet.getInt(1);
				
			}
			
			if(result==1) {//첫방문자가 아닐때 이미있는 row 를 업데이트
				
				String query2 = "update visitorscount set visitorsnum = (visitorsnum + 1) where visitdate = curdate()";
				preparedStatement = connection.prepareStatement(query2);
				preparedStatement.executeUpdate();//executeupdate 리턴값이 인트이다.
				
			}else {//첫방문자일시 현제날짜와 방문수 1을 insert 해준다
				String query3 = "insert into visitorscount (visitdate, visitorsnum) values (curdate(),1)";
				preparedStatement = connection.prepareStatement(query3);
				preparedStatement.executeUpdate();//executeupdate 리턴값이 인트이다.
				
			}
			//---------------
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
	         try {
	             if(preparedStatement != null ) preparedStatement.close();
	             if(connection != null) connection.close();
	          }catch (Exception e) {
	             e.printStackTrace();
	          }
		}

		
	}//count 끝
	
	
	//차트에 넣을 데이터 넣는 메소드
	public String visitorsCountChart(){
		
		connection = null;
		preparedStatement = null;
		resultSet = null;
		Gson gsonObj = new Gson();
		Map<Object,Object> map = null;
		List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
		String dataPoints = "";
		
		try {
			connection = dataSource.getConnection();
			String query1 = "select \n"
					+ "   x.ok \n"
					+ "  ,ifnull(y.c,0) \n"
					+ " from (\n"
					+ "    select \n"
					+ "    a.Date as ok     \n"
					+ "    from (\n"
					+ "        select curdate() - INTERVAL (a.a) DAY as Date\n"
					+ "        from (select 0 as a union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6) as a\n"
					+ "    ) a \n"
					+ ") x left outer join \n"
					+ "(SELECT date(visitdate) as d,visitorsnum as c FROM visitorscount WHERE DATE(visitdate) BETWEEN DATE_ADD(curdate(),INTERVAL -1 WEEK )and curdate()\n"
					+ ") y on x.ok= y.d order by x.ok";

			
			
			preparedStatement = connection.prepareStatement(query1);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				Timestamp tsvisitdate = resultSet.getTimestamp("ok");
				String visitdate = new SimpleDateFormat("MM/dd").format(tsvisitdate);
				int visitorsnum = resultSet.getInt(2);
				
				map = new HashMap<Object,Object>(); 
				map.put("label", visitdate); 
				map.put("y", visitorsnum); 
				list.add(map);
				
			
				//만들어놓은 배열에 담기
			}
			
			dataPoints = gsonObj.toJson(list);
					
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
		
		return dataPoints;
	} //visitorsCountChart end
	
}
