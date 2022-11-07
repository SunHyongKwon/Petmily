<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

	<jsp:include page="admin_header_sidebar.jsp" />


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<style>
.table {
	width: 100%;
	max-width: 95%;
	margin-bottom: 20px;
	margin-left: 15px;
	margin-right: 30px;
}

.search {
	width: 25%;
	max-width: 95%;
	margin-left: 15px;
	margin-right: 30px;
}

.margin_bt20 {
	margin-bottom: 40px;
}
.footer {
	background-color : white;
	border:1px white;
	margin-up : -20px;
	
}
</style>

<!-- by gukHwa / 어드민 미팅


	
			
			
			
			<!-- partial -->

			<div class="color" align="right">
				<div class="paddingTop50 table" align="left">
					<h1 style ="color : #de6637;"><strong>게시물 조회</strong></h1>
				</div>

				<!-- dropdown[E] -->
				<form class="navbar-form pull-center" role="search">
					<!-- 검색창[S] -->
					<div class="input-group search">
						<input type="text" class="form-control" placeholder="Search"
							id="myInput">
						<div class="input-group-btn" align="left">
							<button type="submit" class="btn btn-default">
								<span class="glyphicon glyphicon-search"></span>
							</button>
						</div>
					</div>
					<!-- 검색창[E] -->
					<br> <br>

					<!-- dropdown[S] -->
					<div class="container">
						<div class="row justify-content-start">
							<div class="dropdown table margin_bt20 col-1" align="left">
								<button class="btn btn-default dropdown-toggle" type="button"
									data-toggle="dropdown">카테고리</button>
								<ul class="dropdown-menu">
									<li><a href="#">함께산책</a></li>
									<li class="divider"></li>
									<li><a href="#">함께봉사</a></li>
									<li class="divider"></li>
									<li><a href="#">함께 펫카페</a></li>
									<li class="divider"></li>
									<li><a href="#">찾아주세요</a></li>
								</ul>
							</div>

							<div class="dropdown table margin_bt20 col-1" align="left">
								<button class="btn btn-default dropdown-toggle" type="button"
									data-toggle="dropdown">지역별</button>
								<ul class="dropdown-menu">
									<li><a href="#">서울시</a></li>
									<li class="divider"></li>
									<li><a href="#">경기도</a></li>
									<li class="divider"></li>
									<li><a href="#">강원도</a></li>
									<li class="divider"></li>
									<li><a href="#">충청남도</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- dropdown[E] -->



					<!-- Table[S] -->
					<table class="table table-striped" id="myList">
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">게시글번호</th>
								<th scope="col">반려회원</th>
								<th scope="col">비반려회원</th>
								<th scope="col">날짜</th>
								<th scope="col">시간</th>
								<th scope="col">장소</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>11월 매칭성공은 80%, 블랙리스트..</td>
							</tr>
							<tr>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>11월 매칭성공은 80%, 블랙리스트..</td>
							</tr>
							<tr>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>11월 매칭성공은 80%, 블랙리스트..</td>
							</tr>
							<tr>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>11월 매칭성공은 80%, 블랙리스트..</td>
							</tr>
							<tr>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>11월 매칭성공은 80%, 블랙리스트..</td>
							</tr>
							<tr>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>23546</td>
								<td>11월 매칭성공은 80%, 블랙리스트..</td>
							</tr>

						</tbody>
					</table>
					<!-- Table[E] -->

					<div align="left">
						<h5>총 10건이 검색되었습니다.</h5>
					</div>
					<!-- 페이징[S] -->
					<div class="container paddingBottom100" align="center">
						<nav aria-label="Page navigation example">
							<ul class="pagination">
								<li class="page-item"><a class="page-link" href="#">Previous</a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">Next</a></li>
								
		<div>
			<jsp:include page="admin_footer.jsp" />
		</div>
		
							</ul>
						</nav>
					</div>
					<!-- 페이징[E] -->
				</form>
			</div>
			<script>
			$(document).ready(function(){
				  $("#myInput").on("keyup", function() {
				    var value = $(this).val().toLowerCase();
				    $("#myList tr").filter(function() {
				      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
				    });
				  });
				});
			</script>
			

	