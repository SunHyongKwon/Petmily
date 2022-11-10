<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>

	<jsp:include page="component/header.jsp"></jsp:include>
	<div style = "padding : 1rem"></div>
	<jsp:include page="component/mypage_header.jsp"></jsp:include>
	
	<div style = "padding : 1rem"></div>
	
	<div class = "container-fluid">
		<div class="row">
			<div class="col-2">
				<jsp:include page="component/mypage_sidebar.jsp"></jsp:include>
			
			</div>
			
			<div class="col-10">
				<jsp:include page="component/mypage_write_list.jsp"></jsp:include>
			</div>
		</div>
	
	</div>
	

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>