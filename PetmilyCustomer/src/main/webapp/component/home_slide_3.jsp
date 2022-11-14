<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	

	<!-- slide3 -->
	<div class="container ml-0 mr-0 mb-15" style="background-color: #FFFAF3; height : 40rem; width : 1440px; height : 789px">
	  <div class="row">
	    <div class="col my-auto p-10">
	    	 <canvas id="myChart2"></canvas>
	      그래프 들어갈곳
	      <!-- 서울 데이터 광장 가서 데이터 가서와서 그거를 비교하는 거를 해볼 생각이다. -->
	    </div>
	    <div class="col">
	    	
	    	<h1 class="display-3 mt-10 mb-2">급증하는 유기동물 <br>문제 어떻게 풀어야 할까? </h1>
	    	<h3>이렇게 해보아요</h3>
	    	
	    	<div class="row mt-3">
	    		<div class="col">
	    			<img alt=".." src="component/images/homeadopt.png">
	    			<p class="mt-2">사지말고 버려진 아이들을 무료로 입양하세요</p>
	    			
	    		</div>
	    		<div class="col">
	    			<img alt=".." src="component/images/homeadopt.png">
	    			<p class="mt-2">사지말고 버려진 아이들을 무료로 입양하세요</p>
	    		</div>
	    		<div class="col">
	    			<img alt=".." src="component/images/homeadopt.png">
	    			<p class="mt-2">사지말고 버려진 아이들을 무료로 입양하세요</p>
	    		</div>
	    	</div>
	      
	    </div>
	  </div>
	</div>
<script>

  
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
    type: 'doughnut',
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
  
  const myChart2 = new Chart(
    document.getElementById('myChart2'),
    config2
  );
  </script>