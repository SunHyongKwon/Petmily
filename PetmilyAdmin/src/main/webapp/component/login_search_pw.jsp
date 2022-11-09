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

			<h3>비밀번호 찾기</h3>
		</div>
	</div>

	<div class="row justify-content-center text-center">

		<div class="col-4">
			<h6 style="color: #a3a3a3;">간단한 인증을 통해 비밀번호를 찾아드립니다.</h6>
		</div>
	</div>

	<div class="row justify-content-center ">
		<div class="col-4 mb-3 gy-2">
			<label for="exampleFormControlInput1" class="form-label">아이디 </label>
			<input type="text" class="form-control" name="uid"
				id="exampleFormControlInput1" placeholder="이름을 입력해 주세요">
		</div>
	</div>

	<div class="row justify-content-center ">
		<div class="col-3 mb-3 gy-2">
			<label for="exampleFormControlInput1" class="form-label">이메일
			</label> <input type="email" class="form-control" name="uemail"
				id="exampleFormControlInput1" placeholder="이메일을 입력해 주세요">
		</div>
		<!-- 이메일 인증 버튼 -->
		<button class="btn btn-warning col-1 gy-2 align-self-center"
			type="button" id="email_check"
			style="margin-top: 1.5rem; padding-top: 0.7rem; padding-bottom: 0.7rem;">인증</button>
	</div>

	<!-- 이메일 인증번호  -->
	<div class="row justify-content-center ">
		<div class="col-4 mb-3 gy-2">
			<label for="exampleFormControlInput1" class="form-label">이메일
				인증번호 </label> <input type="text" class="form-control" name="unickname"
				id="exampleFormControlInput1" placeholder="인증번호를 입력해 주세요">
		</div>
	</div>



	<div class="row justify-content-center my-3">
		<div class="d-grid gap-2 col-4 mx-auto">
			<button class="btn btn-primary" type="button"
				onClick="location.href='sign_up_form.jsp'"
				style="background-color: #e8853e; padding-top: 0.9rem; padding-bottom: 0.9rem; 
				box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5); border-color: #a3a3a3">
				비밀번호 찾기</button>
		</div>
	</div>



</div>
