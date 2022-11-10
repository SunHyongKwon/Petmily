<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script>
$(document).on('ready',function(){
	$('button[name=pstype]').on('click',function(){
		/* 클릭 했을 때 home_slide_1_click.do 로 넘겨 주면 됨 */
		var pstype = $(this).val();
		
		$.ajax({
            url:'home_slide_1_click.do',
            type:'POST',
            data:'pstype='+pstype,
            dataType:"json",
            success:function(response)
            {
                /* response를 리스트 형식으로 넘겨 줘야 됨 */
            }
         });
	})
})

</script>
	<section class="featured-product section-padding mb-15">
		<form action = "home_slide_1_click.do">
		<div class="container">
			<div class="row">

				<div class="col-12 text-center">
					<h2 class="mb-3">알면 알수록 쓸모있는 펫과사전</h2>
					<div class="btn-group mx-auto mb-2" role="group"
						aria-label="Default button group">
						<button type="button" class="btn btn-outline-dark clicked" name="pstype" value="dog">강아지</button>
						<button type="button" class="btn btn-outline-dark" name="pstype" value="cat">고양이</button>
						<button type="button" class="btn btn-outline-dark" name="pstype" value="etc">기타</button>
					</div>
				</div>
				<div class="container-fluid bg-trasparent my-4 p-3"
					style="position: relative;">
					<div
						class="row row-cols-1 row-cols-xs-2 row-cols-sm-2 row-cols-lg-4 g-3">
						
					<c:forEach var="psbreeds" items="${specList }" begin="1" end="4" step="1">
						<div class="col-3">
							<div class="card h-100 shadow-sm">
								<img
									src="${psbreeds.psimage }"
									class="card-img-top" alt="...">
								<div class="card-body">
									<div class="clearfix mb-3">
										<span style="color: #55BCD6; font-weight: 800;font-size: 24px; ">${psbreeds.psbreeds }</span> 
									</div>
									<h5 class="card-title"> ${fn:substring(psbreeds.pscontent,0,20) } </h5>
									<div class="text-center my-4">
										<!-- 자세히 보기 링크 펫과사전으로 걸어야 함 -->
										<a href="pet_dictionary_card.do" class="btn btn-warning">자세히 보기</a>
									</div>
									
								</div>
							</div>
						</div>
					</c:forEach>
					
					</div>
				</div>
				<div class="col-12 text-center">
					<!-- 자세히 보기 링크 펫과사전으로 걸어야 함 -->
					<a href="#" class="view-all">펫과사전 전체 보기</a>
				</div>

			</div>
		</div>
		</form>
	</section>


