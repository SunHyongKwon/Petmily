<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

		<form action="notice_list.do" method="get">
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
					<input type="submit" class="btn btn-warning "value="검색">
					<!-- <button class="btn btn-warning " type="button">검색</button> -->
				</div>
				<!-- 작성 버튼 -->
				<div class="col-1">
				<!-- <input type="submit" class="btn btn-warning "value="검색"> -->
					<button class="btn btn-warning" type="button"onclick="location.href='notice_write.do'">작성</button>
				</div>
				<div class="col-1">
				</div>
			</div>
		</form>

		
		<div class="row justify-content-center my-5">
			<table class="table text-center">
				<thead style="background-color: #FB9E58;">
					<tr>
						<th scope="col">번호</th>
						<th scope="col">제목</th>
						<th scope="col">작성자</th>
						<th scope="col">시간</th>
						
					</tr>
				</thead>
				<tbody>
					<c:forEach var="list" items="${noticeList}" varStatus="status">
					<tr>
						<th scope="row">${paging.endRow - status.index }</th>
						<td><a href="notice_view.do?nid=${list.nid }">${list.ntitle }</a></td>
						<td>${list.admin_adid }</td>
						<td>${list.ninitdate }</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

		<div class="row justify-content-center my-2">
			
				<nav aria-label="Page navigation example ">
					<ul class="pagination justify-content-center">
						<c:set var="startPage" value="paging.startPage"/>
						<c:choose>
						
							<c:when test="${paging.startPage eq '1'}"><!-- if -->
							<li class="page-item">
							<a class="page-link" href="#"><
							</a></li>
							</c:when>
							
							<c:otherwise><!-- else -->
							<li class="page-item">
							<a class="page-link" href="notice_list.do?page=${paging.startPage - 1}"><
							</a></li>
							</c:otherwise>
							
						</c:choose>
						<!-- int = startPage; i <= endPage; i++ -->
						<c:forEach var="count" begin="${paging.startPage}" end="${paging.endPage}" >
							<li class="page-item">
							<a class="page-link" href="notice_list.do?page=${count}">${count}
							</a></li>
						</c:forEach>
						
						<c:choose>
						
							<c:when test="${paging.totalPages eq paging.endPage}"><!-- if -->
							<li class="page-item">
							<a class="page-link" href="#">>
							</a></li>
							</c:when>
							
							<c:otherwise><!-- else -->
							<li class="page-item">
							<a class="page-link" href="notice_list.do?page=${paging.endPage + 1}">>
							</a></li>
							</c:otherwise>
							
						</c:choose>
						
						
					</ul>
				</nav>
		</div>
	
	<%-- <c:set var="startPage" value="dto.startPage"/>
	<c:choose>
	
	<c:when test="${dto.startPage eq '1'}"><!-- if -->
	<li class="page-item">
	<a class="page-link" href="#"><
	</a></li>
	</c:when>
	
	<c:otherwise><!-- else -->
	
	<li class="page-item">
	<a class="page-link" href="notice_page_select.do?${dto.startPage - 1}"><
	</a></li>
	
	</c:otherwise>
	</c:choose>
	<!-- int = startPage; i <= endPage; i++ -->
	<c:forEach begin="${dto.startPage}" end="${dto.endPage}">
	<li class="page-item">
	<a class="page-link" href="notice_page_select.do?page=${i}">${i}
	</a></li>
	</c:forEach> --%>
	
	</div>
	
	
