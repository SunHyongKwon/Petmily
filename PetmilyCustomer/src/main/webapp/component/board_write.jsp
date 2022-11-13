<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>


#inputGroupFile04 {
	color: #a3a3a3;
	padding-top: 0.85rem;
	padding-bottom: 0.85rem;
	box-shadow: 0px 0px 0px 0px rgba(0, 0, 0, 0);
	border-color: #a3a3a3;
	border-radius: 0px;
}

#list {
	color: #a3a3a3;
	border-radius: 10px;
	border-color: #a3a3a3;
	padding-top: 0.75rem;
	padding-bottom: 0.75rem;
	box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5);
}
</style>

<script type="text/javascript">
	var url_href = window.location.href;

	var url = new URL(url_href);
	var pcategory = url.searchParams.get("pcategory");

	$(document)
			.ready(
					function() {

						$("#pcategory").val(pcategory).attr("selected",
								"selected");

										
						$('input[type=file]').change(function(){
							var fileInput = document.getElementById("file");
				            
				            var files = fileInput.files;
				            				            
				            if(files.length >= 4){
				            	alert('4개이상은 못넣으세요');
				            	$('#file').val('');
				            	
				            }
				            
				            var file;
				            $('#tBody').empty();
				            for (var i = 0; i < files.length; i++) {
				                				                
				            	file = files[i];				            	
				            	
				                insertTr = "<tr>";
								insertTr += "<td>" + file.name
										+ "</td>";
								insertTr += "<td><button name=\"trash\" class=\"btn btn-outline-secondary\"><i class=\"bi bi-trash\"></i></button></td>";
								insertTr += "</tr>";
								insertTr += "<input type=\"hidden\" name=\"pimage\" value=\""+file.name+ "\" >";
								$("#photo_table").append(insertTr);
				            }	
						
						
						})

						/* 동적으로 할당된 것들은 이런식으로 만들어야 된다. */
						$(document).on("click", "button[name=trash]",
								function() {
									/* 내가 클릭한 row를 찾아서 삭제하는 방법 */
									$(this).parent().parent().remove();
								})
					});
	
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
				document.getElementById("plocation_basic").value = roadAddr;


			}
		}).open();
	}
</script>

<form action="posting_write_inesrt.do" enctype="multipart/form-data" method="post" name="board_write">
	<div class="container">
		<div class="row text-center">
			<h4>
				<strong>게시물 작성</strong>
			</h4>
		</div>

		<div class="row justify-content-center">
			<div class="row justify-content-center ">
				<div class="col-4 mb-3 gy-4">
					<label for="exampleFormControlInput1" class="form-label">제목
					</label> <input type="text" class="form-control" name="ptitle"
						id="exampleFormControlInput1" placeholder="제목을 입력해 주세요">
				</div>
				<div class="col-2"></div>
			</div>
		</div>

		<div class="row justify-content-center">
			<div class="col-4 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">카테고리</label>
				<select class="form-select" aria-label="Default select example"
					id="pcategory" name="pcategory">
					<option value="walk">함께 산책</option>
					<option value="volunteer">함께 봉사</option>
					<option value="petcafe">함께 펫카페</option>
					<option value="find">찾아주세요</option>
					<option value="found">찾았어요</option>
				</select>
			</div>
			<div class="col-2"></div>
		</div>

		<div class="row justify-content-center">
			<div class="col-6 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">내용</label>
				<textarea class="form-control" id="exampleFormControlTextarea1" name="pcontent"
					rows="10"></textarea>
			</div>
		</div>

		<!-- 주소 -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">주소
				</label> <input type="text" class="form-control" name="plocation_basic"
					id="plocation_basic" placeholder="주소를 입력해 주세요" readonly>
			</div>
			<!-- 주소 검색 버튼 -->
			<button class="btn btn-warning col-1 gy-2 align-self-center"
				type="button" id="address_search" onclick="sample4_execDaumPostcode()"
				style="margin-top: 1.5rem; padding-top: 0.7rem; padding-bottom: 0.7rem;">검색</button>
			<div class="col-1 gy-2"></div>
		</div>

		<!-- 상세주소 입력 -->
		<div class="row justify-content-center ">
			<div class="col-6 mb-3">
				<input type="text" class="form-control" name="plocation_detail"
					id="exampleFormControlInput1" placeholder="상세 주소를 입력해 주세요">
			</div>
		</div>

		<!-- 폴더에서 사진 추가 -->
		<div class="row justify-content-center">
			<div class="col-6 mb-3 gy-3">
				<label for="exampleFormControlInput1" class="form-label">사진
					업로드 </label>
					<input type="file" class="form-control my-2" id="file1" name="file1"
						aria-describedby="inputGroupFileAddon04" aria-label="Upload" accept="image/*">
						<input type="file" class="form-control my-2" id="file2" name="file2"
						aria-describedby="inputGroupFileAddon04" aria-label="Upload" accept="image/*">
						<input type="file" class="form-control my-2" id="file3" name="file3"
						aria-describedby="inputGroupFileAddon04" aria-label="Upload" accept="image/*">
					
			</div>

		</div>


		<!-- 추가한 거 밑에 띄우기 -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-3">
				<label for="exampleFormControlInput1" class="form-label">사진
					항목</label>
					
					<!-- 여기까지 테스트임 -->
			</div>
			<div class="col-2 mb-3 gy-3"></div>
		</div>

		<!-- 등록 정보 확인 -->
		<!-- 등록 버튼 누를 시 요런 형태로 들어오게 된다. -->
		<div class="row justify-content-center my-2">
			<div class="col-6" id="list">
				<table class="table text-center" id="photo_table">
					<tbody id="tBody">
					</tbody>
				</table>
			</div>
		</div>

		<!-- 등록 버튼 -->
		<div class="row justify-content-center my-5 text-center">
			<div class="col-4">
				<input class="btn btn-warning w-100" type="submit" value="등록" >
			</div>
		</div>
	</div>
</form>
