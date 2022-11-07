<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">

	<jsp:include page="admin_header_sidebar.jsp" />
      
      
      <!-- partial -->
      <div class="main-panel">        
        <div class="content-wrapper">
          <div class="page-header">
          </div>
          
          
          <!--  게시물 작성 화면 -->
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


	<jsp:include page="admin_footer.jsp" />     
