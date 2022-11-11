<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

			<h3>아이디 찾기</h3>
		</div>
	</div>

	<div class="row justify-content-center text-center">

		<div class="col-4">
			<h6 style="color: #a3a3a3;">회원정보에 입력한 정보를 작성해 주세요</h6>
		</div>
	</div>
	
<form name="idfindscreen" action="search_id_action.do" method="post">
	<div class="row justify-content-center ">
		<div class="col-4 mb-3 gy-2">
			<label for="exampleFormControlInput1" class="form-label">이름 </label>
			<input type="text" class="form-control" name="adname"
				id="exampleFormControlInput1" placeholder="이름을 입력해 주세요" autofocus required>
		</div>
	</div>

	<div class="row justify-content-center ">
		<div class="col-3 mb-3 gy-2">
			<label for="exampleFormControlInput1" class="form-label">이메일
			</label> <input type="email" class="form-control" name="ademail"
				id="exampleFormControlInput1" placeholder="이메일을 입력해 주세요"required>
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
				인증번호 </label> <input type="text" class="form-control" "
				id="exampleFormControlInput1" placeholder="인증번호를 입력해 주세요">
		</div>
	</div>



	<div class="row justify-content-center my-3">
		<div class="d-grid gap-2 col-4 mx-auto">
		<input type="button" class="btn btn-primary" name="enter" value="ID 찾기" data-bs-toggle="modal" data-bs-target="#staticBackdrop"
				style="background-color: #e8853e; padding-top: 0.9rem; padding-bottom: 0.9rem; 
				box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5); border-color: #a3a3a3">
				
				<!-- 시작 -->
				<!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Understood</button>
      </div>
    </div>
  </div>
</div>
				
				
				
				
		<!-- 끝 -->		
		</div>
	</div>
</form>


</div>
