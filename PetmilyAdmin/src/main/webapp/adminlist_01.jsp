<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%-- <%@ include file="../common/head.jsp"%> --%>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body class="sb-nav-fixed">
	<%-- <%@ include file="../common/nav.jsp"%> --%>
	<main class="mt-5 pt-5">
	<div class="container-fluid px-4">
		<h1 class="mt-4">Board</h1>

		<div class="card mb-4">
			<div class="card-header">
				<a class="btn btn-warning float-end" href="register"> <!-- <i class="fas fa-table me-1"></i> -->
					<i class="fas fa-edit"></i> 글 작성
				</a>
			</div>
			<div class="card-body">
				<table class="table table-hover table-striped">
					<thead>
						<tr>
							<th>글번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>조회수</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${boards}" var="board">
							<tr>
								<td>${board.bno}</td>
								<td><a href="get?bno=${board.bno} ">${board.title}</a></td>
								<td>${board.writer}</td>
								<td>${board.hitCount}</td>
								<td>${board.regDate}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	</main>
	<%-- <%@ include file="../common/footer.jsp"%>	 --%>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>