<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Petmily</title>
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
	
	
	
	<div class = "container-fluid">
		<div class="row">
			<div class="col-2 border">
				<jsp:include page="component/challenge_sidebar.jsp"></jsp:include>
			
			</div>
			
			<div class="col-8 mt-4 text-center">
				<!-- command에서 이걸 갈아 끼울 것이다.  -->			
				<!--<jsp:include page="component/${content_viewpage }"></jsp:include>	-->	
				<div class="card mx-auto" style="width : 500px; height : 300px">
					<div class="card-body">
					    <h5 class="card-title">정답입니다</h5>
					    <p class="card-text mb-5">영상을 더 시청하고 퀴즈를 풀어보세요!</p>
					    <a href="challenge.do" class="btn btn-primary">다른문제 풀러가기</a>
					    <a href="home.do" class="btn btn-secondary">홈으로 돌아가기</a>
					  </div>
					</div>
			</div>
			<div class="col-2">
			</div>
		</div>
	
	</div>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>