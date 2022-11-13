<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script>
$(document).ready(function(){
	$(".btn-group > button.btn").on("click", function(){
		var thisBtn = $(this);
	 	thisBtn.addClass('active').siblings().removeClass('active');
		var btnValue = thisBtn.val();
		
		$('#pstype').val(btnValue);
		
		document.homeSlide1.submit();
	});
	
	$('button[name=detail]').click(function(){
		
		
		location.href = 'pet_dictionary_card.do?pstype=' + $('#pstype').val();
	})
});
</script>
	<section class="featured-product section-padding mb-15">
		<form action = "home.do" name="homeSlide1">
		<div class="container">
			<div class="row">

				<div class="col-12 text-center">
					<h2 class="mb-3">알면 알수록 쓸모있는 펫과사전</h2>
					<div class="btn-group" role="group"
						aria-label="Default button group">
						<input type="hidden" id="pstype" name="pstype" value="dog">
						<button type="button" class="btn" value="dog">강아지</button>
						<button type="button" class="btn" value="cat">고양이</button>
						<button type="button" class="btn" value="etc">기타</button>
					</div>
				</div>
				<div class="container-fluid bg-trasparent my-4 p-3"
					style="position: relative;">
					<div
						class="row row-cols-1 row-cols-xs-2 row-cols-sm-2 row-cols-lg-4 g-3">
						
					<c:forEach var="psbreeds" items="${specList }">
						<div class="col-3">
							<div class="card h-100">
								<img
									src="1.png" width="200" height="200"
									class="card-img-top" alt="...">
								<div class="card-body text-center">
									<div class="clearfix mb-3">
										<span style=" font-weight: 800; font-size:1.2rem; ">${psbreeds.psbreeds }</span> 
									</div>
									<div class="text-center my-4">
										<button type="button" class="btn btn-warning" name="detail">자세히 보기</button>
									</div>
									
								</div>
							</div>
						</div>
					</c:forEach>
					
					</div>
				</div>
				<div class="col-12 text-center">
					<!-- 자세히 보기 링크 펫과사전으로 걸어야 함 -->
					<a href="pet_dictionary_card.do?pstype=dog" class="view-all">펫과사전 전체 보기</a>
				</div>

			</div>
		</div>
		</form>
	</section>


