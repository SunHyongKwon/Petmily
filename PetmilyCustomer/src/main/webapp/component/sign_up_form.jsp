<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
		
	$(document).ready(function() {
		
		$("input[name=utype]").click(function() {
			var type = $(this).val()

			if (type == 'companion') {
				$('#new-form').show()
			}

			if (type == 'unaccompanion') {
				$('#new-form').hide()
			}
		})
		
		$('#upw').keyup(function(){
			var pw = $('#upw').val().trim();
			
			var num = pw.search(/[0-9]/g);
			 var eng = pw.search(/[a-z]/ig);
			 var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

			 if(pw.length < 8 || pw.length > 20 || pw.search(/\s/) != -1 || num < 0 || eng < 0 || spe < 0 ){
				 $("label[for='pw_form']").text("비밀번호는 8글자 이상 20글자 이하이며 숫자 영문 특수문자를 하나 이상은 포함해야합니다.");
				 $("label[for='pw_form']").css("color","red");
			  	
			 }else {
				 $("label[for='pw_form']").text("사용하실 수 있는 비밀번호 입니다.");
				 $("label[for='pw_form']").css("color","blue");
				 $('#pw_form_check').val('available');
			 }

			
		})
		
		$('#upw_check').keyup(function(){
			var upw = $('#upw').val().trim();
			var upw_check = $('#upw_check').val().trim();
			
			if(upw == upw_check){
				$("label[for='pw_overlap_status']").text("비밀번호가 일치합니다.");
				$("label[for='pw_overlap_status']").css("color","blue");
			}else{
				$("label[for='pw_overlap_status']").text("비밀번호가 일치하지 않습니다.");
				$("label[for='pw_overlap_status']").css("color","red");
			}
			
		})

		
		$('#email_check').click(function(){
		   
		       var uemail = $('#uemail').val();
		        
		       if(uemail=="")
		      	{
				alert("이메일을 입력해주세요");
		       }
		       else
		       {
		    	   var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		    	   if(!regExp.test($('#uemail').val())){
		    		   alert('이메일 형식에 맞지 않습니다.');
		    		   $('#uemail').val('');
		    	   }else{
			    	   alert('이메일 전송중입니다.이메일 전송 완료 알람이 뜰 떄까지 기다려주세요.');
			    	   
			           $.ajax({
			              url:'http://localhost:8080/PetmilyCustomer/Email2',
			              type:'POST',
			              data:{uemail : uemail},
			              success:function(response)
			              {
			                $('#email_certify_num').attr('value',response);
			                alert('이메일 전송이 완료되었습니다.');
			              }
			           });
		    	   }
		       }
		        
			}); 

	})
	
	// 회원가입 양식 체크
	function complete() {
		// 공백 체크
		if($('#uid').val().trim() == ""){
			alert("id를 입력해주세요");
			focus($('#uid'));
			var offset = $("#uid").offset(); 
			$("html, body").animate({scrollTop: offset.top},200); 
			return;
		}
		
		if($('#upw').val().trim() == ""){
			alert("pw를 입력해주세요");
			focus($('#upw'));
			var offset = $("#upw").offset(); 
			$("html, body").animate({scrollTop: offset.top},200); 
			return;
		}
		
		if($('#uname').val().trim() == ""){
			alert("name를 입력해주세요");
			focus($('#uname'));
			var offset = $("#uname").offset(); 
			$("html, body").animate({scrollTop: offset.top},200); 
			return;
		}
		
		if($('#unickname').val().trim() == ""){
			alert("unickname를 입력해주세요");
			focus($('#unickname'));
			var offset = $("#unickname").offset(); 
			$("html, body").animate({scrollTop: offset.top},200); 
			return;
		}
		
		if($('#uphone').val().trim() == ""){
			alert("uphone를 입력해주세요");
			focus($('#uphone'));
			var offset = $("#uphone").offset(); 
			$("html, body").animate({scrollTop: offset.top},200); 
			return;
		}
		
		if($('#uemail').val().trim() == ""){
			alert("uemail를 입력해주세요");
			focus($('#uemail'));
			var offset = $("#uemail").offset(); 
			$("html, body").animate({scrollTop: offset.top},200); 
			return;
		}
		
		if($('#uaddress_basic').val().trim() == ""){
			alert("주소를 입력해주세요");
			focus($('#uaddress_basic'));
			var offset = $("#uaddress_basic").offset(); 
			$("html, body").animate({scrollTop: offset.top},200); 
			return;
		}
		
		if($('#uaddress_detail').val().trim() == ""){
			alert("상세주소를 입력해주세요");
			focus($('#uaddress_detail'));
			var offset = $("#uaddress_detail").offset(); 
			$("html, body").animate({scrollTop: offset.top},200); 
			return;
		}
		
		var regExp2 = /^[a-z]+[a-z0-9]{5,19}$/g;
		
		if(!regExp2.test($('#uid').val())){
			alert('아이디 형식에 맞지 않습니다.');
			focus($('#uid'));
			var offset = $("#uid").offset(); 
			$("html, body").animate({scrollTop: offset.top},200); 
			$('#uid').val('');
			return;
		}
		
		// 아이디 중복확인
		if($('#id_overlap_check').val() == "unavailable"){
			alert('이미 존재하는 아이디입니다.');
			focus($('#uid'));
			var offset = $("#uid").offset(); 
			$("html, body").animate({scrollTop: offset.top},200); 
			$('#uid').val('');
			return;
		}
		
		// 비밀번호 형식이 맞는지 확인
		if($('#pw_form_check').val() == ""){
			alert('비밀번호가 형식에 맞지 않습니다.');
			focus($('#upw'));
			var offset = $("#upw").offset(); 
			$("html, body").animate({scrollTop: offset.top},200); 
			$('#upw').val('');
			return;
		}
		
		// 비밀번호 확인 똑같은지 체크
		if($('label[for="pw_overlap_status"]').text() == "비밀번호가 일치하지 않습니다."){
			alert('비밀번호 확인이 비밀번호와 일치하지 않습니다.');
			focus($('#upw_check'));
			var offset = $("#upw_check").offset(); 
			$("html, body").animate({scrollTop: offset.top},200); 
			$('#upw_check').val('');
			return;
		}
		
		// 이메일 인증번호가 일치하는지 확인
		var insert_num = $('#ucertify_num').val(); 
		var answer = $('#email_certify_num').val();
		if(insert_num != answer){
			alert("인증번호가 틀렸습니다. 다시 확인해 주세요.");
			focus($('#ucertify_num'));
			var offset = $("#ucertify_num").offset(); 
			$("html, body").animate({scrollTop: offset.top},200); 
			return;
		}
		
		// 핸드폰 번호 양식 맞는지
		var regExp = /^\d{3}-\d{3,4}-\d{4}$/;
		
		if(!regExp.test($('#uphone').val())){
			alert("010-####-#### 형식으로 작성해주세요");
			focus($('#uphone'));
			var offset = $("#uphone").offset(); 
			$("html, body").animate({scrollTop: offset.top},200); 
			return;
		}
		
		if($('input[name=utype]:checked').val() == 'companion'){
			
			var len = $('#register_table >tbody tr').length;
			
			if(len < 1){
				alert("반려인으로 선택하실경우 한마리 이상의 반려동물을 등록해주셔야 합니다.");
				focus($('#pstype'));
				var offset = $("#pstype").offset(); 
				$("html, body").animate({scrollTop: offset.top},200); 
				return;
			}
		}
			
		document.signup.submit();

	}
	
	function registerCheckFunction(){
		var uid = $('#uid').val();
		
		var regExp2 = /^[a-z]+[a-z0-9]{5,19}$/g;
		
		if(!regExp2.test($('#uid').val())){
			alert('아이디 형식에 맞지 않습니다.');
			focus($('#uid'));
			return;
		}
		
		$.ajax({
			type : 'POST',
			url : 'http://localhost:8080/PetmilyCustomer/SignupidCheck',
			data : {uid , uid},
			success:function(result){
				
				if(result == 1){
					$("label[for='id_overlap_status']").text("사용가능한 아이디 입니다.");
					$("label[for='id_overlap_status']").css("color","blue");
					$('#id_overlap_check').attr('value','available');
					$('#uid').attr("readonly",true);
				}else{
					$("label[for='id_overlap_status']").text("이미 존재하는 아이디 입니다.");
					$("label[for='id_overlap_status']").css("color","red");
					$('#id_overlap_check').attr('value','unavailable');
					
				}
				
				
				 
			}
			
			
		});
		
		
	}
	

	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var roadAddr = data.roadAddress; // 도로명 주소 변수
				var extraRoadAddr = ''; // 참고 항목 변수

				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
					extraRoadAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if (data.buildingName !== '' && data.apartment === 'Y') {
					extraRoadAddr += (extraRoadAddr !== '' ? ', '
							+ data.buildingName : data.buildingName);
				}
				// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				if (extraRoadAddr !== '') {
					extraRoadAddr = ' (' + extraRoadAddr + ')';
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById("uaddress_basic").value = roadAddr;

			}
		}).open();
	}
	
	

</script>

<div class="container">
	<form action="sign_up.do" name="signup" method="post"
		enctype="multipart/form-data">
		<!-- 선택된 사진 보이는 곳 -->
		<div class="row jstify-content-center">
			<div class="text-center gy-1">
				<img src="user/profile_sample.png" width="300"
					height="300" class="rounded-circle" alt="사진 선택시 변경" id="blah">
			</div>
		</div>

		<!-- 사진 선택 버튼 -->
		<div class="row justify-content-center">
			<div class="col-4 my-3">
				<div class="input-group">
					<label class="input-group-text" for="inputGroupFile01">사진
						선택</label> <input type="file" class="form-control" name="file"
						accept="image/*"
						onchange="document.getElementById('blah').src = window.URL.createObjectURL(this.files[0])"
						value="사진선택">
				</div>
			</div>
		</div>

		<!-- ID -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-5">
				<label for="uid_label" class="form-label">ID </label>
				<label for="uid_regexp" class="form-label" style="color: #a3a3a3; padding-left : 2rem;">영문자로 시작하는 영문자 또는 숫자 6 ~ 20자 </label>
				 <input
					type="text" class="form-control" name="uid" id="uid"
					placeholder="아이디를 입력해 주세요"> <label for="id_overlap_status"
					class="form-label"> </label>
			</div>
			<button class="btn btn-warning col-1 gy-2 align-self-center"
				type="button" id="uid_check" onclick="registerCheckFunction();"
				style="margin-top: 2.5rem; padding-top: 0.7rem; padding-bottom: 0.7rem;">중복
				체크</button>
			<div class="col-1"></div>
		</div>

		<!-- 중복 체크용 히든 -->
		<input type="hidden" id="id_overlap_check">

		<!-- PW -->
		<div class="row justify-content-center">
			<div class="col-4 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">비밀번호
				</label> 
				<label for="upw_regexp" class="form-label" style= "color: #a3a3a3; padding-left : 1rem;">8 ~ 20자 영문, 숫자, 특수문자를 최소 한가지씩 조합 </label>
				<input type="password" class="form-control" name="upw" id="upw"
					placeholder="비밀번호를 입력해 주세요"> <label for="pw_form"
					class="form-label"> </label>
			</div>
			<div class="col-2 gy-2"></div>
		</div>

		<!-- 비밀번호가 맞는 형식인지 확인하기 위한 hidden -->
		<input type="hidden" id="pw_form_check">

		<!-- PW 체크 -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">비밀번호
					확인 </label> <input type="password" class="form-control" id="upw_check"
					placeholder="한번 더 입력해 주세요"> <label for="pw_overlap_status"
					class="form-label"> </label>
			</div>
			<div class="col-2 gy-2"></div>
		</div>

		<!-- 유저 이름 -->
		<div class="row justify-content-center ">
			<div class="col-3 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">이름
				</label> <input type="text" class="form-control" name="uname" id="uname"
					placeholder="이름을 입력해 주세요">
			</div>
			<div class="col-3 gy-2"></div>
		</div>

		<!-- 닉네임  -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">닉네임
				</label> <input type="text" class="form-control" name="unickname"
					id="unickname" placeholder="닉네임을 입력해 주세요" value="${kakao.name }">
			</div>
			<div class="col-2 gy-2"></div>
		</div>

		<!-- 이메일 -->
		<div class="row justify-content-center ">
			<div class="col-5 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">이메일
				</label> 
				<label for="upw_regexp" class="form-label" style="color: #a3a3a3; padding-left : 2rem;">예시 ) petmily22@gmail.com 또는 petmily22@naver.com </label>
				<input type="email" class="form-control" name="uemail" id="uemail"
					placeholder="이메일을 입력해 주세요" value="${kakao.email }">
			</div>
			<!-- 이메일 인증 버튼 -->
			<button class="btn btn-warning col-1 gy-2 align-self-center"
				type="button" id="email_check"
				style="margin-top: 1.5rem; padding-top: 0.7rem; padding-bottom: 0.7rem;">인증</button>
		</div>

		<!-- 이메일 인증번호  -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">이메일
					인증번호 </label> <input type="text" class="form-control" name="ucertify_num"
					id="ucertify_num" placeholder="인증번호를 입력해 주세요">
			</div>
			<div class="col-2 gy-2"></div>
		</div>

		<!-- 받아온 이메일 인증번호 -->
		<input type="hidden" id="email_certify_num">

		<!-- 휴대폰 -->
		<div class="row justify-content-center ">
			<div class="col-5 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">휴대폰
					번호 </label>
					<label for="upw_regexp" class="form-label" style="color: #a3a3a3; padding-left : 2rem;"> 예시 ) 010-1234-5678 하이픈 포함 </label>
					 <input type="tel" class="form-control" name="uphone"
					id="uphone" placeholder="번호를 입력해 주세요">
			</div>
			<div class="col-1 gy-2"></div>
		</div>

		<!-- 주소 검색 do 이름 : address_search.do -->
		<!-- 주소 -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">주소
				</label> <input type="text" class="form-control" name="uaddress_basic"
					id="uaddress_basic" placeholder="주소를 입력해 주세요">
			</div>
			<!-- 주소 검색 버튼 -->
			<button class="btn btn-warning col-1 gy-2 align-self-center"
				type="button" id="address_search"
				onclick="sample4_execDaumPostcode()"
				style="margin-top: 1.5rem; padding-top: 0.7rem; padding-bottom: 0.7rem;">검색</button>
			<div class="col-1 gy-2"></div>
		</div>

		<!-- 상세주소 입력 -->
		<div class="row justify-content-center ">
			<div class="col-6 mb-3">
				<input type="text" class="form-control" name="uaddress_detail"
					id="uaddress_detail" placeholder="상세 주소를 입력해 주세요">
			</div>
		</div>

		<!-- 회원유형 -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-0">
				<label for="exampleFormControlInput1" class="form-label">회원
					유형 </label>
			</div>
			<div class="col-2"></div>
		</div>

		<!-- 회원유형 선택 버튼 -->
		<div class="row justify-content-center ">
			<div class="col-3 mb-3 gy-2">
				<input type="radio" class="btn-check" name="utype" id="type1"
					autocomplete="off" value="companion"> <label
					class="btn mb-3 gy-2" for="type1"
					style="box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5); width: 100%;">
					<img src="component/images/companion.png"
					style="width: 6rem; height: 6rem; margin-bottom: 1rem; margin-top: 1rem;">
					<h4>반려인</h4>
				</label>
			</div>
			<div class="col-3 mb-3 gy-2">
				<input type="radio" class="btn-check" name="utype" id="type2"
					autocomplete="off" value="unaccompanion" checked> <label
					class="btn mb-3 gy-2" for="type2"
					style="box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5); width: 100%;">
					<img src="component/images/becompanion.png"
					style="width: 6rem; height: 6rem; margin-bottom: 1rem; margin-top: 1rem;">
					<h4>비반려인</h4>
				</label>
			</div>
		</div>

		<!-- 반려인 눌렀을 때 반려인 양식 추가로 보여주기 -->
		<div id="new-form" style="display: none">
			<jsp:include page="sign_up_companion.jsp"></jsp:include>
		</div>


		<!-- 가입하기 버튼 -->
		<div class="row justify-content-center ">
			<button class="btn btn-warning col-6 gy-5" type="button"
				onclick="complete()">가입하기</button>
		</div>

		<div class="row justify-content-center" style="height: 4rem"></div>
	</form>
</div>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>
