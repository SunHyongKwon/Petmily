<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://api.jquery.com/jQuery.ajax"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>

<script type="text/javascript">

	// code를 줘서 token으로 바꾸기 끌어오기 post 방식으로 필수 parameter들을 보내는 법 (ajax 동기식)
	function api(code){
		var grant_type = "authorization_code";
		var client_id = "c0adedd90ef6ae1146e57b65fcf48e85";
		var redirect_uri = "http://localhost:8080/PetmilyCustomer/sign_up_token.jsp";
		var client_secret = "KVcPxAefokHxNYI8wSKHbAVXWHYYRG8d";
		var code = code;
		
		$.post("https://kauth.kakao.com/oauth/token",{grant_type:grant_type, client_id:client_id, redirect_uri:redirect_uri, code:code, client_secret:client_secret},
				function(data){
			var access_token = data['access_token'];
			var tokenRequest = new XMLHttpRequest();
			
			tokenRequest.open("Post","http://localhost:8080/PetmilyCustomer/sign_up_kakao.do?access_token=" + access_token);
			/* tokenRequest.onreadystatechange = function(){
				if(tokenRequest.readyState == 4 && tokenRequest.status == 200){
					var result = tokenRequest.responseText;
				 
					if(result == 1){
						
						alert("shit");
					}else{
						
						alert("no shit");
					}
				}
			} */
			tokenRequest.send();
			

		});
		
	}
	
</script>
</head>
<%
	String code = request.getParameter("code");
%>

<body onload = "api('<%=code %>');">
abasdfasdf
	${hi }
</body>

</html>