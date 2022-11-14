<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>

	<c:when test="${user.utype eq 'unaccompanion' }">
		<jsp:include page="header_after_not_companion.jsp"></jsp:include>
	</c:when>

	<c:when test="${user.utype eq 'companion' }">
		<jsp:include page="header_after_companion.jsp"></jsp:include>
	</c:when>

	<c:otherwise>
		<jsp:include page="header_before.jsp"></jsp:include>
	</c:otherwise>

</c:choose>
