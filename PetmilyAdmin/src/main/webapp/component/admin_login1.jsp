<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>ADMIN LOGIN</title>
<link rel="shortcut icon" href="images/LOGO.png" />
<!-- cdn -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
</head>

<body>
	<div class="container fluid">
		<div class="row">
			<!-- header include -->
		</div>


		<div class="row">
			<div class="col-0">
				<!-- side include -->
			</div>


			<div class="col-12">
				<!-- content -->

				<!-- 이미지와 title -->
				<div class="container" role="main" align="center">
					<img class="mb-4" src="images/LOGO.png" alt="" width="300"
						height="250">
					<h1>Login</h1>
				</div>
				<br>

				<div class="container text-center">
					<div class="row">
						<div class="col">
							<!-- 좌 여백 -->
						</div>


						<div class="col">

							<form name="form" id="form" role="form" method="post"
								action="${pageContext.request.contextPath}">
								<div class="mb-3">
									<div class="form-floating">
										<input type="text" class="form-control" id="adid" name="adid"
											placeholder="아이디 입력..."> <label for="adid">아이디</label>
									</div>
								</div>

								<div class="mb-3">
									<div class="form-floating">
										<input type="password" class="form-control" id="adpw"
											name="adpw" placeholder="Password"> <label for="adpw">비밀번호</label>
									</div>
								</div>

								<br>
								<div>
									<button class="w-100 btn btn-lg btn-primary" type="submit"
										style="background-color: rgb(232, 133, 62); border: rgb(232, 133, 62);">로그인</button>
								</div>
							</form>
						</div>


						<div class="col">
							<!-- 우 여백 -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<!-- footer include -->
	</div>

	


	<!-- cdn -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>

</body>
</html>