<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<!-- step 이름 -->
	<h1>
		<strong>${lecture.lchapter }</strong>
	</h1>
	<br>
	<br>
	<!-- 영상 이름 -->
	<h3>
		<strong>${lecture.ltitle }</strong>
	</h3>

	<!-- 유튜브 api로 영상 가져오기 -->
	iframe link -> ${lecture.lvideolink }
	
	<!-- 영상 설명 -->
	<h6>
		${lecture.lcontent }
	</h6>
	
	<!-- 영상 주석  -->
	<div class = "container-fluid">
		<div class = "row ">
			<p class= "justify-content-end">영상 출처 : ${lecture.lvideolink }</p>
		</div>
	</div>
