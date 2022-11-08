<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title></title>
<!-- cdn -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>

<body>
	<!-- <article> -->
		<div class="container" role="main">
			<h2>함께 산책(매칭)</h2>
			<br><br>
		<form name="form" id="form" role="form" method="post" action="${pageContext.request.contextPath}">
				<div class="mb-3">
					<label for="title">게시글 번호</label>
					<input type="text" class="form-control" name="title" id="title">
				</div>
				
				<div class="mb-3">
					<label for="title">반려인Id</label>
					<input type="text" class="form-control" name="title" id="title">
				</div>
				
				<div class="mb-3">
					<label for="title">비반려인Id</label>
					<input type="text" class="form-control" name="title" id="title">
				</div>
				
				<div class="mb-3">
					<label for="reg_id">날짜</label>
					<input type="text" class="form-control" name="reg_id" id="reg_id">
				</div>
				
				<div class="mb-3">
					<label for="reg_id">시간</label>
					<input type="text" class="form-control" name="reg_id" id="reg_id">
				</div>
				
				<div class="mb-3">
					<label for="reg_id">장소</label>
					<input type="text" class="form-control" name="reg_id" id="reg_id">
				</div>

			<div >
				<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>
			</div>
			</form>
		</div>
	
	<!-- cdn -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</body>
</html>


 