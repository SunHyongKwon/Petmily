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
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Fira+Sans+Extra+Condensed:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Heebo:wght@100;200;300;400;500;600;700;800;900&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap')
	;

:root { -
	-font1: 'Heebo', sans-serif; -
	-font2: 'Fira Sans Extra Condensed', sans-serif; -
	-font3: 'Roboto', sans-serif
}

body {
	font-family: var(- -font3);
	
}

h2 {
	font-weight: 900
}

.container-fluid {
	max-width: 1200px
}

.card {
	background: #fff;
	box-shadow: 0 6px 10px rgba(0, 0, 0, .08), 0 0 6px rgba(0, 0, 0, .05);
	transition: .3s transform cubic-bezier(.155, 1.105, .295, 1.12), .3s
		box-shadow, .3s -webkit-transform
		cubic-bezier(.155, 1.105, .295, 1.12);
	border: 0;
	border-radius: 1rem
}

.card-img, .card-img-top {
	border-top-left-radius: calc(1rem - 1px);
	border-top-right-radius: calc(1rem - 1px)
}

.card h5 {
	overflow: hidden;
	height: 56px;
	font-weight: 900;
	font-size: 1rem
}

.card-img-top {
	width: 100%;
	
	object-fit: contain;
	padding: 0px
}

.card h2 {
	font-size: 1rem
}

.card:hover {
	transform: scale(1.05);
	box-shadow: 0 10px 20px rgba(0, 0, 0, .12), 0 4px 8px rgba(0, 0, 0, .06)
}

.label-top {
	position: absolute;
	background-color: #8bc34a;
	color: #fff;
	top: 8px;
	right: 8px;
	padding: 5px 10px 5px 10px;
	font-size: .7rem;
	font-weight: 600;
	border-radius: 3px;
	text-transform: uppercase
}

.top-right {
	position: absolute;
	top: 24px;
	left: 24px;
	width: 90px;
	height: 90px;
	border-radius: 50%;
	font-size: 1rem;
	font-weight: 900;
	background: #ff5722;
	line-height: 90px;
	text-align: center;
	color: white
}

.top-right span {
	display: inline-block;
	vertical-align: middle
}

@media ( max-width : 768px) {
	.card-img-top {
		max-height: 250px
	}
}

.over-bg {
	background: rgba(53, 53, 53, 0.85);
	box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
	backdrop-filter: blur(0.0px);
	-webkit-backdrop-filter: blur(0.0px);
	border-radius: 10px
}

.btn {
	font-size: 1rem;
	font-weight: 500;
	text-transform: uppercase;
	padding: 5px 50px 5px 50px
}

.box .btn {
	font-size: 1.5rem
}

@media ( max-width : 1025px) {
	.btn {
		padding: 5px 40px 5px 40px
	}
}

@media ( max-width : 250px) {
	.btn {
		padding: 5px 30px 5px 30px
	}
}

.btn-warning {
	background: none #f7810a;
	color: #ffffff;
	fill: #ffffff;
	border: none;
	text-decoration: none;
	outline: 0;
	box-shadow: -1px 6px 19px rgba(247, 129, 10, 0.25);
	border-radius: 100px
}

.btn-warning:hover {
	background: none #ff962b;
	color: #ffffff;
	box-shadow: -1px 6px 13px rgba(255, 150, 43, 0.35)
}

.bg-success {
	font-size: 1rem;
	background-color: #f7810a !important
}

.bg-danger {
	font-size: 1rem
}

.price-hp {
	font-size: 1rem;
	font-weight: 600;
	color: darkgray
}

.amz-hp {
	font-size: .7rem;
	font-weight: 600;
	color: darkgray
}

.fa-question-circle:before {
	color: darkgray
}

.fa-plus:before {
	color: darkgray
}

.box {
	border-radius: 1rem;
	background: #fff;
	box-shadow: 0 6px 10px rgb(0 0 0/ 8%), 0 0 6px rgb(0 0 0/ 5%);
	transition: .3s transform cubic-bezier(.155, 1.105, .295, 1.12), .3s
		box-shadow, .3s -webkit-transform
		cubic-bezier(.155, 1.105, .295, 1.12)
}

.box-img {
	max-width: 300px
}

.thumb-sec {
	max-width: 300px
}

@media ( max-width : 576px) {
	.box-img {
		max-width: 200px
	}
	.thumb-sec {
		max-width: 200px
	}
}

.inner-gallery {
	width: 60px;
	height: 60px;
	border: 1px solid #ddd;
	border-radius: 3px;
	margin: 1px;
	display: inline-block;
	overflow: hidden;
	-o-object-fit: cover;
	object-fit: cover
}

@media ( max-width : 370px) {
	.box .btn {
		padding: 5px 40px 5px 40px;
		font-size: 1rem
	}
}

.disclaimer {
	font-size: .9rem;
	color: darkgray
}

.related h3 {
	font-weight: 900
}

footer {
	background: #212529;
	height: 80px;
	color: #fff
}

@import
s
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

.delbtn {
	border: none;
	background-color: rgba(0.0 .0 .0;
	)
}
 #Line{
		
		

	}

</style>
  </head>
  <body>


<div class="container ">
	<div class="row">
		<div class="col"></div>
		<div class="col-8" style="font-size : 13px">
			<hr id="Line" class="mt-20">
			
				대표 황국화 | 사업자번호 123-45-67890
				<div class="text-right">
					<i class="bi bi-facebook"></i>
				</div><br>
		
				직업정보제공사업 신고번호 2016-서울강남-1234<br>
				주소 서울특별시 강남구
				전화 010-9711-0641|고객문의 21dlqudwns@google.com<br><br>
				
				제휴문의 &nbsp;&nbsp;&nbsp; 광고 문의&nbsp;&nbsp;&nbsp; PR 문의 &nbsp;&nbsp;&nbsp; IR 문의 <br><br>
				이용약관 &nbsp;&nbsp;&nbsp; 개인정보처리방침 &nbsp;&nbsp;&nbsp; 위치기반서비스 이용약관 &nbsp;&nbsp;&nbsp; 이용자보호 비전과 계획
				<div class="text-center mt-3">
				© 2022 Company, Inc. All rights reserved.
				</div>
		</div>
		<div class="col"></div>
	</div>
</div>

	
	



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