<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.form-label {
	font-weight: bold;
}

.form-control, .form-select {
	color: #a3a3a3;
	padding-top: 0.85rem;
	padding-bottom: 0.85rem;
	box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5);
	border-color: #a3a3a3;
	border-radius: 30px;
}

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

						$('#add_photo')
								.click(
										function() {
											var filepath = $(
													'#inputGroupFile04').val();

											var insertTr = "";

											insertTr += "<tr>";
											insertTr += "<td>" + filepath
													+ "</td>";
											insertTr += "<td><button name=\"trash\" class=\"btn btn-outline-secondary\"><i class=\"bi bi-trash\"></i></button></td>";
											insertTr += "</tr>";
											insertTr += "<input type=\"hidden\" name=\"pimage\" value=\""+filepath+ "\" >";
											
											if($("#photo_table tr").length < 3){												
												$("#photo_table").append(insertTr);
											}else{
												alert('3개이상은 못넣으세요');
											}
										})

						/* 동적으로 할당된 것들은 이런식으로 만들어야 된다. */
						$(document).on("click", "button[name=trash]",
								function() {
									/* 내가 클릭한 row를 찾아서 삭제하는 방법 */
									$(this).parent().parent().remove();
								})
					});
</script>
<form action="posting_write_inesrt.do">
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
				<input type="text" class="form-control" name="plocation_detail"
					id="exampleFormControlInput1" placeholder="상세 주소를 입력해 주세요">
			</div>
		</div>

		<!-- 폴더에서 사진 추가 -->
		<div class="row justify-content-center">
			<div class="col-6 mb-3 gy-3">
				<label for="exampleFormControlInput1" class="form-label">사진
					업로드 </label>
				<div class="input-group">
					<input type="file" class="form-control" id="inputGroupFile04"
						aria-describedby="inputGroupFileAddon04" aria-label="Upload">
					<button class="btn btn-outline-secondary" type="button"
						id="add_photo">추가</button>
				</div>
			</div>

		</div>


		<!-- 추가한 거 밑에 띄우기 -->
		<div class="row justify-content-center ">
			<div class="col-4 mb-3 gy-3">
				<label for="exampleFormControlInput1" class="form-label">사진
					항목</label>
			</div>
			<div class="col-2 mb-3 gy-3"></div>
		</div>

		<!-- 등록 정보 확인 -->
		<!-- 등록 버튼 누를 시 요런 형태로 들어오게 된다. -->
		<div class="row justify-content-center my-2">
			<div class="col-6" id="list">
				<table class="table text-center" id="photo_table">
					<tbody>
					</tbody>
				</table>
			</div>
		</div>

		<!-- 등록 버튼 -->
		<div class="row justify-content-center my-5 text-center">
			<div class="col-4">
				<button class="btn btn-warning w-100" type="submit">등록</button>
				<input type="hidden" name="pimage1" value="11">
				<input type="hidden" name="pimage2" value="22">
				<input type="hidden" name="pimage3" value="33">
			</div>
		</div>
	</div>
</form>
