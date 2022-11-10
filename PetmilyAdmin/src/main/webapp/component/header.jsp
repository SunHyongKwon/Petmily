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

			

				<ul class="navbar-nav justify-content-end align-items-center">


					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle mx-2" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> ${user.uname}유저 이름 </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="mypage_modify.do">마이페이지</a></li>
							<li><a class="dropdown-item" href="logout.do">로그아웃</a></li>
						</ul></li>

					<li class="nav-item"><img src="https://picsum.photos/40/40/?random"
						class="rounded-circle" alt="">
					</li>

				</ul>
			</div>
	</nav>
