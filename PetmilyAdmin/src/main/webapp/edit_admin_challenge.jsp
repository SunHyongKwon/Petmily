<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">

	<%-- <jsp:include page="admin_header_sidebar.jsp" /> --%>
      
      
     <!--  partial -->
      <div class="main-panel">        
        <div class="content-wrapper">
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
                      <input type="text" class="form-control" id="exampleInputName1" placeholder="Title">
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
                          <button class="file-upload-browse btn btn-gradient-primary" type="button">Upload</button>
                        </span>
                      </div>
                    </div>                  
                    <div class="form-group">
                      <label for="exampleTextarea1">내용</label>
                      <textarea class="form-control" id="exampleTextarea1" rows="4"></textarea>
                    </div>
                    <button type="submit" class="btn btn-gradient-primary mr-2" style="background: linear-gradient(90deg, rgb(222,102,55) 0%, rgb(238,162,100) 100%);">수정하기</button>
                  </form>
                </div>
              </div>
            </div>
            
                
	<jsp:include page="admin_footer.jsp" /> 



