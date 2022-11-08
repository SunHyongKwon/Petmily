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
					<label for="title">제목</label>
					<input type="text" class="form-control" name="title" id="title">
				</div>
				
				<div class="mb-3">
					<label for="title">작성자</label>
					<input type="text" class="form-control" name="title" id="title">
				</div>
				<div>
				Step 선택<br>
				<input type="radio" name="step" value="Step1" checked="checked">Step1 &nbsp;&nbsp;&nbsp;
				<input type="radio" name="step" value="Step2" checked="checked">Step2 &nbsp;&nbsp;&nbsp;
				<input type="radio" name="step" value="Step3" checked="checked">Step3 &nbsp;&nbsp;&nbsp;
				<input type="radio" name="step" value="Step4" checked="checked">Step4 &nbsp;&nbsp;&nbsp;
				<input type="radio" name="step" value="Step5" checked="checked">Step5
				</div>
				<br>
				
				<div class="mb-3">
  					<label for="formFile" class="form-label">File Upload</label>
  					<input class="form-control" type="file" id="formFile">
				</div>

				<div class="mb-3">
					<label for="content">내용</label>
					<textarea class="form-control" rows="5" name="content" id="content"></textarea>
				</div>
			<div >
				<button type="button" class="btn btn-sm btn-primary" id="btnSave">수정</button>
				<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>
			</div>
			</form>
		</div>
	
	<!-- cdn -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</body>
</html>

