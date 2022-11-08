<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Untitled</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<style>
@import
url('https://fonts.googleapis.com/css2?family=Indie+Flower&display=swap')
;
#headerlogo {
	font-family: "Indie Flower";
	font-size: 35px;
	padding-top: 0.5rem;
	color: #de6637;
}

.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
}

a {
	color : black;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg shadow-sm">
		<div class="container-fluid">
			<img src="images/logo.png"
				style="padding-right: 0.7rem; width: 55px; height: 50px;"><a
				class="navbar-brand" href="#"><h3 id="headerlogo">PETMILY</h3></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
				aria-controls="navbarNavDropdown" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			

			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item"><a class="nav-link active mx-3"
						href="index.html" style="color: #e8853e;">Home</a></li>

					<li class="nav-item"><a class="nav-link mx-3" href="#"
						style="color: black;">펫과사전</a></li>

					<li class="nav-item"><a class="nav-link mx-3" href="#"
						style="color: black;">도전</a></li>

					<li class="nav-item"><a class="nav-link mx-3" href="#"
						style="color: black;">매칭</a></li>

					<li class="nav-item dropdown mx-3"><a
						class="nav-link dropdown-toggle" href="#"
						data-bs-toggle="dropdown" aria-expanded="false"
						style="color: black;">함께</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">함께 펫카페</a></li>
							<li><a class="dropdown-item" href="#">함께 산책</a></li>
							<li><a class="dropdown-item" href="#">함께 봉사 </a></li>
						</ul></li>
					<li class="nav-item dropdown mx-3"><a
						class="nav-link dropdown-toggle" href="#"
						data-bs-toggle="dropdown" aria-expanded="false"
						style="color: black;">구조</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">찾아주세요</a></li>
							<li><a class="dropdown-item" href="#">찾았어요</a></li>
						</ul></li>
				</ul>
			</div>

			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item mx-3">
						<a href = "#">
							<i class="bi bi-send" style ="font-size : 1.6rem"></i>
						</a>
					</li>
					
					<li class="nav-item mx-3">
						<a href = "#">
							<i class="bi bi-bell" style ="font-size : 1.6rem"></i>
						</a>
					</li>
					
					<li class="nav-item dropdown mx-3"><a
						class="nav-link dropdown-toggle" href="#"
						data-bs-toggle="dropdown" aria-expanded="false"
						style="color: black;">유저이름</a>
						<ul class="dropdown-menu p-4">
							<li><a class="dropdown-item" href="#">마이페이지</a></li>
							<li><a class="dropdown-item" href="#">로그아웃</a></li>
						</ul></li>

					<li class="nav-item">
						<img src="https://github.com/mdo.png" alt="mdo" width="40" height="40" class="rounded-circle">
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>

</html>