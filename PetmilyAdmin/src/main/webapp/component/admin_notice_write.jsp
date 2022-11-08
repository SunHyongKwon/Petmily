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
</head>
<body>
	<jsp:include page="/component/header.jsp"></jsp:include><!-- header include -->
	<jsp:include page="/component/side.jsp"></jsp:include><!-- side include -->

	<!-- content include -->
	<!-- include자리 -->
	<div class="main-panel">
		<div class="content-wrapper" style="background-color: #ffffff">
			          <div class="row">
            <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body" style="padding-bottom: 0px;">
                  <h4 class="card-title">공지사항</h4>
                  <p class="card-description">
                    아래에 공지사항을 작성해 주세요
                  </p>
                  <form class="forms-sample">
                    <div class="form-group">
                      <label for="exampleInputName1">제목</label>
                      <input type="text" class="form-control" id="exampleInputName1" placeholder="Title">
                    </div>
                  <form class="forms-sample">
                    <div class="form-group">
                      <label for="exampleInputName1">작성자</label>
                      <input type="text" class="form-control" id="exampleInputName1" placeholder="Name">
                    </div>
                        
                        <div class="form-group row">
                          <label class="col-sm col-form-label">카테고리 선택</label>
                          <div class="col-sm">
                            <div class="form-check">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="membershipRadios" id="membershipRadios1" value="" checked>
                                도전 과제
                              </label>
                            </div>
                          </div>
                          <div class="col-sm">
                            <div class="form-check">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="membershipRadios" id="membershipRadios2" value="option2">
                                함께 산책
                              </label>
                            </div>
                          </div>
                          <div class="col-sm">
                            <div class="form-check">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="membershipRadios" id="membershipRadios2" value="option2">
                                매칭
                              </label>
                            </div>
                          </div>
                          <div class="col-sm">
                            <div class="form-check">
                              <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="membershipRadios" id="membershipRadios2" value="option2">
                                펫과사전
                              </label>
                            </div>
                          </div>
                        </div>
                      </div>
                                        
                    <div class="row">
           			 <div class="col-12 grid-margin stretch-card">
              			<div class="card">
                			<div class="card-body" style="padding-top: 0px;"
                			>
                     			<div class="form-group">
                      				<label for="exampleTextarea1">내용</label>
                      					<textarea class="form-control" id="exampleTextarea1" rows="4"></textarea>
                    				</div>
                    			<div>
                    		<button type="submit" class="btn btn-gradient-primary mr-2" style="background: linear-gradient(90deg, rgb(222,102,55) 0%, rgb(238,162,100) 100%);">작성하기</button> 
                  		</form>
                  	</form>
                   </div>
                 </div>
               </div>
             </div>
            </div>
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
