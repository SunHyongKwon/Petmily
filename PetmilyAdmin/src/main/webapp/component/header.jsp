<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="shortcut icon" href="images/LOGO.png" />
<style>
.box-bottom {
	width: 100%;
	height: 1px;
	border: 1px solid gray;
	box-shadow: 0 4px 4px -4px black;
}
</style>
</head>
<body>
	<div class="container-scroller">
		<!-- partial:../../partials/_navbar.html -->
		<nav
			class="navbar default-layout-navbar col-lg-12 col-12 p-0 d-flex flex-row">
			<div
				class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
				<a class="navbar-brand brand-logo" href="index.html"><img
					src="images/headerlogo.png" alt="logo"
					style="width: 250px; height: 50px; padding-left: 1.2rem;" /></a>
			</div>
			<div class="navbar-menu-wrapper d-flex align-items-stretch">
				<div class="search-field d-none d-md-block">
					<form class="d-flex align-items-center h-100" action="#">
						<div class="input-group"></div>
					</form>
				</div>
				<ul class="navbar-nav navbar-nav-right">
					<li class="nav-item nav-profile dropdown"><a
						class="nav-link dropdown-toggle" id="profileDropdown" href="#"
						data-toggle="dropdown" aria-expanded="false">
							<div class="nav-profile-img">
								<img src="images/faces/face1.jpg" alt="image"> <span
									class="availability-status online"></span>
							</div>
							<div class="nav-profile-text">
								<p class="mb-1 text-black">David Greymaax</p>
							</div>
					</a>
						<div class="dropdown-menu navbar-dropdown"
							aria-labelledby="profileDropdown">
							<a class="dropdown-item" href="#"> <i
								class="mdi mdi-cached mr-2 text-success"></i> Mypage
							</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#"> <i
								class="mdi mdi-logout mr-2 text-primary"></i> Logout
							</a>
						</div></li>
				</ul>
			</div>
		</nav>
	</div>
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
