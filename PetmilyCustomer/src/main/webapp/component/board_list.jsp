<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.form-control {
	color: #a3a3a3;
	box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5);
	border-color: #a3a3a3;
	border-radius: 30px;
}

.page-link {
	color: black;
}
</style>

<script>
	
function changeForm(){
	
	var form = document.posting
	
	var pcategory = document.getElementById('pcategory').value
	
	form.action = 'posting_write.do?pcategory=' + pcategory
	
	
	form.submit()
	
}
	
	
</script>

<div class="container">
	<form action="posting_query.do" name="posting">
		<div class="row justify-content-start my-2">
			<input type="hidden" name="pcategory" id="pcategory" value="${param.pcategory }">
			<c:choose>
				<c:when test="${param.pcategory eq 'volunteer'}"><!-- if -->
				<h3>함께 봉사</h3>
				</c:when>
				<c:when test="${param.pcategory eq 'walk'}"><!-- if -->
				<h3>함께 산책</h3>
				</c:when>
				<c:when test="${param.pcategory eq 'petcafe'}"><!-- if -->
				<h3>함께 펫카페</h3>
				</c:when>
				<c:when test="${param.pcategory eq 'find'}"><!-- if -->
				<h3>찾아주세요</h3>
				</c:when>
				<c:when test="${param.pcategory eq 'found'}"><!-- if -->
				<h3>찾았어요</h3>
				</c:when>
			</c:choose>
		</div>

		<div class="row my-3">
			<div class="col-3"></div>
			<!-- 드롭다운  -->
			<div class="col-1">
				<select class="form-select w-100"
					aria-label="Default select example">
					<option selected>옵션</option>
					<option value="ptitle">제목</option>
					<option value="user_uid">작성자</option>
				</select>
			</div>
			<!-- 검색  -->
			<div class="col-3">
				<input type="text" class="form-control" name="query"
					id="exampleFormControlInput1" placeholder="검색어를 입력해 주세요">
			</div>

			<!-- 검색 버튼 -->
			<div class="col-1">
				<input class="btn btn-warning " type="submit" value="검색">
			</div>

			<div class="col-2"></div>

			<div class="col-1">
				<c:choose>
					<c:when test="${user.utype eq '1' }">
						<button class="btn btn-warning" type="button" onclick="changeForm()" style= "display : block">작성</button>
					</c:when>
					
					<c:otherwise>
						<button class="btn btn-warning" type="button" onclick="changeForm()" style= "display : none">작성</button>
					</c:otherwise>
				</c:choose>
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
					<!-- ${list[0].title} , <c:forEach var="i" begin="0" end="3"> , ${fn:length(list) }-->
					<c:forEach var="list" items="${postingList}">
						<tr>
							<th scope="row">${paging.endRow - status.index }</th>
							<td><a href="posting_click.do?uid=${list.pid }">${list.ptitle }</a></td>
							<td>${list.user_uid }</td>
							<td>${list.pinitdate }</td>
							<td>${list.plocation }</td>
							<%-- <td>${list.shlike }</td>
							<td>${list.shcount }</td> --%>
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
							<a class="page-link" href="#">Previous
							</a></li>
							</c:when>
							
							<c:otherwise><!-- else -->
							<li class="page-item">
							<a class="page-link" href="posting.do?page=${paging.startPage - 1}&pcategory=${param.pcategory }">Previous
							</a></li>
							</c:otherwise>
							
						</c:choose>
						<!-- int = startPage; i <= endPage; i++ -->
						<c:forEach var="count" begin="${paging.startPage}" end="${paging.endPage}" >
							<li class="page-item">
							<a class="page-link" href="posting.do?page=${count}&pcategory=${param.pcategory }">${count}
							</a></li>
						</c:forEach>
						
						<c:choose>
						
							<c:when test="${paging.totalPages eq paging.endPage}"><!-- if -->
							<li class="page-item">
							<a class="page-link" href="#">Next
							</a></li>
							</c:when>
							
							<c:otherwise><!-- else -->
							<li class="page-item">
							<a class="page-link" href="posting.do?page=${paging.endPage + 1}&pcategory=${param.pcategory }">Next
							</a></li>
							</c:otherwise>
							
						</c:choose>

				</ul>
			</nav>
		</div>
	</form>
</div>

