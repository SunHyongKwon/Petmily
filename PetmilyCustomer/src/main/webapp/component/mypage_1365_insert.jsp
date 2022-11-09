<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="content" class="ps-4">
	<div style="color: #e8853e;">
		<h2>
			<strong>1365적립하기</strong>
		</h2>
	</div>
	<div>
		<h6>
			늘 마음뿐이던 자원봉사!<br> 이제 1365와 함께 자원봉사의 주인공이 되어보세요!<br>
			<br> 내게 꼭 맞는 ‘맞춤형 자원봉사’를 검색할 수 있습니다.<br> 자원봉사 실적관리에서 확인서
			발급까지 한번에 해결할 수 있습니다.<br> 자원봉사종합보험을 통해 자원봉사 활동 중 발생할 수 있는
			사고위험으로부터 자원봉사자를 보호합니다.<br>
		</h6>
	</div>
	<hr>
	<div class="row">
		<!-- text field + 제목 -->
		<div class="col-5 mb-3 gy-2">
			<label for="exampleFormControlInput1" class="form-label">봉사번호
			</label> <input type="1365num" class="form-control"
				id="exampleFormControlInput1" placeholder="봉사번호를 입력해주세요."
				value="${kakao.email }">
		</div>
		<button class="btn btn-warning col-1 gy-2 align-self-center"
			type="button"
			style="margin-top: 1.5rem; padding-top: 0.7rem; padding-bottom: 0.7rem; background-color: #e8853e;">인증</button>
	</div>
	<hr>
	<div class="col-5 mb-3 gy-2">
		<label for="exampleFormControlInput1" class="form-label">봉사명 </label>
		<input type="1365num" class="form-control"
			id="exampleFormControlInput1" value="${kakao.email }">
	</div>
	<div class="col-5 mb-3 gy-2">
		<label for="exampleFormControlInput1" class="form-label">봉사유형
		</label> <input type="1365num" class="form-control"
			id="exampleFormControlInput1" value="${kakao.email }">
	</div>
	<div class="col-5 mb-3 gy-2">
		<label for="exampleFormControlInput1" class="form-label">봉사날짜
		</label> <input type="1365num" class="form-control"
			id="exampleFormControlInput1" value="${kakao.email }">
	</div>
	<div class="col-5 mb-3 gy-2">
		<label for="exampleFormControlInput1" class="form-label">봉사장소
		</label> <input type="1365num" class="form-control"
			id="exampleFormControlInput1" value="${kakao.email }">
	</div>
	<div class="align-self-end">
		<button class="btn col-1 gy-2 align-self-center" type="button"
			style="margin-top: 1.5rem; padding-top: 0.7rem; padding-bottom: 0.7rem; background-color: #e8853e;">봉사등록</button>
	</div>
</div>
