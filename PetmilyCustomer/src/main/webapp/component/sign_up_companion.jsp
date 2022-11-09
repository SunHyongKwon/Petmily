<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.form-label {
	font-weight: bold;
}

.form-control, .form-select {
	color: #a3a3a3;
	padding-top: 0.75rem;
	padding-bottom: 0.75rem;
	box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5);
	border-color: #a3a3a3;
	border-radius: 30px;
}

#list {
	
	color: #a3a3a3;
	border-radius : 10px;
	border-color : #a3a3a3;
	padding-top: 0.75rem;
	padding-bottom: 0.75rem;
	box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5);
}
</style>


<script type="text/javascript">

    $(document).ready(function(){
       /* $('#pstype').change(function(){
    	   
        var pstype=$('#pstype').val();
         
        if(pstype=="")
       	{
			alert("동물 유형을 선택해 주세요")	 ;
        }
        else
        {
            $.ajax({
               url:'psbreeds_list.do',
               type:'POST',
               data:'pstype='+pstype,
               dataType:"json",
               success:function(response)
               {
                  for(var key in response){
                	  response[key]
                	  var option = $("option value="+response[key]+">"+response[key]+"/option");
                	  $('#psbreeds').append(option);
                  }
                   
               }
            });
        }
         
		}); */
		
		
       var i = 1;
       
       $('#register').click(function(){
    	 	var pstype = $('#pstype').val();
    	 	var psbreeds = $('#psbreeds').val();
    	 	var petname = $('#petname').val();
    	 	var petgender = $('input[name="petgender"]:checked').val();
    	   	
    	 	if(petgender == 'male'){
    	 		petgender = '수컷';
    	 	}else{
    	 		petgender = '암컷';
    	 	}
    	 	
    	 	var insertTr = "";
    	 	
    	 	insertTr += "<tr>";
    	 	insertTr += "<th scope = \"row\">"+i+"</th>";
    	 	insertTr += "<td>" + pstype + "</td>";
    	 	insertTr += "<td>" + psbreeds + "</td>";
    	 	insertTr += "<td>" + petname + "</td>";
    	 	insertTr += "<td>" + petgender + "</td>";
    	 	insertTr += "<td><button name=\"trash\" class=\"btn btn-outline-secondary\"><i class=\"bi bi-trash\"></i></button></td>";
    	 	insertTr += "</tr>";
    	 	$("#register_table").append(insertTr);
			i += 1;
       })
	
       
       /* 동적으로 할당된 것들은 이런식으로 만들어야 된다. */
       $(document).on("click","button[name=trash]",function(){ 
    	   /* 내가 클릭한 row를 찾아서 삭제하는 방법 */
    	 $(this).parent().parent().remove();

       })
       
       
    });
</script>

	<div class="container">
		<!-- 동물 선택 -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-5">
				<label for="exampleFormControlInput1" class="form-label">반려동물을
					선택해주세요 </label> <select class="form-select" name="pstype" id="pstype">
					<option value="" disabled selected>동물 유형 선택</option>
					<option value="dog">강아지</option>
					<option value="cat">고양이</option>
					<option value="rabbit">토끼</option>
					<option value="turtle">거북이</option>
				</select>
			</div>
			<div class="col-2"></div>
		</div>

		<!-- 동물의 종 선택 -->
		<!-- 동물을 선택하면 동물 종 리스트로 가져와야 된다. -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">종이
					무엇인가요 </label> <select class="form-select" name="psbreeds" id="psbreeds">
					<option value="" disabled selected>종 선택</option>
					<!-- 동물 유형 선택 시에 종을 일로 가져와야됨 -->
					<!-- ajax로 불러와서 넣어주도록 함 구상은 했고 시범은 나중에 -->
					<option value="dog">강아지</option>
					<option value="cat">고양이</option>
					<option value="rabbit">토끼</option>
					<option value="turtle">거북이</option>
				</select>
			</div>
			<div class="col-2"></div>
		</div>

		<!-- 강아지 이름 -->
		<div class="row justify-content-center">
			<div class="col-3 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">이름
				</label> <input type="text" class="form-control" name="petname"
					id="petname" placeholder="이름을 입력해 주세요">
			</div>
			<div class="col-3"></div>
			
		</div>
		
		<!-- 띄어쓰기 용 -->
		<div class ="row my-2"></div>
		
		<!-- 성별을 선택해주세요 -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3">
				<label for="exampleFormControlInput1" class="form-label">성별을
					선택해 주세요 </label>
			</div>
			<div class="col-2"></div>
		</div>
		<div class = "row justify-content-center">
				<div class="btn-group col-2" role="group" aria-label="Basic radio toggle button group">
				
					  <input type="radio" class="btn-check" name="petgender" id="btnradio1" value="male" autocomplete="off" checked>
					  <label class="btn btn-outline-dark" for="btnradio1">수컷</label>
					
					  <input type="radio" class="btn-check" name="petgender" id="btnradio2" value="female" autocomplete="off">
					  <label class="btn btn-outline-dark" for="btnradio2">암컷</label>
					
				</div>
				
				<div class="col-3"></div>
				
				<button class="btn btn-warning col-1 align-self-center"
				type="button" id="register">등록</button>
		</div>
		
		<!-- 등록한 거 밑에 띄우기 -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-5">
				<label for="exampleFormControlInput1" class="form-label">등록 정보 확인 </label>
			</div>
			<div class="col-2"></div>
		</div>
		
		<!-- 등록 정보 확인 -->
		<!-- 등록 버튼 누를 시 요런 형태로 들어오게 된다. -->
		<div class = "row justify-content-center">
			<div class = "col-6 border" id="list">
				<table class = "table text-center" id="register_table">
					<tbody>
					</tbody>
				</table>
			</div>
		</div>
		
		<div class = "row my-5"></div>
	</div>
