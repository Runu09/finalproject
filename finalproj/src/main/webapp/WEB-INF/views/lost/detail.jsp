<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>

<!-- breadcrumb start -->
<section class="breadcrumb-section no-bg pt-0" id="block"
	style="width: 100%;">
	<div class="breadcrumb-content overlay-black">
		<div>
			<h2>유실물 조회</h2>
		</div>
	</div>
	<div class="title-breadcrumb">OnAir</div>
</section>
<!-- breadcrumb end -->
<div class="bg-inner small-section pb-0">
	<div class="container">

		<div class="flight-detail-sec full_width-detail">

			<div class="detail-bar">
				<div class="detail-wrap wow">
					<div class="row">
						<div class="col-md-8" style="padding: 20px 100px">
							<!-- 상세보기 출력 -->
							<p style="color: black; font-size: 16px">
								<label for="" style="width: 200px">번호</label> <span>22-001232</span>
							<hr>
							</p>
							<p style="color: black; font-size: 16px">
								<label for="" style="width: 200px">제목</label> <span>에어팟
									한쪽 습득했습니다.</span>
							<hr>
							</p>
							<p style="color: black; font-size: 16px">
								<label for="" style="width: 200px">등록일</label> <span>2022-06-15</span>
							<hr>
							</p>
							<p style="color: black; font-size: 16px">
								내용입니다.<br> 내용입니다.<br> 내용입니다.<br>
							</p>
						</div>


						<div class="col-md-4">
							<img src="../assets/images/upload.png" alt="" width="400px">

						</div>
					</div>
				</div>
			</div>
		</div>
		<div style="text-align: center;">
			<button class="btn btn-primary me-3"
				style="background-color: #4291b8; border-color: #4291b8" id="btList">목록</button>
			<br> <br>

		</div>
	</div>

</div>
<div class="bg-inner small-section pb-0" style="margin-top: -50px">
	<div class="container">

		<div class="flight-detail-sec full_width-detail">

			<div class="detail-bar">
				<div class="detail-wrap wow">
					<section class="section-b-space bg-white" style="padding-top: 0; padding-bottom: 20px;">
						<div class="container">
							<div class="row" style="margin-bottom: 20px">
								<div class="col-lg-11" style="margin: 0 auto">
									<div class="blog-single-detail">


										<div class="comment-section">
											<h4 class="comment">댓글 목록</h4>
											<div class="comment-wrapper">
												<div class="comment-box">
													<div class="media">
														
														<div class="media-body">
															<div class="title">
																<div class="comment-user">
																	<i class="fa fa-user"></i>
																	<h6>hong</h6>
																</div>
																<div class="comment-date">
																	<i class="fas fa-clock"></i>
																	<h6>2022-06-20</h6>
																</div>
															</div>
															<div class="comment-detail">
																<p>댓글</p>
															</div>
															<div class="reply-btn">
																<a href="#"><i class="fa fa-reply pe-2"></i> 답글</a>
															</div>
														</div>
													</div>
													<div class="media inner-comment">
														
														<div class="media-body">
															<div class="title">
																<div class="comment-user">
																	<i class="fa fa-user"></i>
																	<h6>park</h6>
																</div>
																<div class="comment-date">
																	<i class="fas fa-clock"></i>
																	<h6>2022-06-20</h6>
																</div>
															</div>
															<div class="comment-detail">
																<p>대댓글</p>
															</div>
															<div class="reply-btn">
																<a href="#"><i class="fa fa-reply pe-2"></i> 답글</a>
															</div>
														</div>
													</div>
												</div>

											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
					</section>

				</div>




			</div>
		</div>

	</div>
</div>


</div>
<div class="bg-inner small-section pb-0" style="margin-top: -60px">
	<div class="container">

		<div class="flight-detail-sec full_width-detail">

			<div class="detail-bar">
				<div class="detail-wrap wow">
				
					<form>
						<div class="row">

							<div class="form-group col-md-11" style="margin: 0 auto">
							<h4 class="comment">댓글 작성</h4>
								<textarea class="form-control" id="exampleTextarea"
									placeholder="내용을 입력하세요" required="" rows="4"></textarea>
							</div>
						</div>
						<div class="submit-btn"
							style="text-align: right; margin-right: 59px; margin-top: 10px">
							<button class="btn btn-solid" type="submit">등록</button>
						</div>
					</form>


				</div>




			</div>
		</div>
		<div></div>
		<br> <br>

	</div>
</div>


</div>
<%@include file="../inc/footer.jsp"%>