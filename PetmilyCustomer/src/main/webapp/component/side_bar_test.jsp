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
	<div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
		<a href="/"
			class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
		</a>
		<ul class="list-unstyled ps-0">
			<li class="mb-1">
				<button class="btn btn-toggle" data-bs-toggle="collapse"
					data-bs-target="#home-collapse" aria-expanded="false">
					Home</button>
				<div class="collapse" id="home-collapse">
					<ul class="btn-toggle-nav">
						<li><a href="#"
							class="link-dark d-inline-flex text-decoration-none rounded my-2">Overview</a></li>
						<li><a href="#"
							class="link-dark d-inline-flex text-decoration-none rounded my-2">Updates</a></li>
						<li><a href="#"
							class="link-dark d-inline-flex text-decoration-none rounded my-2">Reports</a></li>
					</ul>
				</div>
			</li>
			<li class="border-top my-3"></li>
			<li class="mb-1">
				<button class="btn btn-toggle " data-bs-toggle="collapse"
					data-bs-target="#dashboard-collapse" aria-expanded="false">
					Dashboard</button>
				<div class="collapse" id="dashboard-collapse">
					<ul class="btn-toggle-nav">
						<li><a href="#"
							class="link-dark d-inline-flex text-decoration-none rounded my-2">Overview</a></li>
						<li><a href="#"
							class="link-dark d-inline-flex text-decoration-none rounded my-2">Weekly</a></li>
						<li><a href="#"
							class="link-dark d-inline-flex text-decoration-none rounded my-2">Monthly</a></li>
						<li><a href="#"
							class="link-dark d-inline-flex text-decoration-none rounded my-2">Annually</a></li>
					</ul>
				</div>
			</li>
		</ul>
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>