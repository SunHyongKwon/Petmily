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
<style>
.form-label {
	font-weight: bold;
}

.form-control, .form-select {
	color: #a3a3a3;
	padding-top: 0.75rem;
	padding-bottom: 0.75rem;
	box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5);
	border-color: #a3a3a3;
	border-radius: 30px;
}

#list {
	
	color: #a3a3a3;
	border-radius : 10px;
	border-color : #a3a3a3;
	padding-top: 0.75rem;
	padding-bottom: 0.75rem;
	box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5);
}
</style>
</head>
<body>
	<div class="container">
		<!-- 동물 선택 -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-5">
				<label for="exampleFormControlInput1" class="form-label">반려동물을
					선택해주세요 </label> <select class="form-select">
					<option value="" disabled selected>동물 유형 선택</option>
					<option value="dog">강아지</option>
					<option value="cat">고양이</option>
					<option value="rabbit">토끼</option>
					<option value="turtle">거북이</option>
				</select>
			</div>
			<div class="col-2"></div>
		</div>

		<!-- 동물의 종 선택 -->
		<!-- 동물을 선택하면 동물 종 리스트로 가져와야 된다. -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">종이
					무엇인가요 </label> <select class="form-select">
					<option value="" disabled selected>종 선택</option>
					<option value="dog">강아지</option>
					<option value="cat">고양이</option>
					<option value="rabbit">토끼</option>
					<option value="turtle">거북이</option>
				</select>
			</div>
			<div class="col-2"></div>
		</div>

		<!-- 강아지 이름 -->
		<div class="row justify-content-center">
			<div class="col-3 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">이름
				</label> <input type="text" class="form-control"
					id="exampleFormControlInput1" placeholder="이름을 입력해 주세요">
			</div>
			<div class="col-3"></div>
			
		</div>
		
		<!-- 띄어쓰기 용 -->
		<div class ="row my-2"></div>
		
		<!-- 성별을 선택해주세요 -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3">
				<label for="exampleFormControlInput1" class="form-label">성별을
					선택해 주세요 </label>
			</div>
			<div class="col-2"></div>
		</div>
		<div class = "row justify-content-center">
				<div class="btn-group col-2" role="group" aria-label="Basic radio toggle button group">
				
					  <input type="radio" class="btn-check" name="pet_gender" id="btnradio1" autocomplete="off" checked>
					  <label class="btn btn-outline-dark" for="btnradio1">수컷</label>
					
					  <input type="radio" class="btn-check" name="pet_gender" id="btnradio2" autocomplete="off">
					  <label class="btn btn-outline-dark" for="btnradio2">암컷</label>
					
				</div>
				
				<div class="col-3"></div>
				
				<button class="btn btn-warning col-1 align-self-center"
				type="button">등록</button>
		</div>
		
		<!-- 등록한 거 밑에 띄우기 -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-5">
				<label for="exampleFormControlInput1" class="form-label">등록 정보 확인 </label>
			</div>
			<div class="col-2"></div>
		</div>
		
		<!-- 등록 정보 확인 -->
		<!-- 등록 버튼 누를 시 요런 형태로 들어오게 된다. -->
		<div class = "row justify-content-center">
			<div class = "col-6 border" id="list">
				<table class = "table text-center">
					<tbody>
						<tr>
							<th scope = "row">1</th>
							<!-- 여기부터 -->
							<td>초코</td>
							<td>먼치킨</td>
							<td>고양이</td>
							<td>암컷</td>
							<!-- 여기까지가 등록정보 들어오는 곳 -->
							<!-- 누르면 삭제할 수 있게 onclick 함수 같은 거 넣어줘야 됨 -->
							<td><i class="bi bi-trash"></i><td>
						</tr>
						<tr>
							<th scope = "row">2</th>
							<td>밥풀</td>
							<td>푸들</td>
							<td>강아지</td>
							<td>수컷</td>
							<td><i class="bi bi-trash"></i><td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		
		<div class = "row my-5"></div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>