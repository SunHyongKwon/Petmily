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
</head>
<body>
	<div class="container my-5 text-center">
		<div class="row justify-content-center my-5">
			<div class="col-e ">

				<h2 style="color: #e8853e">
					<strong>회원가입</strong>
				</h2>

			</div>
		</div>
		<div class="row justify-content-center my-3">
			<div class="d-grid gap-2 col-4 mx-auto">
				<button class="btn btn-outline-secondary" type="button" onClick="location.href='sign_up_form.jsp'"
					style="color: #A3A3A3; padding-top: 0.9rem; padding-bottom: 0.9rem; box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5); border-color: #a3a3a3">ID
					, PW로 가입하기</button>
			</div>
		</div>
		<div class="row justify-content-center my-3">
			<div class="d-grid gap-2 col-4 mx-auto">
				<a
					href="https://kauth.kakao.com/oauth/authorize?client_id=c0adedd90ef6ae1146e57b65fcf48e85&redirect_uri=	
								http://localhost:8080/PetmilyCustomer/sign_up_kakao.do&response_type=code">
					<button class="btn btn-warning" type="button"
						style="color: #A39A42; font-padding: 1 rem; width: 100%; padding-top: 0.75rem; padding-bottom: 0.75rem; box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5); background-color: #FFE700; border-color: #FFE700">
						<img src="component/images/kakaotalk.png"
							style="width: 1.8rem; height: 1.8rem; margin-right: 0.6rem">카카오로
						가입하기
					</button>
				</a>
			</div>
		</div>
		<div class="row justify-content-center my-3">
			<div class="d-grid gap-2 col-4 mx-auto">
				<button class="btn btn-outline-secondary" type="button"
					style="color: #a3a3a3; padding-top: 0.75rem; padding-bottom: 0.75rem; box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5); border-color: #a3a3a3">
					<img src="component/images/google.png"
						style="width: 1.8rem; height: 1.8rem; margin-right: 0.6rem">
					구글로 가입하기
				</button>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>




