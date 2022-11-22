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
<style>

.btn-warning {
    --bs-btn-color: #000;
    --bs-btn-bg: #FB9E58;
    --bs-btn-border-color: #FB9E58;
    --bs-btn-hover-color: #000;
    --bs-btn-hover-bg: #F9B581;
    --bs-btn-hover-border-color: #F9B581;
    --bs-btn-focus-shadow-rgb: 217,164,6;
    --bs-btn-active-color: #000;
    --bs-btn-active-bg: #F9B581;
    --bs-btn-active-border-color: #F9B581;
    --bs-btn-active-shadow: inset 0 3px 5pxrgba(0, 0, 0, 0.125);
    --bs-btn-disabled-color: #000;
    --bs-btn-disabled-bg: #F9B581;
    --bs-btn-disabled-border-color: #F9B581;
}
</style>
</head>
<body>
	<jsp:include page="component/header.jsp"></jsp:include>
	<div class = "container-fluid ">
		<div class="row">
			<div class="col-2">
				<jsp:include page="component/sidebar.jsp"></jsp:include>
			
			</div>
			<div class="col-10 pt-3" style="background-color: #F6F5F9">
				<jsp:include page="component/board_list.jsp"></jsp:include>
				<!-- command에서 이걸 갈아 끼울 것이다.  -->			
				<%-- <jsp:include page="component/${content_viewpage }"></jsp:include> --%>			
			</div>
		</div>
	
	</div>
	
	
<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>