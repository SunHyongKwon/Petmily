<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<nav class="navbar navbar-expand-lg shadow-sm">
		<div class="container-fluid">
			<a class="navbar-brand" href="home.do"><img
				src="component/images/logo.png" width="45" height="40"
				style="margin-right: 1rem;"> PETMILY</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
				aria-controls="navbarNavDropdown" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse " id="navbarNavDropdown">
				<ul class="navbar-nav mx-auto">

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="home.do">
						 HOME</a></li>

					<li class="nav-item"><a class="nav-link mx-2" href="pet_dictionary_card.do?pstype=dog">펫과사전</a>
					</li>

					<li class="nav-item"><a class="nav-link mx-2" href="challenge.do">도전</a>
					</li>

					<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle mx-2" href="posting.do?pcategory=volunteer" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> 함께 </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="posting.do?pcategory=volunteer">함께 봉사</a></li>
						<li><a class="dropdown-item" href="posting.do?pcategory=walk">함께 산책</a></li>
						<li><a class="dropdown-item" href="posting.do?pcategory=petcafe">함께 펫카페</a></li>
					</ul></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle mx-2" href="posting.do?pcategory=find" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> 구조 </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="posting.do?pcategory=find">찾아주세요</a></li>
						<li><a class="dropdown-item" href="posting.do?pcategory=found">찾았어요</a></li>
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
						data-bs-toggle="dropdown" aria-expanded="false"> ${user.uid } </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="mypage_modify.do">마이페이지</a></li>
							<li><a class="dropdown-item" href="logout.do">로그아웃</a></li>
						</ul></li>

					<c:choose>
					<c:when test="${user.uimage eq null }">
						<li class="nav-item"><img src="user/profile_sample.png"
							height="60" width="60" class="rounded-circle" alt=""></li>
					</c:when>

					<c:otherwise>
						<li class="nav-item"><img src="user/${user.uimage }"
							height="60" width="60" class="rounded-circle" alt=""></li>
					</c:otherwise>
					
				</c:choose>


				</ul>
			</div>
		</div>
	</nav>