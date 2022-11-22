<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2",
	title: {
		text: "일별 방문자수 그래프(최근 7Day)"
	},
	axisX: {
		title: "월(MM)/일(dd)"
	},
	axisY: {
		title: "방문자수(명)",
		includeZero: true
	},
	data: [{
		type: "line",
		yValueFormatString: "####명",
		dataPoints : ${DATAPOINTS }
	}]
});
chart.render();
 
}
</script>
</head>
<body>
	<div class="container">
		<div class="row mb-3">
			<!--  
			<div class="col-md-4">
				<div class="card text-center">
					<canvas id="myChart"></canvas>
					<br> 회원 등급 비율
				</div>
			</div>
			-->
			<!-- 일별 월별 년별 선택 카드 전체 -->
			<div class="col-md-12 card ">
				<!-- 일별 월별 년별 선택 버튼 -->
				<div class="btn-group mt-2" role="group"
					aria-label="Basic radio toggle button group">
					<input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked> 
						<label class="btn btn-outline-secondary" for="btnradio1">일별 보기</label> 
					<input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off"> 
						<label class="btn btn-outline-secondary" for="btnradio2">월별 보기</label> 
					<input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off"> 
						<label class="btn btn-outline-secondary" for="btnradio3">년별 보기</label>
				</div>
				<div class="row mt-2 mb-2">
					<div class="col-md-6">
						<!-- 방문자수 차트 start-->
						<div class="card text-center">
							<div id="chartContainer" style="height: 380px; width: 100%;"></div>
							
						</div>
						<!-- 방문자수 차트 end-->
					</div>
					<div class="col-md-6">
						<!-- 요약 테이블 start -->
						<div class="card text-center">
							<h4>일자별 요약(7day)</h4>
							<table class="table">
								<thead style="background-color: #FB9E58;">
									<tr>
										<th scope="col">Day</th>
										<th scope="col">작성글수</th>
										<th scope="col">달린댓글수</th>
										<th scope="col">매칭횟수</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${DAYLIST }" var="dto3">
										<tr>
											<td>${dto3.date }</td>
											<td>${dto3.postingquantity }개</td>
											<td>${dto3.commentquantity }개</td>
											<td>${dto3.matchingquantity }건</td>
										</tr>
									</c:forEach>
									
								</tbody>
							</table>
						</div>
						<!-- 요약 테이블 end -->
					</div>
				</div>
			</div>
		</div>

		<div class="row ">
			<div class="col-6">
				<div class="card">
					<div class="container p-2">
						<div class="row">
							<div class="col">
								<h5>최근 게시물 목록</h5>
							</div>
							<div class="col">
								<h5 align="right">
									<a href="board_list.do">전체보기></a>
								</h5>
							</div>
						</div>
					</div>

					<table class="table">
						<thead style="background-color: #FB9E58;">
							<tr>
								<th scope="col">작성일시</th>
								<th scope="col">게시판</th>
								<th scope="col">제목</th>
								<th scope="col">내용</th>
								<th scope="col">삭제</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${POSTLIST }" var="dto1">
								<tr>
									<td>${dto1.pinitdate }</td>
									<td>${dto1.pcategory }</td>
									<td>${dto1.ptitle }</td>
									<td>${dto1.pcontent }..</td>
									<td>
									<input type="button" value="삭제">
									<td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div class="col-6">
				<div class="card">
					<div class="container p-2">
						<div class="row">
							<div class="col">
								<h5>최근 댓글 목록</h5>
							</div>
							<div class="col">
								<h5 align="right">
									<a href="board_list.do">전체보기></a>
								</h5>
							</div>
						</div>
					</div>
					<table class="table">
						<thead style="background-color: #FB9E58;">
							<tr>
								<th scope="col">작성일시</th>
								<th scope="col">게시판</th>
								<th scope="col">내용</th>
								<th scope="col">삭제</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${COMMENTLIST }" var="dto2">
								<tr>
									<td>${dto2.pinitdate }</td>
									<td>${dto2.pcategory }</td>
									<td>${dto2.pcontent }</td>
									<td><input type="button" value="삭제">
									<td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<form action="#" name="chartdata">
		<input type="hidden" name="UlevelCount" value="${ULEVELCOUNT }">

	</form>
	<script>
//chart1
var UlevelCountdata=document.chartdata.UlevelCount.value;
var arrulevelcount=UlevelCountdata.split(',');


  const data = {
    labels: [
  	  	'bronze',
	    'silver',
	    'gold'
	],
    datasets: [{
        label: 'User Levle Graph',
        data: arrulevelcount,
        backgroundColor: [
          'rgb(154, 101, 51)',
          'rgb(192, 192, 192)',
          'rgb(178, 147, 36)'
        ],
        hoverOffset: 4
      }],
      
  };

  
  
  const config = {
    type: 'pie',
    data: data,
    options: {
    	plugins: {
            title: {
                display: true,
                text: '회원 등급별 퍼센트'
    	        }
    	    }
    }
   
  };  
</script>
	<script>
  const myChart = new Chart(
    document.getElementById('myChart'),
    config
  );
  
 
</script>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>