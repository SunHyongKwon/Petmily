<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<nav class="navbar navbar-expand-lg shadow-sm">
		<div class="container-fluid">
			<a class="navbar-brand" href="home.do">Petmily</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
				aria-controls="navbarNavDropdown" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse " id="navbarNavDropdown">
				<ul class="navbar-nav mx-auto">

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="home.do">HOME</a></li>

					<li class="nav-item"><a class="nav-link mx-2" href="pet_dictionary_card.do">펫과사전</a>
					</li>

					<li class="nav-item"><a class="nav-link mx-2" href="challenge.do">도전</a>
					</li>

					<li class="nav-item"><a class="nav-link mx-2" href="#">매칭</a>
					</li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle mx-2" href="notice.do?ncategory=volunteer" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> 함께 </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="notice.do?ncategory=volunteer">함께 봉사</a></li>
							<li><a class="dropdown-item" href="notice.do?ncategory=walk">함께 산책</a></li>
							<li><a class="dropdown-item" href="notice.do?ncategory=petcafe">함께 펫카페</a></li>
						</ul></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle mx-2" href="notice.do?ncategory=find" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> 구조 </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="notice.do?ncategory=find">찾아주세요</a></li>
							<li><a class="dropdown-item" href="notice.do?ncategory=found">찾았어요</a></li>
						</ul></li>
				</ul>

				<ul class="navbar-nav justify-content-end align-items-center">
					<!-- 신청함 -->
					<li class="nav-item"><a class="nav-link mx-2" href="mypage_apply_list.do"><i class="bi bi-clipboard-check" style="font-size : 1.5rem;"></i></a>
					</li>
					
					<!-- 채팅 -->
					<li class="nav-item"><a class="nav-link mx-2" href="chatting.do"><i class="bi bi-send" style="font-size : 1.5rem;"></i></a>
					</li>
					
					<!-- 알림 일단 패스 -->
					<li class="nav-item"><a class="nav-link mx-2" href="#"><i
							class="bi bi-bell" style="font-size : 1.5rem;"></i></a></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle mx-2" href="mypage_modify.do" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> ${user.uname } </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="mypage_modify.do">마이페이지</a></li>
							<li><a class="dropdown-item" href="logout.do">로그아웃</a></li>
						</ul></li>

					<li class="nav-item"><img src="https://picsum.photos/40/40/?random"
						class="rounded-circle" alt="">
					</li>

				</ul>
			</div>
		</div>
	</nav>