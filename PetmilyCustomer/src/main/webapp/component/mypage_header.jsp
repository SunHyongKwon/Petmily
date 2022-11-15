<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img src="component/images/gold_foot.png"
				width="24" height="24">
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-between"
				id="collapsibleNavbar">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="#">${user.uid }님
							환영합니다!</a></li>
					<!-- <li class="nav-item"><a class="nav-link" href="#">등급혜택 보기</a>
					</li> -->
				</ul>
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="#">내 채팅목록</a></li>
					<!-- <li class="nav-item"><a class="nav-link" href="#">내 등급관리</a></li> -->
				</ul>
			</div>
		</div>
	</nav>
