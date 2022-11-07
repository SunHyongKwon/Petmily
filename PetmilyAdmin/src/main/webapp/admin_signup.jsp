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
<title>ADMIN SIGNUP</title>
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
<script type="text/javascript">
    function test() {
      var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/
      var regExpName = /^[가-힣]+$/
      var regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i
    	
      var form = document.signupForm
      
      var p1 = document.getElementById('pw').value;
      var p2 = document.getElementById('pwc').value;
      var id =form.id.value
      var name =form.name.value
      var email =form.email.value
      
      if(!regExpId.test(id)){
	      alert("아이디는 문자로 시작해주세요.")
	      form.id.select()
	      return
   }
      if(p1.length < 6) {
              alert('입력한 비밀번호가 6글자 이상이어야 합니다.');
              return false;
          }
          
          if( p1 != p2 ) {
            alert("재확인하신 비밀번호가 불일치합니다.");
            return false;

          }
          if(!regExpName.test(name)){
   		   alert("이름은 한글만으로 입력해주세요.")
   		   form.name.select()
   		   return
       }	
          if(!regExpEmail.test(email)){
   		   alert("이메일을 확인해주세요.")
   		   form.email.select()
   		   return
   	   }
         
          form.submit()   
    }
  </script>
</head>

<body class="text-center">
	<main class="form-signin">
		<form name="signupForm" action="login.jsp" method="post">
			<img class="mb-4"
				src="${pageContext.request.contextPath}/images/LOGO.png" alt=""
				width="300" height="250">
			<h3>회원가입</h3>

			<div align="left">아이디</div>
			<div class="form-floating">
				<input type="text" class="form-control" id="id" name="id"
					placeholder="아이디 입력..."> <label for="id"
					style="color: rgb(230, 230, 230);">ID</label>
			</div>

			<div align="left">비밀번호</div>
			<div class="form-floating">
				<input type="password" class="form-control" id="pw" name="pw"
					placeholder="Password"> <label for="pw"
					style="color: rgb(230, 230, 230);">Password</label>
			</div>

			<div align="left">비밀번호 재확인</div>
			<div class="form-floating">
				<input type="password" class="form-control" id="pwc" name="pwc"
					placeholder="PasswordCheck"> <label for="pwc"
					style="color: rgb(230, 230, 230);">PasswordCheck</label>
			</div>

			<div align="left">이름</div>
			<div class="form-floating">
				<input type="text" class="form-control" id="name" name="name"
					placeholder="Name"> <label for="name"
					style="color: rgb(230, 230, 230);">Name</label>
			</div>

			<div align="left">이메일</div>
			<div class="form-floating">
				<input type="email" class="form-control" id="email" name="email"
					placeholder="Email"> <label for="email"
					style="color: rgb(230, 230, 230);">Email</label>
			</div>

			<div>
				<label> </label>
			</div>

			<input class="w-100 btn btn-lg btn-primary" type="button"
				value="가입하기" onclick="test()"
				style="background-color: rgb(232, 133, 62); border: rgb(232, 133, 62);">
		</form>



	</main>
</body>
</html>