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
</head>
<style>
	.bg-transparent {
	    background-color: #f4f4f4 !important;
	}
</style>

<body>
  <div class="container-scroller">
    <!-- partial:../../partials/_navbar.html -->
    <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo" href="index.html"><img src="images/petmily_logo2.png" alt="logo"/></a>
        <a class="navbar-brand brand-logo-mini" href="index.html"><img src="images/petmily_logo2.png" alt="logo"/></a>
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
              <i class="mdi mdi-information-outline" style="margin-left: auto" id="notice"></i>
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
              <i class="mdi mdi-checkbox-marked-circle-outline" style="margin-left: auto" id="accept"></i>
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
      
      
      <!-- ----- 사이드바 ----- -->
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
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-title">게시물</span>
              <i class="menu-arrow"></i>
              <i class="mdi mdi-crosshairs-gps menu-icon"></i>
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
              <span class="menu-title">공지사항</span>
              <i class="mdi mdi-contacts menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="pages/forms/basic_elements.html">
              <span class="menu-title">관리자 승인</span>
              <i class="mdi mdi-format-list-bulleted menu-icon"></i>
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
              <i class="mdi mdi-account-card-details"></i>
            </a>
          </li>
        </ul>
      </nav>
      
      
      <!-- partial -->
      <div class="main-panel">        
        <div class="content-wrapper">
          <div class="page-header">
          </div>
          
          
          <!--  게시물 작성 화면 -->
          
          
                <div class="navbar-menu-wrapper d-flex align-items-stretch">

        
        
        
          <div class="row">
            <div class="col-12 grid-margin stretch-card">
              <div class="card">

                <div class="card-body">
                
                
                <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">회원 관리</h4>
                  <p class="card-description">
                    펫밀리의 <code>소중한 회원</code>입니다.
                  </p>
                    <div class="search-field d-none d-md-block">
			          <form class="d-flex align-items-center h-100" action="#">
			            <div class="input-group">
			              <div class="input-group-prepend bg-transparent">
			                  <i class="input-group-text border-0 mdi mdi-magnify"></i>                
			              </div>
			              <input type="text" class="form-control bg-transparent border-0" placeholder="Search projects">
			            </div>
			          </form>
			        </div>
                  <table class="table table-striped" style="margin-top: 15px">
                    <thead>
                      <tr>
                      	<th>
                          프로필사진
                        </th>
                        <th>
                          이름
                        </th>
                        <th>
                          아이디
                        </th>
                        <th>
                          비밀번호
                        </th>
                        <th>
                          유형
                        </th>
                        <th>
                          등급
                        </th>
                        <th>
                          가입일자
                        </th>
                        <th>
                          탈퇴일자
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="py-1">
                          <img src="images/faces-clipart/pic-1.png" alt="image"/>
                        </td>
                        <td>
                          김민수
                        </td>
                        <td>
                          heart04
                        </td>
                        <td>
                          love0229
                        </td>
                        <td>
                          반려인
                        </td>
                        <td>
                          금발바닥
                        </td>
                        <td>
                          2022-10-01
                        </td>
                        <td>
                         
                        </td>
                      </tr>
                      <tr>
                        <td class="py-1">
                          <img src="images/faces-clipart/pic-2.png" alt="image"/>
                        </td>
                        <td>
                          이수지
                        </td>
                        <td>
                          myhome20
                        </td>
                        <td>
                          dnflwlq123
                        </td>
                        <td>
                          비반려인
                        </td>
                        <td>
                          동발바닥
                        </td>
                        <td>
                          2022-08-27
                        </td>
                        <td>
                         
                        </td>
                      </tr>
                      <tr>
                        <td class="py-1">
                          <img src="images/faces-clipart/pic-3.png" alt="image"/>
                        </td>
                        <td>
                          신소희
                        </td>
                        <td>
                          mega7489
                        </td>
                        <td>
                          1qlalf1
                        </td>
                        <td>
                          비반려인
                        </td>
                        <td>
                          동발바닥
                        </td>
                        <td>
                          2022-09-15
                        </td>
                        <td>
                         2022-10-04
                        </td>
                      </tr>
                      <tr>
                        <td class="py-1">
                          <img src="images/faces-clipart/pic-4.png" alt="image"/>
                        </td>
                        <td>
                          민동호
                        </td>
                        <td>
                          donghoho
                        </td>
                        <td>
                          sayhoho4
                        </td>
                        <td>
                          반려인
                        </td>
                        <td>
                          은발바닥
                        </td>
                        <td>
                          2022-11-06
                        </td>
                        <td>
                         
                        </td>
                      </tr>
                      <tr>
                        <td class="py-1">
                          <img src="images/faces-clipart/pic-1.png" alt="image"/>
                        </td>
                        <td>
                          민소희
                        </td>
                        <td>
                          puppylove90
                        </td>
                        <td>
                          doglove09
                        </td>
                        <td>
                          반려인
                        </td>
                        <td>
                          금발바닥
                        </td>
                        <td>
                          2022-09-09
                        </td>
                        <td>
                         
                        </td>
                      </tr>
                      <tr>
                        <td class="py-1">
                          <img src="images/faces-clipart/pic-2.png" alt="image"/>
                        </td>
                        <td>
                          고예지
                        </td>
                        <td>
                          yejiii02
                        </td>
                        <td>
                          imyeji2020
                        </td>
                        <td>
                          비반려인
                        </td>
                        <td>
                          동발바닥
                        </td>
                        <td>
                          2022-11-07
                        </td>
                        <td>
                         
                        </td>
                      </tr>
                      <tr>
                        <td class="py-1">
                          <img src="images/faces-clipart/pic-3.png" alt="image"/>
                        </td>
                        <td>
                          Henry Tom
                        </td>
                        <td>
                          김정민
                        </td>
                        <td>
                          mycatcute
                        </td>
                        <td>
                          iloveyou5038
                        </td>
                        <td>
                          반려인
                        </td>
                        <td>
                          은발바닥
                        </td>
                        <td>
                          2022-09-21
                        </td>
                        <td>
                          2022-11-01
                        </td>
                      </tr>
                    </tbody>
                  </table>
                  <div style="text-align: right; margin-top: 15px">
          			<button type="submit" class="btn btn-gradient-primary mr-2" >Submit</button>
        		  </div>
        		  <div class="container paddingBottom100" align="center" style="left: 30%; position: relative;">
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
                </div>
              </div>
            </div>
            

                
                
                
                
                  
                  <!-- 페이징[S] -->

<!-- 페이징[E] -->

		
                        
                        
                     
                        
                    
                    
                    
                    
                    
                    
                    
                  
                </div>
              </div>
            </div>
            
            
            
                 
           
                 
                 
                  
                 
                    
            
                        
                         
                          
                     
                         
                          
                         
               
                        
                         
                         
                        
                     
                     
                    
                        
           
                   
          
                     
                   
                      
           

        <!-- content-wrapper ends -->
        <!-- partial:../../partials/_footer.html -->
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2017 <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap Dash</a>. All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i></span>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <script src="vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/misc.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="js/file-upload.js"></script>
  <!-- End custom js for this page-->
</body>

</html>
