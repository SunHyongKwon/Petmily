<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.sql.DataSource" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%	

	Context context;
	DataSource dataSource;
	try {
		context = new InitialContext();
		dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

	
	} catch (Exception e) {
		e.printStackTrace();
	}

Connection connection = null;
PreparedStatement preparedStatement = null;


try {
	connection = dataSource.getConnection();
	
	String query = "insert into pet (petgender,petname) ";
	String query2 = "values (?,?)";
	preparedStatement = connection.prepareStatement(query + query2);
	
	preparedStatement.setString(1, request.getParameter("petgender"));
	preparedStatement.setString(2, request.getParameter(""));
	
	preparedStatement.executeUpdate();
	
	
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
%>