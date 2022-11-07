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
<style>
#square-bronze {
	width: 6.5rem;
	height: 6.5rem;
	background: linear-gradient(90deg, rgb(129,93,67) 0%, rgb(166,128,96) 35%, rgb(229,203,181) 100%);
	border-radius: 15px;
}

#square-silver {
	width: 6.5rem;
	height: 6.5rem;
	background: linear-gradient(90deg, rgb(174,176,180) 0%, rgb(231,230,233) 75% ,rgb(242,242,242) 100%);
	border-radius: 15px;
}

#square-gold {
	width: 6.5rem;
	height: 6.5rem;
	background: linear-gradient(90deg, rgb(255, 179, 2) 0%, rgb(254, 195, 0) 35%,rgb(255, 223, 1) 100%);
	border-radius: 15px;
}

.bi-lock {
	font-size: 4rem;
	color: white;
	text-align: center;
}


</style>
</head>
<body>
	<div class="container">
		<h3 style="color: #de6637; margin-bottom: 1.3rem;">
			<strong>도전과제 목록</strong>
		</h3>
		<!-- 영상 이름 -->
		<p style="color: #a3a3a3; margin-bottom: 0;">
			<small>당신이 달성한 도전과제를 확인 할 수 있어요.</small>
		</p>
		<p style="color: #a3a3a3; margin-bottom: 2rem;">
			<small>모든 도전과제를 달성하기 위해 지금 도전하세요.</small>
		</p>

		<div class="row">
			<h5 style="margin-bottom: 1.3rem;">봉사활동 뱃지</h5>
		</div>

		<div class="row text-center">
			<div class="col-2 mx-2 my-2" id="square-bronze">
				<i class="bi bi-lock"></i>
				<!-- 사진 화면 if문 돌리면 됨 -->
		   		<!-- <i class="bi bi-lock"></i> -->
			</div>
			<div class="col-2 mx-2 my-2" id="square-silver">
				<i class="bi bi-lock"></i>
			</div>
			<div class="col-2 mx-2 my-2" id="square-gold">
				<i class="bi bi-lock"></i>
			</div>
		</div>

		<hr>

		<div class="row">
			<h5 style="margin-bottom: 1.3rem;">같이산책 뱃지</h5>
		</div>

		<div class="row text-center">
			<div class="col-2 mx-2 my-2" id="square-bronze">
				<i class="bi bi-lock"></i>
			</div>
			<div class="col-2 mx-2 my-2" id="square-silver">
				<i class="bi bi-lock"></i>
			</div>
			<div class="col-2 mx-2 my-2" id="square-gold">
				<i class="bi bi-lock"></i>
			</div>
		</div>

		<hr>

		<div class="row">
			<h5 style="margin-bottom: 1.3rem;">같이 펫카페 뱃지</h5>
		</div>

		<div class="row text-center">
			<div class="col-2 mx-2 my-2" id="square-bronze">
				<i class="bi bi-lock"></i>
			</div>
			<div class="col-2 mx-2 my-2" id="square-silver">
				<i class="bi bi-lock"></i>
			</div>
			<div class="col-2 mx-2 my-2" id="square-gold">
				<i class="bi bi-lock"></i>
			</div>
		</div>

		<hr>

		<div class="row">
			<h5 style="margin-bottom: 1.3rem;">유기견 신고 뱃지</h5>
		</div>

		<div class="row text-center">
			<div class="col-2 mx-2 my-2" id="square-bronze">
				<i class="bi bi-lock"></i>
			</div>
			<div class="col-2 mx-2 my-2" id="square-silver">
				<i class="bi bi-lock"></i>
			</div>
			<div class="col-2 mx-2 my-2" id="square-gold">
				<i class="bi bi-lock"></i>
			</div>
			
			
		</div>



		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
			crossorigin="anonymous"></script>
</body>
</html>