<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<meta charset="UTF-8">
<title>ADMIN SEARCH PW</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<style>
html, body {
	height: 100%;
}

body {
	display: flex;
	align-items: center;
	padding-top: 40px;
	padding-bottom: 40px;
	background-color: #f5f5f5;
}

.form-signin {
	width: 100%;
	max-width: 330px;
	padding: 15px;
	margin: auto;
}

.form-signin .checkbox {
	font-weight: 400;
}

.form-signin .form-floating:focus-within {
	z-index: 2;
}

.form-signin input[type="email"] {
	margin-bottom: -1px;
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.form-signin input[type="password"] {
	margin-bottom: 10px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}
</style>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">


function
$(document).ready(function() {
 $('email_check').click(function(){
	   
        var pstype=$('#pstype').val();
         
        if(pstype=="")
       	{
			alert("동물 유형을 선택해 주세요")	 ;
        }
        else
        {
            $.ajax({
               url:'email_check.do',
               type:'POST',
               data:'pstype='+pstype,
               dataType:"json",
               success:function(response)
               {
                  
                   
               }
            });
        }
         
		});
})*/



</script>
  <link rel="shortcut icon" href="images/LOGO.png" />
</head>

<body>
	<main class="form-signin">
		<form name="adminsearchpw" action="#" method="post">

			<h3 class="text-center">비밀번호 찾기</h3>
			<br>
			<h6 class="text-center">인증을 통해 비밀번호를 찾아드립니다.</h6>
			<br>

			<div class="form-floating">
				<input type="text" class="form-control" id="id" name="id"
					placeholder="아이디 입력..."> <label for="id">아이디</label>
			</div>
			<div>
				<label> </label>
			</div>
			
			
			<div class="row">
			<div class="form-floating">
				<input type="text" class="form-control" id="email" name="email"
					placeholder="Email"> <label for="email">이메일 주소</label>
			</div>
			</div>
			<div align="right">
			<input type="button" value="인증번호" id="email_check"   > 
			</div>
		


			<div class="form-floating">
				<input type="text" class="form-control" id="certificationnumber"
					name="certificationnumber" placeholder="CertificationNumber">
				<label for="certificationnumber">인증번호</label>
			</div>
		
		

			<div>
				<label> </label>
			</div>
			<button class="w-100 btn btn-lg btn-primary" type="submit"
				style="background-color: rgb(232, 133, 62); border: rgb(232, 133, 62);">아이디
				찾기</button>
		</form>
	</main>
</body>
</html>
