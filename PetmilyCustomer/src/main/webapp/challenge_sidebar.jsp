<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<title>Sidebar 08</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<style>
.bi-check-circle {
	color: blue;
}

.bi-x-circle {
	color: red;
	font-size: 1rem;
}
</style>
</head>
<body>

	<div class="container d-md-flex align-items-stretch">

		<div id="content" class="p-4 p-md-5 pt-5">
			<!-- jsp include 사용해서 클릭 할 때마다의 그 거를 설정 해보면 될듯 하다. -->
			<jsp:include page="challenge_video.jsp"></jsp:include>
			<%-- <jsp:include page="challenge_test.jsp"></jsp:include> --%>
			<%-- <jsp:include page="challenge_volunteer.jsp"></jsp:include> --%>
		</div>


		<nav id="sidebar">
			<div class="p-4 pt-5">
				<h5 style="color: #de6637;">
					<strong>도전 목록</strong>
				</h5>
				<ul class="list-unstyled components mb-5">
					<li><a href="#pageSubmenu1" data-toggle="collapse"
						aria-expanded="false" class="dropdown-toggle">Step1. 배변훈련 <!-- 아직 다 안 봤을 때 -->
							<i class="bi bi-x-circle p-2"></i> <!-- 해당 스텝 다 봤을 때 --> <!-- <i class="bi bi-check-circle p-2"></i> -->
					</a>
						<ul class="collapse list-unstyled" id="pageSubmenu1">
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>
									1-1 영상 제목</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>
									1-2 영상 제목</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>
									1-3 영상 제목</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>
									Step1. 테스트</a></li>
						</ul></li>
					<li><a href="#pageSubmenu2" data-toggle="collapse"
						aria-expanded="false" class="dropdown-toggle">Step2. 배변훈련 <!-- 아직 다 안 봤을 때 -->
							<i class="bi bi-x-circle p-2"></i> <!-- 해당 스텝 다 봤을 때 --> <!-- <i class="bi bi-check-circle p-2"></i> -->
					</a>
						<ul class="collapse list-unstyled" id="pageSubmenu2">
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>
									2-1 영상 제목</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>
									2-2 영상 제목</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>
									2-3 영상 제목</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>
									Step2. 테스트</a></li>
						</ul></li>
					<li><a href="#pageSubmenu3" data-toggle="collapse"
						aria-expanded="false" class="dropdown-toggle">Step3. 배변훈련 <!-- 아직 다 안 봤을 때 -->
							<i class="bi bi-x-circle p-2"></i> <!-- 해당 스텝 다 봤을 때 --> <!-- <i class="bi bi-check-circle p-2"></i> -->
					</a>
						<ul class="collapse list-unstyled" id="pageSubmenu3">
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>
									3-1 영상 제목</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>
									3-2 영상 제목</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>
									3-3 영상 제목</a></li>
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>
									Step3. 테스트</a></li>
						</ul></li>
					<li><a href="#pageSubmenu4" data-toggle="collapse"
						aria-expanded="false" class="dropdown-toggle">Step4. 봉사활동 <!-- 아직 다 안 봤을 때 -->
							<i class="bi bi-x-circle p-2"></i> <!-- 해당 스텝 다 봤을 때 --> <!-- <i class="bi bi-check-circle p-2"></i> -->
					</a>
						<ul class="collapse list-unstyled" id="pageSubmenu4">
							<li><a href="#"><span class="fa fa-chevron-right mr-2"></span>
									봉사 목록</a></li>
						</ul></li>
				</ul>

			</div>
		</nav>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>