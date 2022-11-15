<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Petmily</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="shortcut icon" href="component/images/logo.png">
<script>
	$(document).ready(function() {
		$('#title').html("<strong>" + "강아지 등록제" + "</strong>");

		$("button[name=category]").click(function() {
			var title = $(this).text();
			var value = $(this).val();
			console.log(value);
			$('#title').html("<strong>" + title + "</strong>");
			$('#category_num').val(value);
		});

	})
</script>

</head>
<body>


	<jsp:include page="component/header.jsp"></jsp:include>


	<div class="container-fluid">
		<div class="row">
			<!-- 사이드바 시작 -->
			<div class="col-3">
				<div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
					<a href="/"
						class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
					</a>
					<ul class="list-unstyled ps-0">
						<li class="mb-1">
							<button class="btn btn-toggle" data-bs-toggle="collapse"
								data-bs-target="#step1" aria-expanded="false">음식 기본 상식</button>
							<div class="collapse" id="step1">
								<ul class="btn-toggle-nav">
									<li><button type="button" class="btn btn-link"
											name="category" id="1-1" value="1-1"
											onclick="playThisVideo('xgxTLG3yS5Y')">고양이 사료에 대한 모든
											것</button></li>
									<li><button type="button" class="btn btn-link"
											name="category" id="1-1" value="1-2"
											onclick="playThisVideo('ha-IwCLxVFA')">강아지 사료에 대한 모든
											것</button></li>
								</ul>
							</div>
						</li>
						<li class="border-top my-3"></li>
						<li class="mb-1">
							<button class="btn btn-toggle " data-bs-toggle="collapse"
								data-bs-target="#step2" aria-expanded="false">병원 및 기본
								상식</button>
							<div class="collapse" id="step2">
								<ul class="btn-toggle-nav">
									<li><button type="button" class="btn btn-link"
											name="category" id="2-1" value="2-1"
											onclick="playThisVideo('f-KOnpiRbkc')">강아지 한방 병원</button></li>
									<li><button type="button" class="btn btn-link"
											name="category" id="2-2" value="2-2"
											onclick="playThisVideo('2xhRwydzHWw')">강아지 등록제</button></li>
									<li><button type="button" class="btn btn-link"
											name="category" id="2-3" value="2-3"
											onclick="playThisVideo('DMQW9ccEd1Q')">강아지 건강검진</button></li>
									<li><button type="button" class="btn btn-link"
											name="category" id="2-4" value="2-4"
											onclick="playThisVideo('Y-8g7R9PAC8')">강아지 예방접종</button></li>
									<li><button type="button" class="btn btn-link"
											name="category" id="2-5" value="2-5"
											onclick="playThisVideo('bFLhXVBQ8sw')">강아지 관련 질병</button></li>
									<li><button type="button" class="btn btn-link"
											name="category" id="2-6" value="2-7"
											onclick="playThisVideo('02zzoR1nR6o')">강아지 중성화 수술</button></li>
								</ul>
							</div>
						</li>
						<li class="border-top my-3"></li>
						<li class="mb-1">
							<button class="btn btn-toggle " data-bs-toggle="collapse"
								data-bs-target="#step3" aria-expanded="false">분양 기본 상식</button>
							<div class="collapse" id="step3">
								<ul class="btn-toggle-nav">
									<li><button type="button" class="btn btn-link"
											name="category" id="3-1" value="3-1"
											onclick="playThisVideo('RwAQNVLkHk4')">분양 받기 전 기본 상식</button></li>
									<li><button type="button" class="btn btn-link"
											name="category" id="3-2" value="3-2"
											onclick="playThisVideo('eHfGcbokbl0')">분양 시 꿀팁</button></li>
									<li><button type="button" class="btn btn-link"
											name="category" id="3-3" value="3-3"
											onclick="playThisVideo('v1XvXbwhYxc')">건강한 강아지 분양 받는
											법</button></li>
								</ul>
							</div>
						</li>
						<li class="border-top my-3"></li>

					</ul>
				</div>
			</div>
			<!-- 사이듣바 end -->

			<!-- 영상 나오는 곳 시작 -->
			<div class="col-8 mx-5">
				<form action="lecture_check.do" name="lectureCheck">
					<input type="hidden" id="category_num">
					<div class="row my-5 justify-content-center text-center">
						<h3 id="title" style="color: #de6637"></h3>
					</div>
					<div class="row my-5 justify-content-between text-center">
						<div class="col-3">
							<h5 id="percent"></h5>
						</div>
						<div class="col-3" style="display: none" id="complete_form">
							<input type="submit" class="btn btn-warning" value="완료">
						</div>
					</div>
					<div class="row my-5 justify-content-center">
						<div class="col-8">
							<div id="player"></div>
						</div>
					</div>
					<div class="row my-5">
						<div id="url" class="my-4 text-end"></div>
					</div>
					<!-- 1. The <iframe> (and video player) will replace this <div> tag. -->

					<script>
						// 2. This code loads the IFrame Player API code asynchronously.
						var tag = document.createElement('script');

						tag.src = "https://www.youtube.com/iframe_api";
						var firstScriptTag = document
								.getElementsByTagName('script')[0];
						firstScriptTag.parentNode.insertBefore(tag,
								firstScriptTag);

						// 3. This function creates an <iframe> (and YouTube player)
						//    after the API code downloads.
						var player;
						function onYouTubeIframeAPIReady() {

							player = new YT.Player('player', {
								height : '360',
								width : '640',
								videoId : '2xhRwydzHWw',
								events : {
									'onReady' : onPlayerReady,
									'onStateChange' : onPlayerStateChange
								}
							});
						}

						// 4. The API will call this function when the video player is ready.
						function onPlayerReady(event) {
							event.target.playVideo();
						}

						// 5. The API calls this function when the player's state changes.
						//    The function indicates that when playing a video (state=1),
						//    the player should play for six seconds and then stop.
						var done = false;
						function onPlayerStateChange(event) {
							if (event.data == YT.PlayerState.PLAYING && !done) {

								done = true;
							}
						}
						function stopVideo() {
							player.stopVideo();
						}

						var player;
						function playThisVideo(vidid) {
							if (player) {
								player.destroy();
							}
							player = new YT.Player('player', {
								height : '360',
								width : '640',
								videoId : vidid,
								events : {
									'onReady' : onPlayerReady,
									'onStateChange' : onPlayerStateChange
								}
							});
						}

						function onPlayerReady(event) {
							var url = player.getVideoUrl();
							$('#url').text("출처 : " + url);
						}

						function onPlayerStateChange(event) {
							var total = player.getDuration();
							var see = player.getCurrentTime();
							var percentTemp = (see / total) * 100;
							var percent = Math.floor(percentTemp);
							$('#percent').html("영상 본 시간 : " + percent + "%");
							if (percent > 90) {
								$('#complete_form').show();
							} else {
								$('#complete_form').hide();
							}
						}
					</script>
				</form>
			</div>

		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>