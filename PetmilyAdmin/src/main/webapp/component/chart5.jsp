<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row mb-3">
			<div class="col-md-4">
				<div class="card text-center">
					 <canvas id="myChart"></canvas><br>
				 회원 등급 비율
				 </div>
			</div>
			<div class="col-md-4">
				<div class="card text-center">
					 <canvas id="myChart2"></canvas>
					일일 게시글 작성 갯수(7day)
				 </div>
			</div>
			<div class="col-md-4">
				<div class="card text-center">
				 <h4>일자별 요약(7day)</h4>
				 <table class="table">
					  <thead>
					    <tr>
					      <th scope="col">Day</th>
					      <th scope="col">작성글수</th>
					      <th scope="col">달린댓글수</th>
					      <th scope="col">매칭횟수</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <th scope="row">1</th>
					      <td>Mark</td>
					      <td>Otto</td>
					      <td>@mdo</td>
					    </tr>
					    <tr>
					      <th scope="row">2</th>
					      <td>Jacob</td>
					      <td>Thornton</td>
					      <td>@fat</td>
					    </tr>
					    <tr>
					      <th scope="row">3</th>
					      <td colspan="2">Larry the Bird</td>
					      <td>@twitter</td>
					    </tr>
					    <tr>
					      <th scope="row">4</th>
					      <td>Mark</td>
					      <td>Otto</td>
					      <td>@mdo</td>
					    </tr>
					    <tr>
					      <th scope="row">5</th>
					      <td>Jacob</td>
					      <td>Thornton</td>
					      <td>@fat</td>
					    </tr>
					    <tr>
					      <th scope="row">6</th>
					      <td colspan="2">Larry the Bird</td>
					      <td>@twitter</td>
					    </tr>
					    <tr>
					      <th scope="row">7</th>
					      <td colspan="2">Larry the Bird</td>
					      <td>@twitter</td>
					    </tr>
					  </tbody>
					</table>
				 </div>
			</div>
		</div>
		
		<div class="row ">
			<div class="col-6">
				<div class="card">
					<h3>최근 게시물 목록</h3>
				</div>		
			</div>
			<div class="col-6">
				<div class="card">
					<h3>최근 댓글 목록</h3>
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
  
  //chart2
  const data2 = {
    labels: [
  	  	'유기견',
	    '유기묘',
	    '기타'
	],
    datasets: [{
        label: 'My First Dataset',
        data: [150, 50, 100],
        backgroundColor: [
          'rgb(255, 99, 132)',
          'rgb(54, 162, 235)',
          'rgb(255, 205, 86)'
        ],
        hoverOffset: 4
      }]
  };

  const config2 = {
    type: 'line',
    data: data2,
    options: {
    	plugins: {
        title: {
            display: true,
            text: 'Custom Chart Title'
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
  
  const myChart2 = new Chart(
    document.getElementById('myChart2'),
    config2
  );
</script>
</body>
</html>