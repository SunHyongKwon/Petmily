<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<style>
#myform fieldset{
    display: inline-block;
    direction: rtl;
    border:0;
}
#myform fieldset legend{
    text-align: right;
}
#myform input[type=radio]{
    display: none;
}
#myform label{
    font-size: 3em;
    color: transparent;
    text-shadow: 0 0 0 #f0f0f0;
}
#myform label:hover{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#myform label:hover ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#myform input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#reviewContents {
    width: 100%;
    height: 150px;
    padding: 10px;
    box-sizing: border-box;
    border: solid 1.5px #D3D3D3;
    border-radius: 5px;
    font-size: 16px;
    resize: none;
}
</style>
<body>
	<script type="text/javascript">
		function succes(){
			var form = document.reviewStar;

			form.submit();

		}
	</script>
	
	<div class="container" >
		<div class="row justify-content-center">
			<div class="text-center gy-3">
			<img class="rounded-circle" src="img/profile_dog.png" width="210px" height="210px">
			</div>
		</div>
		<div class="text-center ">
			<label style="font-size: 30px;"><strong><label style="color: #e8853e;">스마일맨</label>님과의 만남이 즐거우셨나요?</strong></label>
		</div>

		<div class="text-center">
			<form class="mb-3" name="reviewStar" action="test.do" id="myform" method="get">
				<fieldset>
					<input type="radio" name="reviewStar" value="5" id="rate1"><label
						for="rate1">★</label>
					<input type="radio" name="reviewStar" value="4" id="rate2"><label
						for="rate2">★</label>
					<input type="radio" name="reviewStar" value="3" id="rate3"><label
						for="rate3">★</label>
					<input type="radio" name="reviewStar" value="2" id="rate4"><label
						for="rate4">★</label>
					<input type="radio" name="reviewStar" value="1" id="rate5"><label
						for="rate5">★</label>
				</fieldset><br>
			
				<div>
					<label style="font-size: 20px; color: black;">의견을 자유롭게 적어 주세요!!</label>
				</div>
			
				<div>
					<div class="row justify-content-center my-4">
						<div class="col-6">
						<textarea class="form-control" type="text" id="reviewContents" name="content"
								placeholder="상대방에 대한 리뷰를 입력해주세요!!"></textarea>
						</div>
					</div>
				</div>
			</form>
				<div>
					<button class="btn" style="background-color: #e8853e; color: white;" onclick="succes()">완료</button>
				</div>
		</div>
	</div>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>	
</body>
</html>