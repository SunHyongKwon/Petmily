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
  <link rel="shortcut icon" href="images/LOGO.png" />
</head>
<body>
<div class="container-fluid page-body-wrapper">
	<!-- partial:../../partials/_sidebar.html -->
	<nav class="sidebar sidebar-offcanvas" id="sidebar">
		<ul class="nav">
			<li class="nav-item nav-profile"><a href="#" class="nav-link">
					<div class="nav-profile-image">
						<img src="images/faces/face1.jpg" alt="profile"> <span
							class="login-status online"></span>
						<!--change to offline or busy as needed-->
					</div>
					<div class="nav-profile-text d-flex flex-column">
						<span class="font-weight-bold mb-2">David Grey. H</span> <span
							class="text-secondary text-small">Project Manager</span>
					</div> <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="../../index.html">
					<span class="menu-title">Home</span> <i
					class="mdi mdi-home menu-icon"></i>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="pages/icons/mdi.html"> <span class="menu-title">공지사항</span>
					<i class="mdi mdi-information-outline" style="margin-left: auto"
					id="notice"></i>
			</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="collapse"
				href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
					<span class="menu-title">게시물</span> <i class="menu-arrow"></i> <i
					class="mdi mdi-format-list-bulleted menu-icon"></i>
			</a>
				<div class="collapse" id="ui-basic">
					<ul class="nav flex-column sub-menu">
						<li class="nav-item"><a class="nav-link"
							href="pages/ui-features/buttons.html">함께 산책</a></li>
						<li class="nav-item"><a class="nav-link"
							href="pages/ui-features/typography.html">펫과사전</a></li>
					</ul>
				</div></li>
			<li class="nav-item"><a class="nav-link"
				href="pages/icons/mdi.html"> <span class="menu-title">관리자
						승인</span> <i class="mdi mdi-checkbox-marked-circle-outline"
					style="margin-left: auto" id="accept"></i>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="pages/charts/chartjs.html"> <span class="menu-title">통계</span>
					<i class="mdi mdi-chart-bar menu-icon"></i>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="pages/charts/chartjs.html"> <span class="menu-title">회원
						관리</span> <i class="mdi mdi-contacts menu-icon" id="user"></i>
			</a></li>
		</ul>
	</nav>
</div>
<!-- partial -->

<script src="vendors/js/vendor.bundle.base.js"></script>
<script src="vendors/js/vendor.bundle.addons.js"></script>
<!-- endinject -->
<!-- Plugin js for this page-->
<!-- End plugin js for this page-->
<!-- inject:js -->
<script src="js/off-canvas.js"></script>
<script src="js/misc.js"></script>
<!-- endinject -->
<!-- Custom js for this page-->
<script src="js/dashboard.js"></script>
<!-- End custom js for this page-->
</body>

</html>


