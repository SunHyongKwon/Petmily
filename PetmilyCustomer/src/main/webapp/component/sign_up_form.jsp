<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.form-label {
	font-weight: bold;
}

.form-control {
	color: #a3a3a3;
	padding-top: 0.85rem;
	padding-bottom: 0.85rem;
	box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5);
	border-color: #a3a3a3;
	border-radius: 30px;
	height: 3.3rem;
}
</style>

<script>
	$(document).ready(function() {

		$("input[name=utype]").click(function() {
			var type = $(this).val()

			if (type == 'companion') {
				$('#new-form').show()
			}

			if (type == 'becompanion') {
				$('#new-form').hide()
			}
		})

		/* 이메일 인증 번호 받아오는 function
		$('#email_check').click(function(){
		   
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
		        
			}); */
			
		/* 이메일 인증 번호 받아오는 function
		$(document).ready(function() {
		 $('#이메일 인증 버튼 아이디 이름').click(function(){
			   
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

		/* 주소 api 연결 시켜주는 function
		$('#address_search').click(function(){
		   
		       var pstype=$('#pstype').val();
		        
		       if(pstype=="")
		      	{
				alert("동물 유형을 선택해 주세요")	 ;
		       }
		       else
		       {
		           $.ajax({
		              url:'주소검색 연결 api 주소',
		              type:'POST',
		              data:'pstype='+pstype,
		              dataType:"json",
		              success:function(response)
		              {
		                 
		                  
		              }
		           });
		       }
		        
			}); */
	})

	function submit() {
		document.signup.submit()

	}
</script>

	<div class="container">
		<form action="sign_up.do" name="signup">
			<!-- 선택된 사진 보이는 곳 -->
			<div class="row jstify-content-center">
				<div class="text-center gy-3">
					<img src="https://picsum.photos/200/200/?random"
						class="rounded-circle" alt="">
				</div>
			</div>

			<!-- 사진 선택 버튼 -->
			<div class="row justify-content-center">
				<button class="btn btn-warning col-2 gy-3" type="button"
					style="width: 17%">
					<i class="bi bi-camera"
						style="width: 2.2rem; height: 2.2rem; margin-right: 0.6rem"></i>사진
					선택하기
				</button>
			</div>

			<!-- ID -->
			<div class="row justify-content-center ">
				<div class="col-4 mb-3 gy-5">
					<label for="exampleFormControlInput1" class="form-label">ID
					</label> <input type="text" class="form-control" name="uid"
						id="exampleFormControlInput1" placeholder="아이디를 입력해 주세요"
						value="${kakao.id }">
				</div>
				<div class="col-2"></div>
			</div>

			<!-- PW -->
			<div class="row justify-content-center ">
				<div class="col-4 mb-3 gy-2">
					<label for="exampleFormControlInput1" class="form-label">비밀번호
					</label> <input type="password" class="form-control" name="upw"
						id="exampleFormControlInput1" placeholder="비밀번호를 입력해 주세요">
				</div>
				<div class="col-2 gy-2"></div>
			</div>

			<!-- PW 체크 -->
			<div class="row justify-content-center ">
				<div class="col-4 mb-3 gy-2">
					<label for="exampleFormControlInput1" class="form-label">비밀번호
						확인 </label> <input type="password" class="form-control"
						id="exampleFormControlInput1" placeholder="한번 더 입력해 주세요">
				</div>
				<div class="col-2 gy-2"></div>
			</div>

			<!-- 유저 이름 -->
			<div class="row justify-content-center ">
				<div class="col-3 mb-3 gy-2">
					<label for="exampleFormControlInput1" class="form-label">이름
					</label> <input type="text" class="form-control" name="uname"
						id="exampleFormControlInput1" placeholder="이름을 입력해 주세요">
				</div>
				<div class="col-3 gy-2"></div>
			</div>

			<!-- 닉네임  -->
			<div class="row justify-content-center ">
				<div class="col-4 mb-3 gy-2">
					<label for="exampleFormControlInput1" class="form-label">닉네임
					</label> <input type="text" class="form-control" name="unickname"
						id="exampleFormControlInput1" placeholder="닉네임을 입력해 주세요"
						value="${kakao.name }">
				</div>
				<div class="col-2 gy-2"></div>
			</div>

			<!-- 이메일 -->
			<div class="row justify-content-center ">
				<div class="col-5 mb-3 gy-2">
					<label for="exampleFormControlInput1" class="form-label">이메일
					</label> <input type="email" class="form-control" name="uemail"
						id="exampleFormControlInput1" placeholder="이메일을 입력해 주세요"
						value="${kakao.email }">
				</div>
				<!-- 이메일 인증 버튼 -->
				<button class="btn btn-warning col-1 gy-2 align-self-center"
					type="button" id="email_check"
					style="margin-top: 1.5rem; padding-top: 0.7rem; padding-bottom: 0.7rem;">인증</button>
			</div>

			<!-- 휴대폰 -->
			<div class="row justify-content-center ">
				<div class="col-5 mb-3 gy-2">
					<label for="exampleFormControlInput1" class="form-label">휴대폰
						번호 </label> <input type="tel" class="form-control" name="uphone"
						id="exampleFormControlInput1" placeholder="번호를 입력해 주세요">
				</div>
				<div class="col-1 gy-2"></div>
			</div>

			<!-- 주소 -->
			<div class="row justify-content-center ">
				<div class="col-4 mb-3 gy-2">
					<label for="exampleFormControlInput1" class="form-label">주소
					</label> <input type="text" class="form-control" name="uaddress_basic"
						id="exampleFormControlInput1" placeholder="주소를 입력해 주세요">
				</div>
				<!-- 주소 검색 버튼 -->
				<button class="btn btn-warning col-1 gy-2 align-self-center"
					type="button" id="address_search"
					style="margin-top: 1.5rem; padding-top: 0.7rem; padding-bottom: 0.7rem;">검색</button>
				<div class="col-1 gy-2"></div>
			</div>

			<!-- 상세주소 입력 -->
			<div class="row justify-content-center ">
				<div class="col-6 mb-3">
					<input type="text" class="form-control" name="uaddress_detail"
						id="exampleFormControlInput1" placeholder="상세 주소를 입력해 주세요">
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
						autocomplete="off" value="becompanion"> <label
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
					onclick="submit()">가입하기</button>
			</div>

			<div class="row justify-content-center" style="height: 4rem"></div>
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
