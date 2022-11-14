<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
#content {
	width: 30rem;
	height: 14rem;
	box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5);
	border-radius: 15px;
}

.bi-star, .bi-star-fill, .bi-star-half{
	font-size : 1.3rem;
	color : #FFE900;
}


</style>

	<div id="content">
		<div class="container">
			
			<div class="row">
				<div class="col-5 gy-3" align = "center">
					<!-- 프로필 이미지 넣는 곳  -->
					<img src="https://picsum.photos/150/150/?random"
						class="rounded-circle" alt="...">
					<br>
					
					<div align = "center">
						<!-- rate의 value에 유저의 별점이 들어오면 된다.  -->
						<c:set var="full" value="${userRating / 2 }" />
						<c:set var="half" value="${userRating % 2 }" />
						<c:set var="emp" value="${5 - full }" />
						
						<c:choose>
							<c:when test="${full >= 1}">
								<c:forEach var="full" begin="1" end="${full }">
									<i class="bi bi-star-fill"></i>
								</c:forEach>
							</c:when>
						</c:choose>
						
						<c:choose>
							<c:when test="${half == 1}">
									<i class="bi bi-star-half"></i>
							</c:when>
						</c:choose>
						
						<c:choose>
							<c:when test="${emp >= 1}">
								<c:forEach var="full" begin="1" end="${emp }">
									<i class="bi bi-star"></i>
								</c:forEach>
							</c:when>
						</c:choose>
					</div>
				</div>
				
				<div class="col-7 gy-3">
					<!-- 작성자명  -->
					<h5 style = "color : #FB9E58;"><strong>${applyUserInfoList.get(status.index).unickname }</strong></h5>
					<!-- 신청 보낸 날짜  -->
					<p>${apply.apdate }</p>
					<!-- 신청 시 보낸 메시지 내용 -->
					<p>${apply.apcontent }</p>
				</div>
			</div>
		</div>
	</div>
