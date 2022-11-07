<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Purple Admin</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- inject:css -->
<link rel="stylesheet" href="css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="images/favicon.png" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- datePicker -->
<!— Popperjs —>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.2/dist/umd/popper.min.js"
	crossorigin="anonymous"></script>
<!— Tempus Dominus JavaScript —>
<script
	src="https://cdn.jsdelivr.net/gh/Eonasdan/tempus-dominus@master/dist/js/tempus-dominus.js"
	crossorigin="anonymous"></script>

<!— Tempus Dominus Styles —>
<link
	href="https://cdn.jsdelivr.net/gh/Eonasdan/tempus-dominus@master/dist/css/tempus-dominus.css"
	rel="stylesheet" crossorigin="anonymous">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	rel="stylesheet">
	 <link rel="shortcut icon" href="images/LOGO.png" />
</head>

<style>
.table {
	width: 100%;
	max-width: 95%;
	margin-bottom: 20px;
	margin-left: 15px;
	margin-right: 30px;
}

.search {
	width: 100%;
	max-width: 25%;
	margin-bottom: 20px;
	margin-left: 15px;
	margin-right: 30px;
}

.datepicker {
	width: 100%;
	max-width: 15%;
	margin-bottom: 20px;
	margin-left: 15px;
	margin-right: 30px;
}

.marginleft30 {
	margin-left: 30px;
}
</style>

<!-- by gukHwa / 관리자 정보관리 -->

<body>
	<div class="container-scroller">
			<div class="color table">
				<div class="paddingTop50 marginleft30">
					<h1 style ="color : #de6637;"><strong>회원 정보관리</strong></h1>
				</div>
				
				
				
				<form class="navbar-form pull-center" role="search">
					<!-- 검색창[S] -->
					<div class= "container">
					<div class = "row justify-content-end">
							<div class="input-group search col-6">
								<input type="text" class="form-control" placeholder="Search"
									id="myInput">
								<div class="input-group-btn" align="left">
									<button type="submit" class="btn btn-default">
										<span class="glyphicon glyphicon-search"></span>
									</button>
								</div>
							</div>
						</div>
					</div>
					<!-- 검색창[E] -->

					<br> <br>

					<!-- datepicker[S] -->
					<div class='input-group datepicker' id='datetimepicker1'
						data-td-target-input='nearest' data-td-target-toggle='nearest'
						align="left">
						<h6>시작일 :</h6>
						<input id='datetimepicker1Input' type='text' class='form-control'
							data-td-target='#datetimepicker1' /> <span
							data-td-target='#datetimepicker1' data-td-toggle='datetimepicker'>
							<span class='fa-solid fa-calendar'></span>
						</span>
					</div>
					
					
					<script type="text/javascript">
						new tempusDominus.TempusDominus(document
								.getElementById('datetimepicker1'), {
							display : {
								components : {
									seconds : false,
									useTwentyfourHour : false,
								},
								icons : {
									type : 'icons',
									time : 'fa fa-solid fa-clock',
									date : 'fa fa-solid fa-calendar',
									up : 'fa fa-solid fa-arrow-up',
									down : 'fa fa-solid fa-arrow-down',
									previous : 'fa fa-solid fa-chevron-left',
									next : 'fa fa-solid fa-chevron-right',
									today : 'fa fa-solid fa-calendar-check',
									clear : 'fa fa-solid fa-trash',
									close : 'fas fa-solid fa-xmark'
								},
							},
						});
					</script>
					<!-- datepicker[E] -->

					<!-- datepicker[S] -->
					<div class='input-group datepicker' id='datetimepicker2'
						data-td-target-input='nearest' data-td-target-toggle='nearest'
						align="left">
						<h6>종료일 :</h6>
						<input id='datetimepicker2Input' type='text' class='form-control'
							data-td-target='#datetimepicker2' /> <span
							data-td-target='#datetimepicker2' data-td-toggle='datetimepicker'>
							<span class='fa-solid fa-calendar'></span>
						</span>
					</div>
					
					
					<script type="text/javascript">
						new tempusDominus.TempusDominus(document
								.getElementById('datetimepicker2'), {
							display : {
								components : {
									seconds : false,
									useTwentyfourHour : false,
								},
								icons : {
									type : 'icons',
									time : 'fa fa-solid fa-clock',
									date : 'fa fa-solid fa-calendar',
									up : 'fa fa-solid fa-arrow-up',
									down : 'fa fa-solid fa-arrow-down',
									previous : 'fa fa-solid fa-chevron-left',
									next : 'fa fa-solid fa-chevron-right',
									today : 'fa fa-solid fa-calendar-check',
									clear : 'fa fa-solid fa-trash',
									close : 'fas fa-solid fa-xmark'
								},
							},
						});
					</script>
					<!-- datepicker[E] -->


					<!-- Table[S] -->
					<div align="left">
						<table class="table table-striped" id="myList">
							<thead>
								<tr>
									<th scope="col">이름</th>
									<th scope="col">주소</th>
									<th scope="col">이메일</th>
									<th scope="col">전화번호</th>
									<th scope="col">비밀번호</th>
									<th scope="col">등급</th>
									<th scope="col">별점</th>
									<th scope="col">탈퇴</th>
									<th scope="col">가입일자</th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<th scope="row">1</th>
									<td>23546</td>
									<td>매칭 현황</td>
									<td>11월 매칭성공은 80%, 블랙리스트..</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
								</tr>
								<tr>
									<th scope="row">1</th>
									<td>23546</td>
									<td>매칭 현황</td>
									<td>11월 매칭성공은 80%, 블랙리스트..</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
								</tr>
								<tr>
									<th scope="row">1</th>
									<td>23546</td>
									<td>매칭 현황</td>
									<td>11월 매칭성공은 80%, 블랙리스트..</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
								</tr>
								<tr>
									<th scope="row">1</th>
									<td>23546</td>
									<td>매칭 현황</td>
									<td>11월 매칭성공은 80%, 블랙리스트..</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
								</tr>
								<tr>
									<th scope="row">1</th>
									<td>23546</td>
									<td>매칭 현황</td>
									<td>11월 매칭성공은 80%, 블랙리스트..</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
								</tr>
								<tr>
									<th scope="row">1</th>
									<td>23546</td>
									<td>매칭 현황</td>
									<td>11월 매칭성공은 80%, 블랙리스트..</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
								</tr>
								<tr>
									<th scope="row">1</th>
									<td>23546</td>
									<td>매칭 현황</td>
									<td>11월 매칭성공은 80%, 블랙리스트..</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
								</tr>
								<tr>
									<th scope="row">1</th>
									<td>23546</td>
									<td>매칭 현황</td>
									<td>11월 매칭성공은 80%, 블랙리스트..</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
								</tr>
								<tr>
									<th scope="row">1</th>
									<td>23546</td>
									<td>매칭 현황</td>
									<td>11월 매칭성공은 80%, 블랙리스트..</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
								</tr>
								<tr>
									<th scope="row">1</th>
									<td>23546</td>
									<td>매칭 현황</td>
									<td>11월 매칭성공은 80%, 블랙리스트..</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
									<td>2022.11.01</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- Table[E] -->

					<div align="left">
						<h5>총 10건이 검색되었습니다.</h5>
					</div>
					<div class="container" align="right">
						<div class="row">
							<div class="col">
								<button type="button" class="btn btn-light">승인</button>
							</div>
						</div>
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
</body>

</html>
