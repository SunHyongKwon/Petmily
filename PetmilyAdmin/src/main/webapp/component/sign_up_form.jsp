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



.filebox input[type="file"] {
 
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0;
}

.filebox label {
  display: inline-block;
  padding: .5em .75em;
  color: #999;
  font-size: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #fdfdfd;
  cursor: pointer;
  border: 1px solid #ebebeb;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
}

/* named upload */
.filebox .upload-name {
  display: inline-block;
  padding: .5em .75em;
  font-size: inherit;
  font-family: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #f5f5f5;
  border: 1px solid #ebebeb;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
  -webkit-appearance: none; /* 네이티브 외형 감추기 */
  -moz-appearance: none;
  appearance: none;
}

/* imaged preview */
.filebox .upload-display {
  margin-bottom: 5px;
}



.filebox .upload-thumb-wrap {
  
}

.filebox .upload-display img {
border-radius: 50%!important;
height: 150px;
width: 150px;
  
  
  

}

.filebox.bs3-primary label {
  color: #000000;
  background-color: #E8853E;
  border-color: #E8853E;
}

</style>

<script type="text/javascript">
$(document).ready(function(){
	   var fileTarget = $('.filebox .upload-hidden');

	    fileTarget.on('change', function(){
	        if(window.FileReader){
	            // 파일명 추출
	            var filename = $(this)[0].files[0].name;
	        } 

	        else {
	            // Old IE 파일명 추출
	            var filename = $(this).val().split('/').pop().split('\\').pop();
	        };

	        $(this).siblings('.upload-name').val(filename);
	    });

	    //preview image 
	    var imgTarget = $('.preview-image .upload-hidden');

	    imgTarget.on('change', function(){
	        var parent = $(this).parent();
	        parent.children('.upload-display').remove();

	        if(window.FileReader){
	            //image 파일만
	            if (!$(this)[0].files[0].type.match(/image\//)) return;
	            
	            var reader = new FileReader();
	            reader.onload = function(e){
	                var src = e.target.result;
	                parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
	            }
	            reader.readAsDataURL($(this)[0].files[0]);
	        }

	        else {
	            $(this)[0].select();
	            $(this)[0].blur();
	            var imgSrc = document.selection.createRange().text;
	            parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

	            var img = $(this).siblings('.upload-display').find('img');
	            img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
	        }
	    });
	});
	
	/* $(document).ready(function() {

		$("input[name=utype]").click(function() {
			var type = $(this).val()

			if (type == 'companion') {
				$('#new-form').show()
			}

			if (type == 'becompanion') {
				$('#new-form').hide()
			}
		}) */

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
	/* })

	function submit() {
		document.signup.submit()

	} */
	
	
	
	
</script>

	<div class="container">
		<form action="sign_up_action.do" name="signup">
			
			
			<!-- 선택된 사진 보이는 곳 -->
			
				
				<div class="filebox bs3-primary preview-image mx-auto">
					<br>
		              <input class="upload-name" value="파일선택" disabled="disabled" name="adfilepath">
					
		              <label for="input_file">프로필 사진 선택하기</label> 
		              <input type="file" id="input_file" class="upload-hidden"> 
		        </div>
		        
		


			<!-- 사진 선택 버튼 -->
			
			

			<!-- ID -->
			<div class="row justify-content-center ">
				<div class="col-4 mb-3 gy-5">
					<label for="exampleFormControlInput1" class="form-label">ID
					</label> <input type="text" class="form-control" name="adid"
						id="exampleFormControlInput1" placeholder="아이디를 입력해 주세요"
						value="${kakao.id }">
				</div>
				<div class="col-2"></div>
			</div>

			<!-- PW -->
			<div class="row justify-content-center ">
				<div class="col-4 mb-3 gy-2">
					<label for="exampleFormControlInput1" class="form-label">비밀번호
					</label> <input type="password" class="form-control" name="adpw"
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
					</label> <input type="text" class="form-control" name="adname"
						id="exampleFormControlInput1" placeholder="이름을 입력해 주세요">
				</div>
				<div class="col-3 gy-2"></div>
			</div>

			

			<!-- 이메일 -->
			<div class="row justify-content-center ">
				<div class="col-5 mb-3 gy-2">
					<label for="exampleFormControlInput1" class="form-label">이메일
					</label> <input type="email" class="form-control" name="ademail"
						id="exampleFormControlInput1" placeholder="이메일을 입력해 주세요"
						value="${kakao.email }">
				</div>
				<!-- 이메일 인증 버튼 -->
				<button class="btn btn-warning col-1 gy-2 align-self-center"
					type="button" id="email_check"
					style="margin-top: 1.5rem; padding-top: 0.7rem; padding-bottom: 0.7rem;">인증</button>
			</div>
			
			<!-- 이메일 인증번호  -->
			<div class="row justify-content-center ">
				<div class="col-4 mb-3 gy-2">
					<label for="exampleFormControlInput1" class="form-label">이메일 인증번호
					</label> <input type="text" class="form-control" name="emailcheck"
						id="exampleFormControlInput1" placeholder="인증번호를 입력해 주세요"
						>
				</div>
				<div class="col-2 gy-2"></div>
			</div>

			<!-- 휴대폰 -->
			<div class="row justify-content-center ">
				<div class="col-5 mb-3 gy-2">
					<label for="exampleFormControlInput1" class="form-label">휴대폰
						번호 </label> <input type="tel" class="form-control" name="adphone"
						id="exampleFormControlInput1" placeholder="번호를 입력해 주세요">
				</div>
				<div class="col-1 gy-2"></div>
			</div>

			<!-- 주소 -->
			


			<!-- 가입하기 버튼 -->
			<div class="row justify-content-center ">
				
					<input type="submit" value="가입하기"
					class="btn btn-warning col-6 gy-5">

			
			</div>

			<div class="row justify-content-center" style="height: 4rem"></div>
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
