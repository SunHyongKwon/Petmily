<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
</style>

	

	<!-- slide3 -->
	<div class="container mb-15" style="background-color: #E9F0FF;width: 1280px;
height: 743px;" >
	  <div class="row">
	    <div class="col">
	      지도 들어갈곳
	    </div>
	    <div class="col">
	    	
	    	<h1 class="display-1 mt-10 mb-2">우리동네<br> 유기견 보호소</h1>
	    	<h2>근처 유기견 보호소를 확인해요</h2>
	    	
	    	<div class="row mt-3">
	    		<div class="col">
	    			<img alt=".." src="component/images/homevolunteer.png">
	    			<p class="mt-2">근처 유기견 보호소에서 봉사활동을 할 수 있어요</p>
	    			
	    		</div>
	    		<div class="col">
	    			<img alt=".." src="component/images/homevolunteer.png">
	    			<p class="mt-2">근처 유기견 보호소에서 봉사활동을 할 수 있어요</p>
	    		</div>
	    		<div class="col">
	    			<img alt=".." src="component/images/homevolunteer.png">
	    			<p class="mt-2">근처 유기견 보호소에서 봉사활동을 할 수 있어요</p>
	    		</div>
	    	</div>
	      
	    </div>
	  </div>
	</div>
