<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
							data-bs-target="#step1" aria-expanded="false">STEP1</button>
						<div class="collapse" id="step1">
							<ul class="btn-toggle-nav">
								<li><button type="button"
										onclick="playThisVideo('GFOSv37Ck9g')">123</button></li>
								<li><button type="button"
										onclick="playThisVideo('WBgE9eYOTYE')">123</button></li>
								<li><a href="#"
									class="link-dark d-inline-flex text-decoration-none rounded my-2">1-3</a></li>
							</ul>
						</div>
					</li>
					<li class="border-top my-3"></li>
					<li class="mb-1">
						<button class="btn btn-toggle " data-bs-toggle="collapse"
							data-bs-target="#step2" aria-expanded="false">STEP2</button>
						<div class="collapse" id="step2">
							<ul class="btn-toggle-nav">
								<li><a href="#"
									class="link-dark d-inline-flex text-decoration-none rounded my-2">2-1</a></li>
								<li><a href="#"
									class="link-dark d-inline-flex text-decoration-none rounded my-2">2-2</a></li>
								<li><a href="#"
									class="link-dark d-inline-flex text-decoration-none rounded my-2">2-3</a></li>
							</ul>
						</div>
					</li>
					<li class="border-top my-3"></li>
					<li class="mb-1">
						<button class="btn btn-toggle " data-bs-toggle="collapse"
							data-bs-target="#step3" aria-expanded="false">STEP3</button>
						<div class="collapse" id="step3">
							<ul class="btn-toggle-nav">
								<li><a href="#"
									class="link-dark d-inline-flex text-decoration-none rounded my-2">3-1</a></li>
								<li><a href="#"
									class="link-dark d-inline-flex text-decoration-none rounded my-2">3-2</a></li>
								<li><a href="#"
									class="link-dark d-inline-flex text-decoration-none rounded my-2">3-3</a></li>
							</ul>
						</div>
					</li>
					<li class="border-top my-3"></li>
					<li class="mb-1">
						<button class="btn btn-toggle " data-bs-toggle="collapse"
							data-bs-target="#step4" aria-expanded="false">STEP4</button>
						<div class="collapse" id="step4">
							<ul class="btn-toggle-nav">
								<li><a href="#"
									class="link-dark d-inline-flex text-decoration-none rounded my-2">3-1</a></li>
								<li><a href="#"
									class="link-dark d-inline-flex text-decoration-none rounded my-2">3-2</a></li>
								<li><a href="#"
									class="link-dark d-inline-flex text-decoration-none rounded my-2">3-3</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<!-- 사이듣바 end -->

		<!-- 영상 나오는 곳 시작 -->
		<div class="col-8 mx-5">
			<div class="my-5"></div>

			<!-- 1. The <iframe> (and video player) will replace this <div> tag. -->
			<div id="player"></div>

			<script>
				// 2. This code loads the IFrame Player API code asynchronously.
				var tag = document.createElement('script');

				tag.src = "https://www.youtube.com/iframe_api";
				var firstScriptTag = document.getElementsByTagName('script')[0];
				firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

				// 3. This function creates an <iframe> (and YouTube player)
				//    after the API code downloads.
 				function onYouTubeIframeAPIReady() {
					console.log("youtube is ready");
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
						setTimeout(stopVideo, 6000);
						done = true;
					}
				}
				function stopVideo() {
					player.stopVideo();
				}
				
				var player; 
				function playThisVideo(vidid){
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
				
			</script>
		</div>
	</div>
</div>