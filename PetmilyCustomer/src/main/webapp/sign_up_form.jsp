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
</head>
<body>
	<div class="container">
		<div class="row jstify-content-center">
			<div class="text-center gy-3">
				<img src="https://picsum.photos/200/200/?random"
					class="rounded-circle" alt="...">
			</div>
		</div>
		<div class="row justify-content-center">
			<button class="btn btn-warning col-2 gy-3" type="button"
				style="width: 13%">
				<img src="img/camera.png"
					style="width: 1.8rem; height: 1.8rem; margin-right: 0.6rem">사진
				선택하기
			</button>
		</div>
		<div class="row justify-content-center ">
			<!-- text field + 제목 -->
			<div class="col-4 mb-3 gy-5">
				<label for="exampleFormControlInput1" class="form-label">ID
				</label> <input type="text" class="form-control"
					id="exampleFormControlInput1" placeholder="아이디를 입력해 주세요"
					value="${kakao.id }">
			</div>
			<div class="col-2"></div>
		</div>
		<div class="row justify-content-center ">
			<!-- text field + 제목 -->
			<div class="col-4 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">비밀번호
				</label> <input type="password" class="form-control"
					id="exampleFormControlInput1" placeholder="비밀번호를 입력해 주세요">
			</div>
			<div class="col-2 gy-2"></div>
		</div>
		<div class="row justify-content-center ">
			<!-- text field + 제목 -->
			<div class="col-4 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">비밀번호
					확인 </label> <input type="password" class="form-control"
					id="exampleFormControlInput1" placeholder="한번 더 입력해 주세요">
			</div>
			<div class="col-2 gy-2"></div>
		</div>
		<div class="row justify-content-center ">
			<!-- text field + 제목 -->
			<div class="col-3 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">이름
				</label> <input type="text" class="form-control"
					id="exampleFormControlInput1" placeholder="이름을 입력해 주세요">
			</div>
			<div class="col-3 gy-2"></div>
		</div>
		<div class="row justify-content-center ">
			<!-- text field + 제목 -->
			<div class="col-4 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">닉네임
				</label> <input type="text" class="form-control"
					id="exampleFormControlInput1" placeholder="닉네임을 입력해 주세요"
					value="${kakao.name }">
			</div>
			<div class="col-2 gy-2"></div>
		</div>
		<div class="row justify-content-center ">
			<!-- text field + 제목 -->
			<div class="col-5 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">이메일
				</label> <input type="email" class="form-control"
					id="exampleFormControlInput1" placeholder="이메일을 입력해 주세요"
					value="${kakao.email }">
			</div>
			<button class="btn btn-warning col-1 gy-2 align-self-center" type="button"
				style="margin-top: 1.5rem; padding-top : 0.7rem; padding-bottom : 0.7rem;">인증</button>
		</div>
		<div class="row justify-content-center ">
			<!-- text field + 제목 -->
			<div class="col-5 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">휴대폰
					번호 </label> <input type="tel" class="form-control"
					id="exampleFormControlInput1" placeholder="번호를 입력해 주세요">
			</div>
			<div class="col-1 gy-2"></div>
		</div>
		<div class="row justify-content-center ">
			<!-- text field + 제목 -->
			<div class="col-4 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">주소
				</label> <input type="text" class="form-control"
					id="exampleFormControlInput1" placeholder="주소를 입력해 주세요">
			</div>
			<button class="btn btn-warning col-1 gy-2 align-self-center" type="button"
				style="margin-top: 1.5rem; padding-top : 0.7rem; padding-bottom : 0.7rem;">검색</button>
			<div class="col-1 gy-2"></div>
		</div>
		<div class="row justify-content-center ">
			<!-- text field + 제목 -->
			<div class="col-6 mb-3">
				<input type="text" class="form-control"
					id="exampleFormControlInput1" placeholder="상세 주소를 입력해 주세요">
			</div>
		</div>
		
		<div class="row justify-content-center ">
			<!-- text field + 제목 -->
			<button class="btn btn-warning col-6 gy-5" type="button">가입하기</button>
		</div>
		
		<div class="row justify-content-center" style="height:4rem">
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>