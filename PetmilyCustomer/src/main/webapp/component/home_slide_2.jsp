<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=79cc95a0154045598e5c05072effa0f2"></script>



<!-- slide3 -->
<section>

	<div class="container ml-0 mr-0 mb-15"
		style="background-color: #E9F0FF; height : 40rem;">
		<div class="row">
			<div class="col ">
				<div class="mx-auto mt-5 shadow-lg p-3 mb-5 bg-white rounded" id="map" style="width:500px;height:500px;"></div>
				<!-- 유저 아이디 위치를 기반으로 가장 가까운 유기견 보호소를 보여주는 느낌 -->
				<!-- 로그인 전에는 그냥 기본 위치를 설정해서 거기에 가장 가까운 유기견 보호소를 보여주자 -->
			</div>
			<div class="col">
	
				<h1 class="display-1 mt-15 mb-2">
					우리동네<br> 유기견 보호소
				</h1>
				<br>
				<h2>근처 유기견 보호소를 확인해요</h2>
	
				<div class="row mt-5">
					<div class="col">
						<img alt=".." src="component/images/homevolunteer.png">
						<p class="mt-2">근처 유기견 보호소에서 봉사활동을 할 수 있어요</p>
	
					</div>
					<div class="col">
						<img alt=".." src="component/images/homevolunteer.png">
						<p class="mt-2">근처 유기견 보호소에서 봉사활동을 할 수 있어요</p>
					</div>
					<div class="col">
						<img alt=".." src="component/images/homevolunteer.png">
						<p class="mt-2">근처 유기견 보호소에서 봉사활동을 할 수 있어요</p>
					</div>
				</div>
	
			</div>
		</div>
	</div>
</section>

<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.494753466226925, 127.03002602066344),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		
		var markerPosition  = new kakao.maps.LatLng(37.494753466226925, 127.03002602066344);
		var marker = new kakao.maps.Marker({
			position: markerPosition 
		});
		    marker.setMap(map); 
		var iwContent = '<div style="padding:5px;">강남 유기동물 센터 <br><a href="https://map.kakao.com/link/map/강남유기동물센터,37.494753466226925,127.03002602066344" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Roast Bean Company,37.494753466226925,127.03002602066344" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
		    iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

		// 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
		    position : iwPosition, 
		    content : iwContent 
		});
		  
		// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
		infowindow.open(map, marker); 
		
	</script>
