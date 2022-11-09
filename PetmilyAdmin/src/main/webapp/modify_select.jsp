<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
    function pw_check() {
      var regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i
    	
      var form = document.admin_mypage
      
      var ademail =form.ademail.value
    	
      var p1 = document.getElementById('pw').value;
      var p2 = document.getElementById('pwck').value;
   
      if(!regExpEmail.test(ademail)){
		   alert("이메일을 확인해주세요.")
		   form.ademail.select()
		   return
	   }
          if( p1 != p2 ) {
            alert("비밀번호불일치");
            return false;
          } else{
            alert("비밀번호가 일치합니다");
            form.submit()    
            return true;
          }
    }
  </script>
<body>
<form name="admin_mypage" action="mypage_modify.do"  method="get">
아이디<br>
${admin_content_view.adId}<br>
이름
<input type="text" name = "adname" value="${admin_content_view.adname}"><br>
이메일
<input type="text" name = "ademail" value="${admin_content_view.ademail}"><br>
비밀번호
<input type="hidden" id="pw" name = "pw" value="${admin_content_view.adpw}">
<input type="password" id="pwck" name = "pwck"><br>
<input type="button"  value="수정" onclick="pw_check()">
</form>   
</body>
</html>