<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

<style>
.form-label {
	font-weight: bold;
}

.form-control {
	color: #a3a3a3;
	padding-top: 0.75rem;
	padding-bottom: 0.75rem;
	box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5);
	border-color: #a3a3a3;
	border-radius: 30px;
}
</style>

<script>
	$(document).ready(function() {

		$("input[name=usertype]").click(function() {
			var type = $(this).val()
			
			if(type == 'companion'){
				$('#new-form').show()
			}
			
			if(type == 'becompanion'){
				$('#new-form').hide()
			}
		})
	})
</script>

</head>
<body>
	<div class="container">

		<!-- 선택된 사진 보이는 곳 -->
		<div class="row jstify-content-center">
			<div class="text-center gy-3">
				<img src="https://picsum.photos/200/200/?random"
					class="rounded-circle" alt="...">
			</div>
		</div>

		<!-- 사진 선택 버튼 -->
		<div class="row justify-content-center">
			<button class="btn btn-warning col-2 gy-3" type="button"
				style="width: 17%">
				<i class="bi bi-camera"
					style="width: 2.2rem; height: 2.2rem; margin-right: 0.6rem"></i>사진
				선택하기
			</button>
		</div>

		<!-- ID -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-5">
				<label for="exampleFormControlInput1" class="form-label">ID
				</label> <input type="text" class="form-control"
					id="exampleFormControlInput1" placeholder="아이디를 입력해 주세요"
					value="${kakao.id }">
			</div>
			<div class="col-2"></div>
		</div>

		<!-- PW -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">비밀번호
				</label> <input type="password" class="form-control"
					id="exampleFormControlInput1" placeholder="비밀번호를 입력해 주세요">
			</div>
			<div class="col-2 gy-2"></div>
		</div>

		<!-- PW 체크 -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">비밀번호
					확인 </label> <input type="password" class="form-control"
					id="exampleFormControlInput1" placeholder="한번 더 입력해 주세요">
			</div>
			<div class="col-2 gy-2"></div>
		</div>

		<!-- 유저 이름 -->
		<div class="row justify-content-center ">
			<div class="col-3 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">이름
				</label> <input type="text" class="form-control"
					id="exampleFormControlInput1" placeholder="이름을 입력해 주세요">
			</div>
			<div class="col-3 gy-2"></div>
		</div>

		<!-- 닉네임  -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">닉네임
				</label> <input type="text" class="form-control"
					id="exampleFormControlInput1" placeholder="닉네임을 입력해 주세요"
					value="${kakao.name }">
			</div>
			<div class="col-2 gy-2"></div>
		</div>

		<!-- 이메일 -->
		<div class="row justify-content-center ">
			<div class="col-5 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">이메일
				</label> <input type="email" class="form-control"
					id="exampleFormControlInput1" placeholder="이메일을 입력해 주세요"
					value="${kakao.email }">
			</div>
			<!-- 이메일 인증 버튼 -->
			<button class="btn btn-warning col-1 gy-2 align-self-center"
				type="button"
				style="margin-top: 1.5rem; padding-top: 0.7rem; padding-bottom: 0.7rem;">인증</button>
		</div>

		<!-- 휴대폰 -->
		<div class="row justify-content-center ">
			<div class="col-5 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">휴대폰
					번호 </label> <input type="tel" class="form-control"
					id="exampleFormControlInput1" placeholder="번호를 입력해 주세요">
			</div>
			<div class="col-1 gy-2"></div>
		</div>

		<!-- 주소 -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">주소
				</label> <input type="text" class="form-control"
					id="exampleFormControlInput1" placeholder="주소를 입력해 주세요">
			</div>
			<!-- 주소 검색 버튼 -->
			<button class="btn btn-warning col-1 gy-2 align-self-center"
				type="button"
				style="margin-top: 1.5rem; padding-top: 0.7rem; padding-bottom: 0.7rem;">검색</button>
			<div class="col-1 gy-2"></div>
		</div>

		<!-- 상세주소 입력 -->
		<div class="row justify-content-center ">
			<div class="col-6 mb-3">
				<input type="text" class="form-control"
					id="exampleFormControlInput1" placeholder="상세 주소를 입력해 주세요">
			</div>
		</div>

		<!-- 회원유형 -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-0">
				<label for="exampleFormControlInput1" class="form-label">회원
					유형 </label>
			</div>
			<div class="col-2"></div>
		</div>

		<!-- 회원유형 선택 버튼 -->
		<div class="row justify-content-center ">
			<div class="col-3 mb-3 gy-2">
				<input type="radio" class="btn-check" name="usertype" id="type1"
			autocomplete="off" value="companion"> 
			<label class="btn col-3 mb-3 gy-2" for="type1"
			style="box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5); width: 100%;">
				<img src="img/companion.png"
					style="width: 6rem; height: 6rem; margin-bottom: 1rem; margin-top: 1rem;">
					<h4>반려인</h4>
			</label>
			</div>
			<div class="col-3 mb-3 gy-2">
				<input type="radio" class="btn-check" name="usertype" id="type2"
			autocomplete="off" value="becompanion"> 
			<label class="btn col-3 mb-3 gy-2"
			for="type2" style="box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5); width: 100%;">
					<img src="img/becompanion.png"
						style="width: 6rem; height: 6rem; margin-bottom: 1rem; margin-top: 1rem;">
					<h4>비반려인</h4>
			</label>
			</div>
		</div>
			

		<!-- 반려인 눌렀을 때 반려인 양식 추가로 보여주기 -->
		<div id = "new-form" style="display:none">
			<jsp:include page="sign_up_companion.jsp"></jsp:include>
		</div>
		
		
		<!-- 가입하기 버튼 -->
		<div class="row justify-content-center ">
			<button class="btn btn-warning col-6 gy-5" type="button">가입하기</button>
		</div>

		<div class="row justify-content-center" style="height: 4rem"></div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>

</body>
</html>