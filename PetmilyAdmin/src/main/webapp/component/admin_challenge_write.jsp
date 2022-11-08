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
           <div class="page-header">
          </div>
          
          <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">도전 과제</h4>
                  <p class="card-description">
                    아래에 도전 과제를 작성해 주세요
                  </p>
                  <form class="forms-sample">
                    <div class="form-group">
                      <label for="exampleInputName1">제목</label>
                      <input type="text" class="form-control" id="exampleInputName1" name="title" placeholder="Title">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">작성자</label>
                      <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Name">
                    </div>
                    <div class="form-group">
                    <label for="exampleFormControlSelect2">Step 선택</label>
                    <select class="form-control" id="exampleFormControlSelect2">
                      <option>Step 1</option>
                      <option>Step 2</option>
                      <option>Step 3</option>
                      <option>Step 4</option>
                      <option>Step 5</option>
                    </select>
                  </div>
                    <div class="form-group">
                      <label>File upload</label>
                      <input type="file" name="img[]" class="file-upload-default">
                      <div class="input-group col-xs-12">
                        <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image">
                        <span class="input-group-append">
                          <button class="file-upload-browse btn btn-gradient-primary" type="button" style="background: linear-gradient(90deg, rgb(222,102,55) 0%, rgb(238,162,100) 100%);">Upload</button>
                        </span>
                      </div>
                    </div>                  
                    <div class="form-group">
                      <label for="exampleTextarea1">내용</label>
                      <textarea class="form-control" id="exampleTextarea1" rows="4"></textarea>
                    </div>
                    <button type="submit" class="btn btn-gradient-primary mr-2" style="background: linear-gradient(90deg, rgb(222,102,55) 0%, rgb(238,162,100) 100%);">작성하기</button>
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
