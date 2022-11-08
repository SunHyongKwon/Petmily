<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<main class="content">
    <div class="container ">

		<h1 class="h3 mb-3">Messages</h1>

		<div class="card">
			<div class="row g-0">
				<div class="col-12 col-lg-5 col-xl-3 border-right">

					<div class="px-4 d-none d-md-block">
						<div class="d-flex align-items-center">
							<div class="flex-grow-1">
								<input type="text" class="form-control my-3" placeholder="Search...">
							</div>
						</div>
					</div>
				<%-- 	<c:forEach items="${체팅목록리스트}" var="dto"> --%>
					<!-- 채팅목록 -->
					<a href="#" class="list-group-item list-group-item-action border-0 mx-3">
						<div class="badge bg-success float-right">5</div>
						<div class="d-flex align-items-start">
							<img src="https://bootdey.com/img/Content/avatar/avatar5.png" class="rounded-circle mr-1" alt="Vanessa Tucker" width="40" height="40">
							<div class="flex-grow-1 mx-5">
								정윤현<%-- ${dto.name } --%><!-- 채팅신청한 사람들 목록 -->
							</div>
						</div>
					</a>
				<%-- 	</c:forEach> --%>
					<hr class="d-block d-lg-none mt-1 mb-0">
				</div>
				
				<div class="col-12 col-lg-7 col-xl-9">
					<div class="py-2 px-4 border-bottom d-none d-lg-block">
						<div class="d-flex align-items-center py-1">
							<div class="position-relative">
								<img src="https://bootdey.com/img/Content/avatar/avatar3.png" class="rounded-circle mr-1" alt="Sharon Lessman" width="40" height="40">
							</div>
							<!-- 채팅상대 -->
							<div class="flex-grow-1 pl-3">
								<strong>정윤현</strong>
							</div>
						</div>
					</div>
				
					<div class="position-relative">
						<div class="chat-messages p-4">
							<!-- 보내는사람 -->
							<div class="chat-message-right pb-4">
								<div>
									<div class="text-muted small text-nowrap mt-2">2:33 am</div>
								</div>
								<div class="flex-shrink-1 bg-light rounded py-2 px-3 mr-3">
									<div class="font-weight-bold mb-1">나</div>
									명철씨 시험 잘 봤데요??
								</div>
							</div>
							<!-- 받는사람 -->
							<div class="chat-message-left pb-4">
								<div>
									<img src="https://bootdey.com/img/Content/avatar/avatar3.png" class="rounded-circle mr-1" alt="Sharon Lessman" width="40" height="40">
									<div class="text-muted small text-nowrap mt-2">2:34 am</div>
								</div>
								<div class="flex-shrink-1 bg-light rounded py-2 px-3 ml-3">
									<div class="font-weight-bold mb-1">정윤현</div>
									버스 놓쳐서 못봤다는데 진짜 개웃김ㅋㅋㅋㅋㅋㅋㅋㅋ
								</div>
							</div>
						</div>
					</div>

					<div class="flex-grow-0 py-3 px-4 border-top">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Type your message">
							<button class="btn " style="background-color: #e8853e;">Send</button>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</main>

<style type="text/css">
body{margin-top:20px;}

.chat-online {
    color: #34ce57
}

.chat-offline {
    color: #e4606d
}

.chat-messages {
    display: flex;
    flex-direction: column;
    max-height: 800px;
    overflow-y: scroll
}

.chat-message-left,
.chat-message-right {
    display: flex;
    flex-shrink: 0
}

.chat-message-left {
    margin-right: auto
}

.chat-message-right {
    flex-direction: row-reverse;
    margin-left: auto
}
.py-3 {
    padding-top: 1rem!important;
    padding-bottom: 1rem!important;
}
.px-4 {
    padding-right: 1.5rem!important;
    padding-left: 1.5rem!important;
}
.flex-grow-0 {
    flex-grow: 0!important;
}
.border-top {
    border-top: 1px solid #dee2e6!important;
}
</style>

