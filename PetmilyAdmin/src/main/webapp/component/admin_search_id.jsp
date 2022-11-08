<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<meta charset="UTF-8">
<title>ADMIN SEARCH ID</title>
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

.form-signin .checkbox {
	font-weight: 400;
}

.form-signin .form-floating:focus-within {
	z-index: 2;
}

.form-signin input[type="email"] {
	margin-bottom: -1px;
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.form-signin input[type="password"] {
	margin-bottom: 10px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}
</style>
 <link rel="shortcut icon" href="images/LOGO.png" />
</head>

<body>
	<main class="form-signin">
		<form name="adminsearchid" action="#" method="post">

			<h3 class="text-center">아이디 찾기</h3>
			<br>
			<h6 class="text-center">회원정보에 입력한 정보를 작성해주세요.</h6>
			<br>

			<div class="form-floating">
				<input type="text" class="form-control" id="name" name="name"
					placeholder="Name"> <label for="name">이름</label>
			</div>
			<div>
				<label> </label>
			</div>
			<div class="form-floating">
				<input type="email" class="form-control" id="email" name="email"
					placeholder="Email"> <label for="email">이메일</label>
			</div>
			<div>
				<label> </label>
			</div>
			<button class="w-100 btn btn-lg btn-primary" type="submit"
				style="background-color: rgb(232, 133, 62); border: rgb(232, 133, 62);">아이디 찾기</button>
		</form>
	</main>
</body>
</html>

