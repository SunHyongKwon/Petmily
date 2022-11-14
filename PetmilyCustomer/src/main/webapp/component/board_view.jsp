<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
	<div class="row justify-content-center my-4 text-center">
		<h4>${postingDetail.ptitle}</h4>
	</div>

	<div class="row justify-content-between my-2">
		<div class="col-4 text-start align-self-center">
			<c:choose>
			
				<c:when test="${postingUimage eq null }">
					<li class="nav-item"><img src="user/profile_sample.png"
						height="60" width="60" class="rounded-circle" alt=""></li>
				</c:when>

				<c:otherwise>
					<li class="nav-item"><img src="user/${postingUimage }"
						height="40" width="40" class="rounded-circle" alt=""></li>
				</c:otherwise>

			</c:choose> <span class="mx-2"> ${postingUid}</span>
		</div>


		<div class="col-2 text-end align-self-center">조회수 :
			${postingView}</div>
	</div>

	<hr>

	<div class="row justify-content-between">
		<div class="col-4 text-start">
			<i class="bi bi-geo-alt" style="font-size: 1.7rem;"></i> <span
				class="mx-2">${postingDetail.plocation}</span>
		</div>


		<div class="col-2 text-end align-self-center">${postingDetail.pinitdate}</div>
	</div>

	<!-- img -->
	<c:if test="${not empty postingDetail.pimage3}">
		<div class="row justify-content-center text-center my-5">
			<div class="col-8">
				<img src="posting/${postingDetail.pimage3}" class="rounded my-1"
					alt="" style="width: 500px;"> <img
					src="posting/${postingDetail.pimage2}" class="rounded my-1" alt=""
					style="width: 500px;"> <img
					src="posting/${postingDetail.pimage1}" class="rounded my-1" alt=""
					style="width: 500px;">
			</div>
		</div>
	</c:if>
	<!-- 게시글 내용 -->
	<div class="row justify-content-center my-3">
		<div class="col-8 text-right">${postingDetail.pcontent}</div>

	</div>

	<hr>

	<div class="row my-2">
		<div class="col-4 text-start">

			<c:if test="${likeCheck eq '1'}">
				<!-- 좋아요를 누른 경우 -->
				<button type="button" class="btn btn-outline-danger active"
					data-bs-toggle="button" aria-pressed="true"
					onclick="location.href='posting_like_click.do?likeCheck=${likeCheck}&pid=${pid}'">
					<i class="bi bi-heart" style="font-size: 1.5rem;"></i>
				</button>
			</c:if>

			<c:if test="${likeCheck eq '0'}">
				<button type="button" class="btn btn-outline-danger"
					data-bs-toggle="button" aria-pressed="false"
					onclick="location.href='posting_like_click.do?likeCheck=${likeCheck}&pid=${pid}'">
					<i class="bi bi-heart" style="font-size: 1.5rem;"></i>
				</button>
			</c:if>
			<!-- arial-pressed 가 true이면 좋아요 1 추가 된다 이느낌인듯 -->
			${postingLike}

		</div>
	</div>

	<!-- 댓글 -->
	<div class="row justify-content-center my-2">
		<div class="col-2"></div>
		<div class="col-2 align-self-center">
			<img src="https://picsum.photos/50/50/?random" class="rounded-circle"
				alt=""> <span class="mx-2">username</span>
		</div>
		<div class="col-4 text-start align-self-center">
			<span>댓글에 무엇을 들어가야 될까요 고민고민하지마 걸 헤이 유고걸 데레데레뎃뎃 뎃 걸</span>
		</div>
		<div class="col-2 text-end align-self-center">
			<h6>2021/10/21 10:00:29</h6>
		</div>
		<div class="col-2"></div>
	</div>

	<form action="posting_reply_insert.do" method="get">
		<div class="row justify-content-center my-5">
			<div class="col-6">
				<input type="text" class="form-control" name="ureply"
					id="exampleFormControlInput1" placeholder="댓글을 입력해 주세요">
			</div>
			<input type="hidden" name="pid" value="${pid}">
			<div class="col-1">
				<input type="submit" class="btn btn-warning" value="입력">
			</div>
		</div>
	</form>

</div>

