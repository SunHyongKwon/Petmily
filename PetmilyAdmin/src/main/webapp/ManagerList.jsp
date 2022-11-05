<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<div class="row">
			<div class="col"></div>
			<div class="col-10">
				<h1 align="left">관리자 List페이지</h1>

				<table class="table table-bordered table-hover">
					<tr class="table-light">
						<th>제품번호</th>
						<th>브랜드명</th>
						<th>제품명</th>
						<th>가격</th>
						<th>총재고</th>
						<th>입고일자</th>
					</tr>
					<c:forEach items="${list}" var="dto">
						<tr>
							<td><a href="adminselect.do?spec_specnum=${dto.spec_specnum}&sum=${dto.sum}">${dto.spec_specnum }</a></td>
							<td>${dto.company_cname }</td>
							<td>${dto.sname }</td>
							<td>${dto.sprice }</td>
							<td>${dto.sum }</td>
							<td>${dto.pinitdate }</td>
							</tr>
					</c:forEach>

				</table>
				<button type="button" class="btn btn-primary"
					onclick="location.href='ManagerWrite.jsp'" >추가</button>
			</div>
		</div>
	</div>
</body>
</html>