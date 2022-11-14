<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	

	<!-- slide3 -->
	<div class="container ml-0 mr-0 mb-15" style="background-color: #FFFAF3; height : 40rem; ">
	  <div class="row">
	    <div class="col my-auto p-10">
		    <div class="mx-auto mt-5 shadow-lg p-3 mb-5 bg-white rounded">
		    <h4 align="center">< 연도별 유기동물 현황 ></h4>
		    	 <canvas id="myChart2"></canvas>
		    </div>
	     
	      <!-- 서울 데이터 광장 가서 데이터 가서와서 그거를 비교하는 거를 해볼 생각이다. -->
	    </div>
	    <div class="col">
	    	
	    	<h1 class="display-3 mt-15 mb-2">급증하는 유기동물 <br>문제 어떻게 풀어야 할까? </h1>
	    	<h3>이렇게 해보아요</h3>
	    	
	    	<div class="row mt-5">
	    		<div class="col">
	    			<img alt=".." src="component/images/homeadopt.png">
	    			<p class="mt-2">사지말고 버려진 아이들을 무료로 입양하세요</p>
	    			
	    		</div>
	    		<div class="col">
	    			<img alt=".." src="component/images/homeadopt.png">
	    			<p class="mt-2">신중히 입양하세요!</p>
	    		</div>
	    		<div class="col">
	    			<img alt=".." src="component/images/homeadopt.png">
	    			<p class="mt-2">가나다라바</p>
	    		</div>
	    	</div>
	      
	    </div>
	  </div>
	</div>
<script>

  
  //chart2
  const data2 = {
    labels: [
  	  	'2016',
	    '2017',
	    '2018',
	    '2019',
	    '2020'
	],
    datasets: [{
        label: '유기된 동물 마리수',
        data: [89732, 102593, 121077, 135791, 130401],
        borderColor: "#3e95cd",
        fill: false,
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
            text: '연별 유기동물 수'
	        }
	    }
  	}
  };
  
  
  </script>
  
  <script>
  
  const myChart2 = new Chart(
    document.getElementById('myChart2'),
    config2
  );
  </script>