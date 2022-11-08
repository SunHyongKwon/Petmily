<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style type="text/css">


  </style>
</head>
<body>

<div align="right" style="padding: 0px 100px 0px 100px;">
<div align="left" style="padding: 50px 0px 0px 0px;">
<h1>도전과제 리스트</h1>

</div>
<form class="navbar-form pull-center" role="search">
   <div class="input-group">
      <input type="text" class="form-control" placeholder="Search" id="myInput">
      <div class="input-group-btn">
         <button type="submit" class=" myInput2 btn btn-default" ><span class="glyphicon glyphicon-search"></span></button>
      </div>
      
   </div>
<br>
<br>

<div class="container" align="right"> 
	<div class="row">
		<div class="col">
			<button id="myInput" type="button" class="btn btn-danger" style="background-color: rgb(232, 133, 62); border: rgb(232, 133, 62);">검색</button>
			
		</div>
	</div>
</div>

<!-- Table[S] -->
<table class="table table-striped" id="myList">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">게시글 번호</th>
      <th scope="col">제목</th>
      <th scope="col">내용</th>
      <th scope="col">날짜</th>
      <th scope="col">선택</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>23546</td>
      <td>ㄱㄱ</td>
      <td>11월 매칭성공은 80%, 블랙리스트..</td>
      <td>2022.11.01</td>
      <td>
		<div id="wrapper">
		  <label id="label">
		    <input id="hiddenCheckbox" type="checkbox" />
		    <div id="showCheckbox"></div>
		  </label>
		</div>
	  </td>
    </tr>
    <tr>
      <th scope="row">1</th>
      <td>22</td>
      <td>매칭 현황</td>
      <td>11월 매칭성공은 80%, 블랙리스트..</td>
      <td>2022.11.01</td>
      <td>
		<div id="wrapper">
		  <label id="label">
		    <input id="hiddenCheckbox" type="checkbox" />
		    <div id="showCheckbox"></div>
		  </label>
		</div>
	  </td>
    </tr>
    <tr>
      <th scope="row">1</th>
      <td>23546</td>
      <td>매칭 현황</td>
      <td>11월 매칭성공은 80%, 블랙리스트..</td>
      <td>2022.11.01</td>
      <td>
		<div id="wrapper">
		  <label id="label">
		    <input id="hiddenCheckbox" type="checkbox" />
		    <div id="showCheckbox"></div>
		  </label>
		</div>
	  </td>
    </tr>
    <tr>
      <th scope="row">1</th>
      <td>23546</td>
      <td>매칭 현황</td>
      <td>11월 매칭성공은 80%, 블랙리스트..</td>
      <td>2022.11.01</td>
      <td>
		<div id="wrapper">
		  <label id="label">
		    <input id="hiddenCheckbox" type="checkbox" />
		    <div id="showCheckbox"></div>
		  </label>
		</div>
	  </td>
    </tr>
    <tr>
      <th scope="row">1</th>
      <td>23546</td>
      <td>매칭 현황</td>
      <td>11월 매칭성공은 80%, 블랙리스트..</td>
      <td>2022.11.01</td>
      <td>
		<div id="wrapper">
		  <label id="label">
		    <input id="hiddenCheckbox" type="checkbox" />
		    <div id="showCheckbox"></div>
		  </label>
		</div>
	  </td>
    </tr>
    <tr>
      <th scope="row">1</th>
      <td>23546</td>
      <td>매칭 현황</td>
      <td>11월 매칭성공은 80%, 블랙리스트..</td>
      <td>2022.11.01</td>
      <td>
		<div id="wrapper">
		  <label id="label">
		    <input id="hiddenCheckbox" type="checkbox" />
		    <div id="showCheckbox"></div>
		  </label>
		</div>
	  </td>
    </tr>
  </tbody>
</table>
<!-- Table[E] -->

<div align="left">
	<h5>총 10건이 검색되었습니다.</h5>
</div>

<div class="container" align="right"> 
	<div class="row">
		<div class="col">
			<button type="button" class="btn btn-danger" style="background-color: rgb(232, 133, 62); border: rgb(232, 133, 62);">삭제</button>
			
		</div>
	</div>
</div>
<!-- 페이징[S] -->
<div class="container paddingBottom100" align="center" style="padding: 0px 0px 100px 0px;">
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
	console.log("Function");
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myList tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});



$(document).ready(function(){
	console.log("Class");
	$('.myInput2').click(function(){
		console.log($(this).val());
		console.log("-------")
		var value = $(this).val().toLowerCase();
	    $("#myList tr").filter(function() {
	      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	    });
	});
});
</script>
</body>
</html>