<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.form-label {
	font-weight: bold;
}

.form-control {
	color: #a3a3a3;
	padding-top: 0.85rem;
	padding-bottom: 0.85rem;
	box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5);
	border-color: #a3a3a3;
	border-radius: 15px;
	height: 3.3rem;
}
</style>


	<div class="container">
		<div class="row justify-content-center text-center">

			<div class="col-4">

				<h3>PETMILY</h3>
			</div>
		</div>
		<form action="login.do" method="get">
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-3">
				<input type="text" class="form-control" name="uid"
					id="exampleFormControlInput1" placeholder="아이디를 입력해 주세요">
			</div>
		</div>

		<div class="row justify-content-center ">
			<div class="col-4 mb-3">
				<input type="password" class="form-control" name="upw"
					id="exampleFormControlInput1" placeholder="비밀번호를 입력해 주세요">
			</div>
		</div>

		<div class="row justify-content-center my-3">
			<div class="d-grid gap-2 col-4 mx-auto">
				<input type="submit" class="btn btn-primary" value="로그인" 
					style="background-color: #e8853e; padding-top: 0.9rem; padding-bottom: 0.9rem; box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5); border-color: #a3a3a3">
				<!-- <button class="btn btn-primary" type="button"
					onClick="location.href='login.jsp'"
					style="background-color: #e8853e; padding-top: 0.9rem; padding-bottom: 0.9rem; box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5); border-color: #a3a3a3">
					로그인</button> -->
			</div>
		</div>
		</form>	

		<div class="row justify-content-center">
			<div class="d-flex col-4 mb-3">
				<div class="me-auto p-2">
					<a href="signup.jsp" style="color: #a3a3a3;">회원가입</a>
				</div>
				<div class="p-2">
					<a href="#" style="color: #a3a3a3;">ID 찾기</a>
				</div>
				<div class="p-2">
					<a href="#" style="color: #a3a3a3;">PW 찾기</a>
				</div>
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
							style="width: 1.8rem; height: 1.8rem; margin-right: 0.6rem">카카오
						로그인
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
					구글 로그인
				</button>
			</div>
		</div>

	</div>
