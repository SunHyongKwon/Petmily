<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script>
		
	$(document).ready(function() {
		
		$("input[name=utype]").click(function() {
			var type = $(this).val()

			if (type == 'companion') {
				$('#right').show()
			}

			if (type == 'unaccompanion') {
				$('#wrong').hide()
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

		
		
		
		
		document.signup.submit();

	}
	
	function quizCheckFunction(){
		var uid = $('#uid').val();
			
		$.ajax({
			type : 'POST',
			url : 'http://localhost:8080/PetmilyCustomer/quizcheck.do',
			data : {uid , uid},
			success:function(result){
				
				if(result == 1){
					$('#right').show()
				}else{
					$('#wrong').show()
					
				}
				
				
				 
			}
			
			
		});
		
		
	}
	
	
	

</script>
	<!-- step 이름 -->
	<div class="container">
		<div class="row">
			<div class="col">
				<div>
				<iframe width="560" height="315" src=${lecture_view.lvideolink } title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				</div>
				
				
				<h1>
					<strong>챕터 :${lecture_view.lchapter }</strong>
				</h1>
				<br>
				<br>
				<!-- 영상 이름 -->
				<h3>
					<strong>제목 : ${lecture_view.ltitle }</strong>
				</h3>
			
				
				
				<!-- 영상 설명 -->
				<h6>
					내용 :${lecture_view.lcontent }
				</h6>
				
				<!-- 영상 주석  -->
				<div class = "container-fluid">
					<div class = "row ">
						<p class= "justify-content-end">영상 출처 : ${lecture_view.lvideolink }출처</p>
					</div>
				</div>
			</div>
			<div class="col">
				<form action="quizcheck.do">
					<div class="card border-info">
						  <div class="card-header">
						    퀴즈 풀기 도전!(5문제)
						  </div>
						  <div class="card-body">
							
							   <h5 class="card-title">Q1. 화장실을 가르쳐야 할까요?</h5>
								    <input type="radio" name="q1" value="1">예
								    <input type="radio" name="q1" value="2">아니오
							
							    <h5 class="card-title">Q2. 입양후 얼마나 같이 자야할까?</h5>
								    <input type="radio" name="q2" value="1">1일
								    <input type="radio" name="q2" value="2">1달
							
							    <h5 class="card-title">Q3. 입양첫날 금지할것은?</h5>
								    <input type="radio" name="q3" value="1">밥주기
								    <input type="radio" name="q3" value="2">목욕시키기
						    <br>
						    <p class="card-text mt-3">문제를 모두 푼 뒤에 제출하기 버튼을 눌러주세요.</p>
						    <input type="submit" class="btn btn-primary" value="제출하기">
						  </div>
					</div>
				</form>
				
				<!-- 다맞추면보여주는것 -->
		<div id="right" style="display: none">
			정답입니다.
		</div>
				<!-- 틀리면 보여주는것 -->
		<div id="wrong" style="display: none">
			틀렸습니다 다시풀어주세요
		</div>
			</div>
		</div>
	</div>
	
	
