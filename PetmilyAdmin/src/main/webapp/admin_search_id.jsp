<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<style>
   
   html,
   body {
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
   
   .form-signin input[type="adname"] {
     margin-bottom: -1px;
     border-bottom-right-radius: 0;
     border-bottom-left-radius: 0;
   }
   
   .form-signin input[type="adphone"] {
     margin-bottom: 10px;
     border-top-left-radius: 0;
     border-top-right-radius: 0;
   }

</style>
<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
</head>
<body class="text-center">
   <main class="form-signin">
      <form action="admin_search_id.jsp" method="post">
      
         <img class="mb-4" src="${pageContext.request.contextPath}/images/petmily_logo.png" alt="" width="200" height="200">
         <h1 class="h3 mb-3 fw-normal">아이디 찾기</h1>
         
         <div class="form-floating">
            <input type="text" class="form-control" id="adname" placeholder="이름">
            <label for="adname">이름</label>
         </div><br>
         <div class="form-floating">
            <input type="text" class="form-control" id="adphone" placeholder="휴대폰 번호">
            <label for="adphone">전화번호</label>
         </div><br>

         <button class="w-100 btn btn-lg btn-primary" type="submit" style="background-color: rgb(232,133,62); border: rgb(232,133,62);" >아이디 찾기</button><br>
         <p class="mt-5 mb-3 text-muted">&copy; 2022–2022</p>
      </form>
   </main>
   
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>