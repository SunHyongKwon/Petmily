<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>ADMIN HOME</title>
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


 <!-- header include -->
 <jsp:include page="/component/header.jsp"></jsp:include>
 <!-- side include -->
 <jsp:include page="/component/side.jsp"></jsp:include>
 

<!-- content include -->
<div class="main-panel">
        <div class="content-wrapper" style="background-color: #f5f5f5">
          <div class="row">
            <div class="col-md-6 grid-margin stretch-card">
              <div class="card" >

<!-- 차트 넣을 자리1 -->
	<jsp:include page="/component/chart1.jsp"></jsp:include>
	

              </div>
            </div>
            <div class="col-md-6 grid-margin stretch-card">
              <div class="card">
               
<!-- 차트 넣을 자리2 -->
	<jsp:include page="/component/chart2.jsp"></jsp:include>
               
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-12 grid-margin">
             
<!-- 차트 넣을 자리3 -->
			<jsp:include page="/component/chart3.jsp"></jsp:include>
	

               
            </div>
          </div>
          <div class="row">
            <div class="col-md-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table">
                    
<!-- 차트 넣을 자리4 -->
	<jsp:include page="/component/chart4.jsp"></jsp:include>

                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>



<!-- footer include -->
<jsp:include page="/component/footer.jsp"></jsp:include>


  <!-- plugins:js -->
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
