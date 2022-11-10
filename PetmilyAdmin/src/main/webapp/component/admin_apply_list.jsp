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
			<h3>admin</h3>
		</div>

		<form action="#" method="get">
		<div class="row my-2">
		</div>
			<div class="row my-3">
				<div class="col-1"></div>
				<!-- 드롭다운  -->
				<div class="col-2">
					<select class="form-select w-100"
						aria-label="Default select example" name="option">
						<option selected>옵션</option>
						<option value="1">이름</option>
						<option value="2">전화번호</option>
						<option value="3">이메일</option>
						<option value="2">가입신청일자</option>
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
					<input type="submit" class="btn btn-warning "value="수락">
					<!-- <button class="btn btn-warning " type="button">검색</button> -->
				</div>
				<!-- 작성 버튼 -->
				<div class="col-1">
					<button class="btn btn-warning" type="button">거절</button>
				</div>
				<div class="col-1">
				</div>
			</div>
		</form>

		
		<div class="row justify-content-center my-5">
			<table class="table text-center">
				<thead style="background-color: #FB9E58;">
					<tr>
						<th scope="col">No</th>
						<th scope="col">아이디</th>
						<th scope="col">이름</th>
						<th scope="col">전화번호</th>
						<th scope="col">이메일</th>
						<th scope="col">가입신청일자</th>
						
					</tr>
				</thead>
				<tbody>
				<!-- 데이터보여주는곳 -->
					<c:forEach items="${list }" var="dto">
						<tr>
							<th scope="row"><input type="checkbox"><a href="content_view.do?adid=${dto.adid }">1</a></th>
							<td>${dto.adid }</td>
							<td>${dto.adname }</td>
							<td>${dto.adphone }</td>
							<td>${dto.ademail }</td>
							<td>${dto.adinitdate }</td>
							
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
