<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
		
		
	})
</script>




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
					<strong>신청자 총 <strong style="color: #FB9E58"> 2 </strong>
						건
					</strong>
				</h4>
			</div>
		</div>

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
					<tr>
						<th style="text-align: center;" scope="row">1</th>
						<td>책임감 있는 반려인이 되겠습니다. <!-- 상세보기 띄는 곳 -->
							<div class="my-4" id="detail-page-1" style="display: none">
								<jsp:include page="mypage_apply_list_detail.jsp"></jsp:include>
							</div> <!-- 상세보기 끝 -->
						</td>
						<td>스마일맨</td>
						<td style="text-align: center;">
							<!-- 상세보기 버튼 -->
							<button type="button" class="btn btn-outline-dark" id="detail-1"
								data-toggle="button">
								<i class="bi bi-caret-down"></i>
							</button>
						</td>
						<td style="text-align: center;">
							<button type="button" class="btn btn-outline-primary"
								data-toggle="button" style="margin-right : 0.8rem;">
								수락
							</button>
							<button type="button" class="btn btn-outline-danger"
								data-toggle="button">
								거절
							</button>
						</td>
					</tr>
					<!-- 한 줄 끝 -->

				</tbody>
			</table>
			
			<div class = "row justify-content-center">
				
			</div>
		</div>

	</div>
