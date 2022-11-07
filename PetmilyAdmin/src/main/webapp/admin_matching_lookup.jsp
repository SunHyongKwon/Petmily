<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">

	<jsp:include page="admin_header_sidebar.jsp" />
      
     <!--  partial -->
      <div class="main-panel">        
        <div class="content-wrapper">
          <div class="page-header">
          </div>
          
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
            
                
	<jsp:include page="admin_footer.jsp" />  


 