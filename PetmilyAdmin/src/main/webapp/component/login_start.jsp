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
		<div style="padding: 150px">
		<div class="row justify-content-center text-center">
			<div class="col-4">
			<img src="component/images/logo.png" style="width: 10rem; height: 10rem; margin-right: 0.6rem">
				<h3>PETMILY</h3>
			</div>
		</div>
		<form action="login.do" method="post">
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-3">
				<input type="text" class="form-control" name="adid"
					id="exampleFormControlInput1" placeholder="아이디를 입력해 주세요">
			</div>
		</div>

		<div class="row justify-content-center ">
			<div class="col-4 mb-3">
				<input type="password" class="form-control" name="adpw"
					id="exampleFormControlInput1" placeholder="비밀번호를 입력해 주세요">
			</div>
			${loginStatus}
		</div>

		<div class="row justify-content-center my-3">
			<div class="d-grid gap-2 col-4 mx-auto">
			<input type="submit" class="btn btn-primary" value="로그인" 
				style="background-color: #e8853e; padding-top: 0.9rem; padding-bottom: 0.9rem; box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5); border-color: #a3a3a3">
			</div>
		</div>
		</form>

		<div class="row justify-content-center">
			<div class="d-flex col-4 mb-3">
				<div class="me-auto p-2">
					<a href="signup_page.do" style="color: #a3a3a3;">회원가입</a>
				</div>
				<div class="p-2">
					<a href="search_id.do" style="color: #a3a3a3;">ID 찾기</a>
				</div>	
				<div class="p-2">
					<a href="search_pw.do" style="color: #a3a3a3;">PW 찾기</a>
				</div>
			</div>

		</div>
	</div>
	</div>
