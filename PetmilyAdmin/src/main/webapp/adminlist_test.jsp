<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Purple Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="images/favicon.png" />
  <style>
  #accept{
  	color : #BEABC2; 
  }
  #notice{
  	color : #BEABC2; 
  }
  #user{
  color : #BEABC2; 
  }

	.color {
		background-color: white;
	}
	.paddingBottom100 {
	    position: relative;
    	left: 40%;
	}
	
	.table {
	    width: 100%;
	    max-width: 95%;
	    margin-bottom: 20px;
	    margin-left: 15px;
	    margin-right: 30px;

  </style>
  
</head>

<body>
  <div class="container-scroller">
    <!-- partial:../../partials/_navbar.html -->
    <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo" href="index.html"><img src="images/logo.svg" alt="logo"/></a>
        <a class="navbar-brand brand-logo-mini" href="index.html"><img src="images/logo-mini.svg" alt="logo"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-stretch">
        <div class="search-field d-none d-md-block">
          <form class="d-flex align-items-center h-100" action="#">
            <div class="input-group">
            </div>
          </form>
        </div>
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
              <div class="nav-profile-img">
                <img src="images/faces/face1.jpg" alt="image">
                <span class="availability-status online"></span>             
              </div>
              <div class="nav-profile-text">
                <p class="mb-1 text-black">David Greymaax</p>
              </div>
            </a>
            <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item" href="#">
                <i class="mdi mdi-cached mr-2 text-success"></i>
                Mypage
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">
                <i class="mdi mdi-logout mr-2 text-primary"></i>
                Logout
              </a>
            </div>
          </li>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:../../partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item nav-profile">
            <a href="#" class="nav-link">
              <div class="nav-profile-image">
                <img src="images/faces/face1.jpg" alt="profile">
                <span class="login-status online"></span> <!--change to offline or busy as needed-->              
              </div>
              <div class="nav-profile-text d-flex flex-column">
                <span class="font-weight-bold mb-2">David Grey. H</span>
                <span class="text-secondary text-small">Project Manager</span>
              </div>
              <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../../index.html">
              <span class="menu-title">Home</span>
              <i class="mdi mdi-home menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="pages/icons/mdi.html">
              <span class="menu-title">공지사항</span>
              <i class="mdi mdi-table-large menu-icon" id="notice"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-title">게시물</span>
              <i class="menu-arrow"></i>
              <i class="mdi mdi-format-list-bulleted menu-icon"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/buttons.html">함께 산책</a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">펫과사전</a></li>	            
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="pages/icons/mdi.html">
              <span class="menu-title">관리자 승인</span>
              <i class="mdi mdi-crosshairs-gps menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="pages/charts/chartjs.html">
              <span class="menu-title">통계</span>
              <i class="mdi mdi-chart-bar menu-icon"></i>
            </a>
          </li>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="pages/charts/chartjs.html">
              <span class="menu-title">회원 관리</span>
              <i class="mdi mdi-contacts menu-icon" id="user"></i>
            </a>
          </li>
        </ul>
      </nav>
      
      
      <div class="main-panel">        
        <div class="content-wrapper">
          <div class="page-header">
          </div>
          
          
          
          <div class="color" style="backgroud-color:white" align="right">
<div class="paddingTop50" align="left">
<h1>도전과제 리스트</h1>

</div>
<form class="navbar-form pull-center" role="search">
   <div class="input-group">
      <input type="text" class="form-control" placeholder="Search" id="myInput">
      <div class="input-group-btn">
         <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
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
          