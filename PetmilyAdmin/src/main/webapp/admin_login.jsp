<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADMIN LOGIN</title>

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<style>
html, body {
	height: 100%;
}

body {
	display: flex;
	align-items: center;
	padding-top: 40px;
	padding-bottom: 40px;
	background-color: #f5f5f5;
}

.form-signin {
	width: 100%;
	max-width: 330px;
	padding: 15px;
	margin: auto;
}
</style>
  <link rel="shortcut icon" href="images/LOGO.png" />
</head>

<body>


	<main class="form-signin">
		<form name="loginForm" action="login.jsp" method="post">
			<img class="mb-4"
				src="${pageContext.request.contextPath}/images/LOGO.png" alt=""
				width="300" height="250">
			<h3 class="text-center">로그인 페이지</h3>
			<br>

			<div class="form-floating">
				<input type="text" class="form-control" id="id" name="id"
					placeholder="아이디 입력..."> <label for="id">아이디</label>
			</div>
			<div>
				<label> </label>
			</div>
			<div class="form-floating">
				<input type="password" class="form-control" id="pw" name="pw"
					placeholder="Password"> <label for="pw">비밀번호</label>
			</div>
			<div>
				<label> </label>
			</div>
			<button class="w-100 btn btn-lg btn-primary" type="submit"
				style="background-color: rgb(232, 133, 62); border: rgb(232, 133, 62);">로그인</button>
		</form>

		<div class="container text-left">
			<div class="row">
				<div class="col-sm-5">
					<form action="admin_signup.jsp" method="post">
						<input type="submit" value="회원가입"
							style="background-color: rgb(245, 245, 245); border: rgb(245, 245, 245);">
					</form>
				</div>
				<div class="col-sm-3">
					<form action="find_admin_ID.jsp" method="post">
						<input type="submit" value="ID찾기"
							style="background-color: rgb(245, 245, 245); border: rgb(245, 245, 245);">
					</form>
				</div>
				<div class="col-sm-1">/</div>
				<div class="col-sm-3">
					<form action="find_admin_PW.jsp" method="post">
						<input type="submit" value="PW찾기"
							style="background-color: rgb(245, 245, 245); border: rgb(245, 245, 245);">
					</form>
				</div>
			</div>
		</div>

		<footer class="my-3 text-center text-small">
			<p class="mb-1">&copy; 2021 YD</p>
		</footer>


	</main>
</body>
</html>