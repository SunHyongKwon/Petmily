<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 임시 -->
	<jsp:include page="header_before.jsp"></jsp:include>
	
	<!-- session에 user type , user name, user id dto로 만들고 attribute 이름은 user로 보낼 예정 -->
	<%-- <c:choose>
		
		<!-- 로그인 후 usertype이 반려인일 때 -->
		<c:when test="${user.utype eq '1' }">
			<jsp:include page="header_after_companion.jsp"></jsp:include>
		</c:when>
		
		<!-- 로그인 후 usertype이 비반려인일 때 -->
		<c:when test="${user.utype eq '0' }">
			<jsp:include page="header_after_not_companion.jsp"></jsp:include>
		</c:when>
		
		<!-- 로그인 전 -->
		<c:otherwise>
			<jsp:include page="header_before.jsp"></jsp:include>
		</c:otherwise>
	</c:choose> --%>
</body>
</html>