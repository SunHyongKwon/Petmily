<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.form-control {
	color: #a3a3a3;
	box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5);
	border-color: #a3a3a3;
	border-radius: 30px;
}

.page-link{
	color : black;
}
</style>

	<div class="container">
		<div class="row justify-content-start my-2">
			<h3>게시판 이름 ${notice.category}</h3>
		</div>

		<div class="row my-3">
			<div class="col-3"></div>
			<!-- 드롭다운  -->
			<div class="col-1">
				<select class="form-select w-100"
					aria-label="Default select example">
					<option selected>옵션</option>
					<option value="1">제목</option>
					<option value="2">작성자</option>
				</select>
			</div>
			<!-- 검색  -->
			<div class="col-3">
				<input type="text" class="form-control" name="query"
					id="exampleFormControlInput1" placeholder="검색어를 입력해 주세요">
			</div>

			<!-- 검색 버튼 -->
			<div class="col-1">
				<button class="btn btn-warning " type="button">검색</button>
			</div>

			<div class="col-2"></div>

			<div class="col-1">
				<button class="btn btn-warning" type="button">작성</button>
			</div>
			<div class="col-1"></div>
		</div>

		<div class="row justify-content-center my-5">
			<table class="table text-center">
				<thead style="background-color: #FB9E58;">
					<tr>
						<th scope="col">번호</th>
						<th scope="col">제목</th>
						<th scope="col">작성자</th>
						<th scope="col">시간</th>
						<th scope="col">장소</th>
						<th scope="col">좋아요</th>
						<th scope="col">조회수</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row"><a href="#">1</a></th>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<th scope="row"><a href="#">1</a></th>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<th scope="row"><a href="#">1</a></th>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<th scope="row"><a href="#">1</a></th>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<th scope="row"><a href="#">1</a></th>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
					</tr>
				</tbody>
			</table>
		</div>

		<div class="row justify-content-center my-2">
			
				<nav aria-label="Page navigation example ">
					<ul class="pagination justify-content-center">
						<li class="page-item"><a class="page-link" href="#">Previous</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul>
				</nav>
		</div>

	</div>
