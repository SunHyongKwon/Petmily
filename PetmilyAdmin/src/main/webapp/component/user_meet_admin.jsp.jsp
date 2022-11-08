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
 <jsp:include page="/component/header.jsp"></jsp:include><!-- header include -->
 <jsp:include page="/component/side.jsp"></jsp:include><!-- side include -->

<!-- content include -->
<!-- include자리 -->
<div class="main-panel">        
        <div class="content-wrapper" style="background-color: #ffffff">
   
          
          <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">함께 산책(매칭)</h4>
                  <p class="card-description">
                    함께 산책 승인(매칭) 내용을 조회할 수 있습니다.
                  </p>
                  <form class="forms-sample">
                    <div class="form-group">
                      <label for="exampleInputName1">게시물 번호</label>
                      <input type="text" class="form-control" id="exampleInputName1" placeholder="PostNumber">
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">반려인 ID</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" />
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">비반려인 ID</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" />
                          </div>
                        </div>
                      </div>
                    </div>                    
                    <div class="form-group">
                      <label for="exampleInputEmail3">날짜</label>
                      <input type="email" class="form-control" id="exampleInputEmail3" placeholder="yyyy-mm-dd">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">시간</label>
                      <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Time">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">장소</label>
                      <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Place">
                    </div>
               
                  </form>
                </div>
              </div>
            </div>
            </div>
       
            



<jsp:include page="/component/footer.jsp"></jsp:include><!-- footer include -->


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
