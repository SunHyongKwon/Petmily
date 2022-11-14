<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#square-bronze {
	width: 6.5rem;
	height: 6.5rem;
	background: linear-gradient(90deg, rgb(129, 93, 67) 0%,
		rgb(166, 128, 96) 35%, rgb(229, 203, 181) 100%);
	border-radius: 15px;
}

#square-silver {
	width: 6.5rem;
	height: 6.5rem;
	background: linear-gradient(90deg, rgb(174, 176, 180) 0%,
		rgb(231, 230, 233) 75%, rgb(242, 242, 242) 100%);
	border-radius: 15px;
}

#square-gold {
	width: 6.5rem;
	height: 6.5rem;
	background: linear-gradient(90deg, rgb(255, 179, 2) 0%, rgb(254, 195, 0)
		35%, rgb(255, 223, 1) 100%);
	border-radius: 15px;
}

.bi-lock, .bi-play-circle, .bi-cup-straw, .bi-gift, .bi-flower1,
	.bi-flower2, .bi-globe-asia-australia {
	font-size: 4rem;
	color: white;
	text-align: center;
}
</style>

<div class="container">
	<h3 style="color: #de6637; margin-bottom: 1.3rem;">
		<strong>도전과제 목록</strong>
	</h3>
	<!-- 영상 이름 -->
	<p style="color: #a3a3a3; margin-bottom: 0;">
		<small>당신이 달성한 도전과제를 확인 할 수 있어요.</small>
	</p>
	<p style="color: #a3a3a3; margin-bottom: 2rem;">
		<small>모든 도전과제를 달성하기 위해 지금 도전하세요.</small>
	</p>

	<div class="row">
		<h5 style="margin-bottom: 1.3rem;">도전 수강 뱃지</h5>
	</div>

	<div class="row text-center">
		<div class="col-2 mx-2 my-2" id="square-bronze">
			<c:choose>
				<c:when test="${checkChapter ge 1 }">
					<i class="bi bi-play-circle"></i>
				</c:when>
				<c:otherwise>
					<i class="bi bi-lock"></i>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="col-2 mx-2 my-2" id="square-silver">
			<c:choose>
				<c:when test="${checkChapter ge 2 }">
					<i class="bi bi-play-circle"></i>
				</c:when>
				<c:otherwise>
					<i class="bi bi-lock"></i>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="col-2 mx-2 my-2" id="square-gold">
			<c:choose>
				<c:when test="${checkChapter ge 3 }">
					<i class="bi bi-play-circle"></i>
				</c:when>
				<c:otherwise>
					<i class="bi bi-lock"></i>
				</c:otherwise>
			</c:choose>
		</div>
	</div>

	<hr>

	<div class="row">
		<h5 style="margin-bottom: 1.3rem;">같이산책 뱃지</h5>
	</div>

	<div class="row text-center">
		<div class="col-2 mx-2 my-2" id="square-bronze">
			<c:choose>
				<c:when test="${checkWalk ge 1 }">
					<i class="bi bi-globe-asia-australia"></i>
				</c:when>
				<c:otherwise>
					<i class="bi bi-lock"></i>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="col-2 mx-2 my-2" id="square-silver">
			<c:choose>
				<c:when test="${checkWalk ge 2 }">
					<i class="bi bi-globe-asia-australia"></i>
				</c:when>
				<c:otherwise>
					<i class="bi bi-lock"></i>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="col-2 mx-2 my-2" id="square-gold">
			<c:choose>
				<c:when test="${checkWalk ge 3 }">
					<i class="bi bi-globe-asia-australia"></i>
				</c:when>
				<c:otherwise>
					<i class="bi bi-lock"></i>
				</c:otherwise>
			</c:choose>
		</div>
	</div>

	<hr>

	<div class="row">
		<h5 style="margin-bottom: 1.3rem;">같이 펫카페 뱃지</h5>
	</div>

	<div class="row text-center">
		<div class="col-2 mx-2 my-2" id="square-bronze">
			<c:choose>
				<c:when test="${checkPetcafe ge 1 }">
					<i class="bi bi-cup-straw"></i>
				</c:when>
				<c:otherwise>
					<i class="bi bi-lock"></i>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="col-2 mx-2 my-2" id="square-silver">
			<c:choose>
				<c:when test="${checkPetcafe ge 2 }">
					<i class="bi bi-cup-straw"></i>
				</c:when>
				<c:otherwise>
					<i class="bi bi-lock"></i>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="col-2 mx-2 my-2" id="square-gold">
			<c:choose>
				<c:when test="${checkPetcafe ge 3 }">
					<i class="bi bi-cup-straw"></i>
				</c:when>
				<c:otherwise>
					<i class="bi bi-lock"></i>
				</c:otherwise>
			</c:choose>
		</div>
	</div>

	<hr>

	<div class="row">
		<h5 style="margin-bottom: 1.3rem;">같이 봉사 뱃지</h5>
	</div>

	<div class="row text-center">
		<div class="col-2 mx-2 my-2" id="square-bronze">
			<c:choose>
				<c:when test="${checkVolunteer ge 1 }">
					<i class="bi bi-gift"></i>
				</c:when>
				<c:otherwise>
					<i class="bi bi-lock"></i>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="col-2 mx-2 my-2" id="square-silver">
			<c:choose>
				<c:when test="${checkVolunteer ge 2 }">
					<i class="bi bi-gift"></i>
				</c:when>
				<c:otherwise>
					<i class="bi bi-lock"></i>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="col-2 mx-2 my-2" id="square-gold">
			<c:choose>
				<c:when test="${checkVolunteer ge 3 }">
					<i class="bi bi-gift"></i>
				</c:when>
				<c:otherwise>
					<i class="bi bi-lock"></i>
				</c:otherwise>
			</c:choose>
		</div>
	</div>

	<hr>

	<div class="row">
		<h5 style="margin-bottom: 1.3rem;">찾아주세요 뱃지</h5>
	</div>

	<div class="row text-center">
		<div class="col-2 mx-2 my-2" id="square-bronze">
			<c:choose>
				<c:when test="${checkFind ge 1 }">
					<i class="bi bi-flower2"></i>
				</c:when>
				<c:otherwise>
					<i class="bi bi-lock"></i>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="col-2 mx-2 my-2" id="square-silver">
			<c:choose>
				<c:when test="${checkFind ge 2 }">
					<i class="bi bi-flower2"></i>
				</c:when>
				<c:otherwise>
					<i class="bi bi-lock"></i>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="col-2 mx-2 my-2" id="square-gold">
			<c:choose>
				<c:when test="${checkFind ge 3 }">
					<i class="bi bi-flower2"></i>
				</c:when>
				<c:otherwise>
					<i class="bi bi-lock"></i>
				</c:otherwise>
			</c:choose>
		</div>
	</div>

	<hr>

	<div class="row">
		<h5 style="margin-bottom: 1.3rem;">찾았어요 뱃지</h5>
	</div>

	<div class="row text-center">
		<div class="col-2 mx-2 my-2" id="square-bronze">
			<c:choose>
				<c:when test="${checkFound ge 1 }">
					<i class="bi bi-flower1"></i>
				</c:when>
				<c:otherwise>
					<i class="bi bi-lock"></i>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="col-2 mx-2 my-2" id="square-silver">
			<c:choose>
				<c:when test="${checkFound ge 2 }">
					<i class="bi bi-flower1"></i>
				</c:when>
				<c:otherwise>
					<i class="bi bi-lock"></i>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="col-2 mx-2 my-2" id="square-gold">
			<c:choose>
				<c:when test="${checkFound ge 3 }">
					<i class="bi bi-flower1"></i>
				</c:when>
				<c:otherwise>
					<i class="bi bi-lock"></i>
				</c:otherwise>
			</c:choose>
		</div>
	</div>

</div>