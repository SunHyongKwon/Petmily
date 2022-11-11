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
	<script type="text/javascript">
	function id_search() { 
	 	var frm = document.idfindscreen;

	 	if (frm.adname.value.length < 1) {
		  alert("이름을 입력해주세요");
		  return;
		 }

		 if (frm.ademail.value.length < 3) {
			  alert("이메일을 입력해주세요");
			  return;
		 }

	 frm.method = "post";
	 frm.action = "search_id_action.do"; //넘어간화면
	 frm.submit();  
	 }</script>
	
</head>
<body>
	<div style="padding: 2rem"></div>
	<jsp:include page="component/login_search_id2.jsp"></jsp:include>




	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>

</html>