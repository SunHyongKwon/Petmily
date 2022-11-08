<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>

<style>
  /* 사이드바 래퍼 스타일 */
  
  #page-wrapper {
    padding-left: 250px;
  }
  
  #sidebar-wrapper {
    position: fixed;
    width: 250px;
    height: 100%;
    margin-left: -250px;
    background: #fff;
    overflow-x: hidden;
    overflow-y: auto;
  }
  
  #page-content-wrapper {
    width: 100%;
    padding: 20px;
  }
  /* 사이드바 스타일 */
  
  .sidebar-nav {
    width: 250px;
    margin: 0;
    padding: 0;
    list-style: none;
  }
  
  .sidebar-nav li {
    text-indent: 1.5em;
    line-height: 2.8em;
  }
  
  .sidebar-nav li a {
    display: block;
    text-decoration: none;
    color: black;
  }
  
  .sidebar-nav li a:hover {
    color: black;
    background: rgba(255, 255, 255, 0.2);
  }
  
  .sidebar-nav > .sidebar-brand {
    font-size: 1.3em;
    line-height: 3em;
  }

</style>
</head>
<body>
<div id="page-wrapper">
  <!-- 사이드바 -->
  <div id="sidebar-wrapper">
    <div class="p-4 pt-5">
      <ul class="sidebar-nav mb-5">
        <li class="sidebar-brand">
          <h3 style="color: #e8853e;"><strong>마이페이지</strong></h3>
        </li>
        <li><a href="mypage_modify.do">
          <img src="component/images/modify.png" width="20" height="20">
          개인정보수정</a></li>
        <li><a href="mypage_challenge_list.do">
          <img src="component/images/chalinge.png" width="20" height="20">  
          도전과제 목록</a></li>
        <li>조회</li>
        <li><a href="mypage_1365.do">
          <img src="component/images/search.png" width="20" height="20">
          1365적립</a></li>
        <li><a href="#">
          <img src="component/images/search.png" width="20" height="20">
          참여내역</a></li>
        <li><a href="#">
          <img src="component/images/search.png" width="20" height="20">
          작성내역</a></li>
      </ul>
    </div>
  </div>
  <!-- /사이드바 -->

  <!-- 본문 -->
 
  <!-- /본문 -->
</div>

</body>
</html>