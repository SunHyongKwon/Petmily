<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<style>
#content {
	width: 30rem;
	height: 14rem;
	box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5);
	border-radius: 15px;
}

.bi-star, .bi-star-fill, .bi-star-half {
	font-size: 1.3rem;
	color: #FFE900;
}
</style>

<script>
	$(document).ready(function() {

		$('#detail-1').click(function() {
			if ($('#detail-page-1').css("display") == "none") {
				$('#detail-page-1').show();
			} else {
				$('#detail-page-1').hide();
			}
		})

		$('#detail-2').click(function() {
			if ($('#detail-page-2').css("display") == "none") {
				$('#detail-page-2').show();
			} else {
				$('#detail-page-2').hide();
			}
		})

		$('#detail-3').click(function() {
			if ($('#detail-page-3').css("display") == "none") {
				$('#detail-page-3').show();
			} else {
				$('#detail-page-3').hide();
			}
		})

		$('#detail-4').click(function() {
			if ($('#detail-page-4').css("display") == "none") {
				$('#detail-page-4').show();
			} else {
				$('#detail-page-4').hide();
			}
		})

		$('#detail-5').click(function() {
			if ($('#detail-page-5').css("display") == "none") {
				$('#detail-page-5').show();
			} else {
				$('#detail-page-5').hide();
			}
		})
		$('button[name=func]').click(functon){
			var index = $(this).parent().parent().index();
			   $('#index').val(index);
			$("form").submit();
		}
	})
	
	
</script>



<form action="apply_update.do" name="applylist">
	<div class="container">
		<div class="row my-3">
			<h2>
				<strong>신청함</strong>
			</h2>
		</div>

		<div class="row my-2">
			<div class="col-1">
				<img src="component/images/companion.png"
					style="width: 3em; height: 3rem; margin-right: 0.6rem">
			</div>
			<div class="col-6 align-self-center" style="padding-top: 0.8rem">
				<h4>
					<strong>신청자 총 <strong style="color: #FB9E58">
							${fn:length(applyList) } </strong> 건
					</strong>
				</h4>
			</div>
		</div>
		<input type="hidden" name="index" id="index">
		<div class="row my-2">
			<table class="table">
				<thead align="center">
					<tr>
						<th class="col-1" scope="col">번호</th>
						<th class="col-5" scope="col">메시지</th>
						<th class="col-2" scope="col">작성자</th>
						<th class="col-2" scope="col">상세보기</th>
						<th class="col-2" scope="col">확인</th>
					</tr>
				</thead>
					
				<tbody>
					<!-- forEach로 돌리면 되고 페이징 넣어보자 id를 detail-1~5 , detail-page-1~5 -->
					<c:forEach var="apply" items="${applyList }" varStatus="status">
						<tr>
							<th style="text-align: center;" scope="row">${paging.endRow - status.index }</th>
							<td>${apply.aptitle}<!-- 상세보기 띄는 곳 -->
								<div class="my-4" id="detail-page-${status.count}"
									style="display: none">
									<jsp:include page="mypage_apply_list_detail.jsp"></jsp:include>
								</div> <!-- 상세보기 끝 -->
							</td>
							<td>${apply.user_uid}</td>
							<td style="text-align: center;">
								<!-- 상세보기 버튼 -->
								<button type="button" class="btn btn-outline-dark"
									id="detail-${status.count }" data-toggle="button">
									<i class="bi bi-caret-down"></i>
								</button>
							</td>
							<td style="text-align: center;">
								<button type="button" class="btn btn-outline-primary" value="accept"
									name="func" data-toggle="button"
									style="margin-right: 0.8rem;">수락</button>
								<button type="button" class="btn btn-outline-danger" value="decline"
									name="func" data-toggle="button">거절</button>
							</td>

						</tr>
						<input type="hidden" name="apid" value="${apply.apid }">
						<input type="hidden" name="posting_pid"
							value="${apply.posting_pid }">
					</c:forEach>
					<!-- 한 줄 끝 -->
	
				</tbody>
			</table>
			
		</div>

		<!-- 페이징 -->
		<div class="row justify-content-center my-2">

			<nav aria-label="Page navigation example ">
				<ul class="pagination justify-content-center">
					<c:set var="startPage" value="paging.startPage" />
					<c:choose>

						<c:when test="${paging.startPage eq '1'}">
							<!-- if -->
							<li class="page-item"><a class="page-link" href="#">Previous
							</a></li>
						</c:when>

						<c:otherwise>
							<!-- else -->
							<li class="page-item"><a class="page-link"
								href="posting.do?page=${paging.startPage - 1}&pcategory=${param.pcategory }">Previous
							</a></li>
						</c:otherwise>

					</c:choose>
					<!-- int = startPage; i <= endPage; i++ -->
					<c:forEach var="count" begin="${paging.startPage}"
						end="${paging.endPage}">
						<li class="page-item"><a class="page-link"
							href="posting.do?page=${count}&pcategory=${param.pcategory }">${count}
						</a></li>
					</c:forEach>

					<c:choose>

						<c:when test="${paging.totalPages eq paging.endPage}">
							<!-- if -->
							<li class="page-item"><a class="page-link" href="#">> </a></li>
						</c:when>

						<c:otherwise>
							<!-- else -->
							<li class="page-item"><a class="page-link"
								href="posting.do?page=${paging.endPage + 1}&pcategory=${param.pcategory }">Next
							</a></li>
						</c:otherwise>

					</c:choose>
				</ul>
			</nav>
		</div>
	</div>
</form>
