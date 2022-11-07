<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="description" content="">
<meta name="author" content="">

<title>Tooplate's Little Fashion - FAQs Page</title>

<!-- CSS FILES -->
<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@100;300;400;700;900&display=swap"
	rel="stylesheet">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-icons.css" rel="stylesheet">

<link rel="stylesheet" href="css/slick.css" />

<link href="css/tooplate-little-fashion.css" rel="stylesheet">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Indie+Flower&display=swap')
	;

#headerlogo {
	font-family: "Indie Flower";
	font-size: 26px;
}

.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
}
</style>



</head>
<body>
	<section class="preloader">
		<div class="spinner">
			<span class="sk-inner-circle"></span>
		</div>
	</section>

	<main>

		<nav class="navbar navbar-expand-lg shadow-sm"
			style="padding-top: 11px; padding-bottom: 11px;">
			<div class="container">
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<a class="navbar-brand " id="headerlogo" href="index.html"><strong><img
						alt="" src="images/header/logo4.png"> <span>PETMILY</span></strong>
				</a>

				<div class="d-lg-none">
					<a href="sign-in.html" class="bi-person custom-icon me-3"></a> <a
						href="product-detail.html" class="bi-bag custom-icon"></a>
				</div>

				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav mx-auto">
						<li class="nav-item"><a class="nav-link active"
							href="index.html">Home</a></li>

						<li class="nav-item"><a class="nav-link" href="about.html">펫과사전</a>
						</li>

						<li class="nav-item"><a class="nav-link" href="products.html">구조</a>
						</li>

						<li class="nav-item"><a class="nav-link" href="faq.html">분양</a></li>

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#"
							data-bs-toggle="dropdown" aria-expanded="false">함께</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another action</a></li>
								<li><a class="dropdown-item" href="#">Something else
										here</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#"
							data-bs-toggle="dropdown" aria-expanded="false">게시판</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another action</a></li>
								<li><a class="dropdown-item" href="#">Something else
										here</a></li>
							</ul></li>
					</ul>




					<div class="d-none d-lg-block ">
						<!-- ulevel 정보를 가져와서 등급을 띄우기,ulevel 앞에 추가해줘야함 -->

						<!-- 도전과제 -->
						<a href="product-detail.html" class="bi-calendar2-check "
							style="font-size: 1.3rem; margin-right: 4px;"></a> 
						<!-- 채팅 -->
						<a href="product-detail.html" class="bi-chat "
							style="font-size: 1.3rem; margin-right: 4px;"></a>



						<!-- 알림 -->
						<div class="dropdown show ">
							<a href="sign-in.html" class="dropdown bi-bell position-relative"
								style="margin-right: 5px; font-size: 1.3rem"
								data-bs-toggle="dropdown" aria-expanded="false"><span
								class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"
								style="color: #FFFFFF; font-size: 12px; margin-top: 3px;">6<span
									class="visually-hidden">unread messages</span></span></a>

							<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
								>새로운메세지 <a class="dropdown-item" href="#">Action</a> <a
									class="dropdown-item" href="#">Another action</a> >최근달린댓글 <a
									class="dropdown-item" href="#">Something else here</a>
							</div>
						</div>

						<!-- 개인정 -->
						<div class="dropdown show ">
							<a class="dropdown-toggle" href="#" data-bs-toggle="dropdown"
								aria-expanded="false">이병준 </a>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">

								<a class="dropdown-item" href="#">Action</a> <a
									class="dropdown-item" href="#">Another action</a> <a
									class="dropdown-item" href="#">Something else here</a>
							</div>
						</div>
					</div>
				</div>
			</div>

		</nav>















	</main>




	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/Headroom.js"></script>
	<script src="js/jQuery.headroom.js"></script>
	<script src="js/slick.min.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>