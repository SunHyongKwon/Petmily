<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<div class="container">
		<div class="row justify-content-center my-4 text-center">
			<h4>${notice.ntitle }</h4>
		</div>

		<div class="row justify-content-between my-2">
			<div class="col-2 text-start align-self-center">
				<img src="https://picsum.photos/50/50/?random"
					class="rounded-circle" alt=""> <span class="mx-2">${notice.admin_adid}</span>
			</div>


			<div class="col-2 text-end align-self-center"></div>
		</div>

		<hr>

		<div class="row justify-content-between">
			<div class="col-4 text-start">
				<i class="bi bi-geo-alt" style="font-size: 1.7rem;"></i> <span
					class="mx-2"></span>
			</div>


			<div class="col-2 text-end align-self-center">${notice.ninitedate}</div>
		</div>

		<!-- img -->
		<div class="row justify-content-center text-center my-5">
			<div class="col-8">
				<div id="carouselExampleControls"
					class="carousel carousel-dark slide" data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="https://picsum.photos/500/400/?random" class="rounded"
								alt="">
						</div>
						<div class="carousel-item">
							<img src="https://picsum.photos/500/400/?random" class="rounded"
								alt="">
						</div>
						<div class="carousel-item">
							<img src="https://picsum.photos/500/400/?random" class="rounded"
								alt="">
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleControls" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleControls" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
		</div>

		<!-- 게시글 내용 -->
		<div class="row justify-content-center my-3">
			<div class="col-8 text-right">{notice.ncontent</div>
		</div>

		<hr>

		<div class="row my-2">
			<div class="col-4 text-start">
				<!-- arial-pressed 가 true이면 좋아요 1 추가 된다 이느낌인듯 -->
				<button type="button" class="btn btn-outline-danger"
					data-bs-toggle="button">
					<i class="bi bi-heart" style="font-size: 1.5rem;"></i>
				</button>
			</div>
		</div>

		<!-- 댓글 -->
		<div class="row justify-content-center my-2">
			<div class="col-2"></div>
			<div class="col-2 align-self-center">
				<img src="https://picsum.photos/50/50/?random"
					class="rounded-circle" alt=""> <span class="mx-2">username</span>
			</div>
			<div class="col-4 text-start align-self-center">
				<span>댓글에 무엇을 들어가야 될까요 고민고민하지마 걸</span>
			</div>
			<div class="col-2 text-end align-self-center">
				<h6>2021/10/21 10:00:29</h6>
			</div>
			<div class="col-2"></div>
		</div>

		<div class="row justify-content-center my-2">
			<div class="col-2"></div>
			<div class="col-2 align-self-center">
				<img src="https://picsum.photos/50/50/?random"
					class="rounded-circle" alt=""> <span class="mx-2">username</span>
			</div>
			<div class="col-4 text-start align-self-center">
				<span>댓글에 무엇을 들어가야 될까요 고민고민하지마 걸</span>
			</div>
			<div class="col-2 text-end align-self-center">
				<h6>2021/10/21 10:00:29</h6>
			</div>
			<div class="col-2"></div>
		</div>

		<div class="row justify-content-center my-2">
			<div class="col-2"></div>
			<div class="col-2 align-self-center">
				<img src="https://picsum.photos/50/50/?random"
					class="rounded-circle" alt=""> <span class="mx-2">username</span>
			</div>
			<div class="col-4 text-start align-self-center">
				<span>댓글에 무엇을 들어가야 될까요 고민고민하지마 걸</span>
			</div>
			<div class="col-2 text-end align-self-center">
				<h6>2021/10/21 10:00:29</h6>
			</div>
			<div class="col-2"></div>
		</div>
		
		
		<div class="row justify-content-center my-5">
			<div class="col-6">
				<input type="text" class="form-control" name="ureply"
					id="exampleFormControlInput1" placeholder="댓글을 입력해 주세요">
			</div>
			
			<div class="col-1">
				<button class="btn btn-warning" type="button">입력</button>
			</div>
		</div>
		
	</div>

