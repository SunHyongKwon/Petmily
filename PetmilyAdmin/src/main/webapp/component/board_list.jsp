<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
			<h3>${param.pcategory}</h3>
		</div>

		<form action="board_list.do" method="get">
		<div class="row my-2">
		<div class="col-4"></div>
		<div class="col-5">
			<input type="radio" name="pcategory" value="함께펫카페"> 함께 펫카페
			<input type="radio" name="pcategory" value="함께산책"> 함께 산책
			<input type="radio" name="pcategory" value="함께봉사"> 함께 봉사
			<input type="radio" name="pcategory" value="찾아주세요"> 찾아주세요
			<input type="radio" name="pcategory" value="찾았어요"> 찾았어요
		</div>
		<div class="col-3"></div>
		</div>
			<div class="row my-3">
				<div class="col-1"></div>
				<!-- 드롭다운  -->
				<div class="col-2">
					<select class="form-select w-100"
						aria-label="Default select example" name="option">
						<option selected></option>
						<option value="1">제목</option>
						<option value="2">작성자</option>
					</select>
				</div>
				<!-- 검색  -->
				<div class="col-3">
					<input type="text" class="form-control" name="query"
						id="exampleFormControlInput1" placeholder="검색어를 입력해 주세요">
				</div>
				<!-- 날짜선택 -->
				<div class="col-3">
					<input type="date" name="startdate">&nbsp~&nbsp
					<input type="date" name="enddate">
				</div>
				<!-- 검색 버튼 -->
				<div class="col-1">
					<!-- <input type="submit" class="btn btn-warning "value="검색"> -->
					<!-- <button class="btn btn-warning " type="button">검색</button> -->
				</div>
				<!-- 작성 버튼 -->
				<div class="col-1">
				<input type="submit" class="btn btn-warning "value="검색">
					<!-- <button class="btn btn-warning" type="button">작성</button> -->
				</div>
				<div class="col-1">
				</div>
			</div>
		</form>

		
		<div class="row justify-content-center my-5">
			<table class="table text-center">
				<thead style="background-color: #FB9E58;">
					<tr>
						<th scope="col"></th>
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
					<c:forEach var="list" items="${POSTLIST}">
					<tr>
						<td><input type="checkbox"></td>
						<th scope="row"><a href="#">${list.pid }</a></th>
						<td>${list.ptitle }</td>
						<td>${list.user_uid }</td>
						<td>${list.pinitdate }</td>
						<td>${list.plocation }</td>
						<td>${list.shlike }</td>
						<td>${list.shcount }</td>
					</tr>
					</c:forEach>
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
