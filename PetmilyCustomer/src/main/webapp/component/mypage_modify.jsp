<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.form-label {
	font-weight: bold;
}

.form-control {
	color: #a3a3a3;
	padding-top: 0.75rem;
	padding-bottom: 0.75rem;
	box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5);
	border-color: #a3a3a3;
	border-radius: 30px;
}
</style>

	<div class="container">
		<div class="row justify-content-center">
			<div class="text-center gy-3" style="color: #e8853e;">
                <h1><strong>개인정보수정</strong></h1>
            </div>
		</div>
		<div class="row justify-content-center ">
			<!-- text field + 제목 -->
			<div class="col-4 mb-3 gy-5">
				<label for="exampleFormControlInput1" class="form-label">ID
				</label> <input type="text" class="form-control" name="uid"
					id="exampleFormControlInput1" placeholder="아이디를 입력해 주세요"
					value="${uid}" readonly="readonly"
					>
			</div>
			<div class="col-2"></div>
		</div>
		<div class="row justify-content-center ">
			<!-- text field + 제목 -->
			<div class="col-3 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">이름
				</label> <input type="text" class="form-control" name="uname"
					id="exampleFormControlInput1" placeholder="이름을 입력해 주세요"
					value="${userInfo.uname}"
					>
			</div>
			<div class="col-3 gy-2"></div>
		</div>
		<div class="row justify-content-center ">
			<!-- text field + 제목 -->
			<div class="col-4 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">닉네임
				</label> <input type="text" class="form-control" name="unickname"
					id="exampleFormControlInput1" placeholder="닉네임을 입력해 주세요"
					value="${userInfo.unickname}"
					>
			</div>
			<div class="col-2 gy-2"></div>
		</div>
		<div class="row justify-content-center ">
			<!-- text field + 제목 -->
			<div class="col-5 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">이메일
				</label> <input type="email" class="form-control" name="uemail"
					id="exampleFormControlInput1" placeholder="이메일을 입력해 주세요"
					value="${userInfo.uemail}"
					>
			</div>
			<button class="btn col-1 gy-2 align-self-center" type="button"
				style="margin-top: 1.5rem; padding-top : 0.7rem; padding-bottom : 0.7rem; background-color: #e8853e;">인증</button>
		</div>
		<div class="row justify-content-center ">
			<!-- text field + 제목 -->
			<div class="col-5 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">휴대폰
					번호 </label> <input type="tel" class="form-control" name="uphone"
					id="exampleFormControlInput1" placeholder="번호를 입력해 주세요"
					value="${userInfo.uphone}"
					>
			</div>
			<div class="col-1 gy-2"></div>
		</div>
		<div class="row justify-content-center ">
			<!-- text field + 제목 -->
			<div class="col-4 mb-3 gy-2">
				<label for="exampleFormControlInput1" class="form-label">주소
				</label> <input type="text" class="form-control" name="uaddress_basic"
					id="exampleFormControlInput1" placeholder="주소를 입력해 주세요">
			</div>
			<button class="btn col-1 gy-2 align-self-center" type="button"
				style="margin-top: 1.5rem; padding-top : 0.7rem; padding-bottom : 0.7rem; background-color: #e8853e;">검색</button>
			<div class="col-1 gy-2"></div>
		</div>
		<div class="row justify-content-center ">
			<!-- text field + 제목 -->
			<div class="col-6 mb-3">
				<input type="text" class="form-control" name="uaddress_detail"
					id="exampleFormControlInput1" placeholder="상세 주소를 입력해 주세요"
					value="${userInfo.uaddress}"
					>
					<!-- 이거 문자열 자르는게 너무 불특정해서 상세주소로 나눠서 어케 받아야할지 모르겠음....... -->
			</div>
		</div>
		
		<div class="row justify-content-center ">
			<!-- text field + 제목 -->
			<button class="btn col-6 gy-5" type="button" style="background-color: #e8853e;">수정</button>
		</div>
		
		<div class="row justify-content-center" style="height:4rem">
		</div>
	</div>
