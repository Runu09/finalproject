<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bookings.jsp</title>
</head>

<style>

</style>
<body>

	<!-- section start-->
	<section class="small-section dashboard-section bg-inner"
		data-sticky_parent>
		<div class="container">
			<div class="row">
				<%@include file="../mypage/mypageMenu.jsp"%>
				<div class="col-lg-9">
					<div class="product_img_scroll" data-sticky_column>
						<div class="faq-content tab-content" id="top-tabContent">
						<!-- 항공권 이용내역 조회 -->
								<div class="dashboard-box">
									<div class="dashboard-title">
										<h4>upcoming booking</h4>
									</div>
									<div class="dashboard-detail">
										<div class="booking-box">
											<div class="date-box">
												<span class="day">tue</span> <span class="date">14</span> <span
													class="month">aug</span>
											</div>
											<div class="detail-middle">
												<div class="media">
													<div class="icon">
														<i class="fas fa-plane"></i>
													</div>
													<div class="media-body">
														<h6 class="media-heading">dubai to paris</h6>
														<p>
															amount paid: <span>$2500</span>
														</p>
													</div>
													<div class="media-body">
														<h6 class="media-heading">ID: aSdsadf5s1f5</h6>
														<p>
															order date: <span>20 oct, 2020</span>
														</p>
													</div>
												</div>
											</div>
											<div class="detail-last">
												<a href="#"><i class="fas fa-window-close"
													data-bs-toggle="tooltip" data-placement="top"
													title="cancle booking"></i></a> <span class="badge bg-info">upcoming</span>
											</div>
										</div>
									</div>
									<div class="dashboard-detail">
										<div class="booking-box">
											<div class="date-box">
												<span class="day">tue</span> <span class="date">14</span> <span
													class="month">aug</span>
											</div>
											<div class="detail-middle">
												<div class="media">
													<div class="icon">
														<i class="fas fa-hotel"></i>
													</div>
													<div class="media-body">
														<h6 class="media-heading">sea view hotel</h6>
														<p>
															amount paid: <span>$2500</span>
														</p>
													</div>
													<div class="media-body">
														<h6 class="media-heading">ID: aSdsadf5s1f5</h6>
														<p>
															order date: <span>20 oct, 2020</span>
														</p>
													</div>
												</div>
											</div>
											<div class="detail-last">
												<a href="#"><i class="fas fa-window-close"
													data-bs-toggle="tooltip" data-placement="top"
													title="cancle booking"></i></a> <span class="badge bg-info">upcoming</span>
											</div>
										</div>
									</div>
									<div class="dashboard-detail">
										<div class="booking-box">
											<div class="date-box">
												<span class="day">tue</span> <span class="date">14</span> <span
													class="month">aug</span>
											</div>
											<div class="detail-middle">
												<div class="media">
													<div class="icon">
														<i class="fas fa-taxi"></i>
													</div>
													<div class="media-body">
														<h6 class="media-heading">paris to Toulouse</h6>
														<p>
															amount paid: <span>$2500</span>
														</p>
													</div>
													<div class="media-body">
														<h6 class="media-heading">ID: aSdsadf5s1f5</h6>
														<p>
															order date: <span>20 oct, 2020</span>
														</p>
													</div>
												</div>
											</div>
											<div class="detail-last">
												<a href="#"><i class="fas fa-window-close"
													data-bs-toggle="tooltip" data-placement="top"
													title="cancle booking"></i></a> <span class="badge bg-info">upcoming</span>
											</div>
										</div>
									</div>
								</div>
								<div class="dashboard-box">
									<div class="dashboard-title">
										<h4>past booking</h4>
									</div>
									<div class="dashboard-detail">
										<div class="booking-box">
											<div class="date-box">
												<span class="day">tue</span> <span class="date">14</span> <span
													class="month">aug</span>
											</div>
											<div class="detail-middle">
												<div class="media">
													<div class="icon">
														<i class="fas fa-plane"></i>
													</div>
													<div class="media-body">
														<h6 class="media-heading">dubai to paris</h6>
														<p>
															amount paid: <span>$2500</span>
														</p>
													</div>
													<div class="media-body">
														<h6 class="media-heading">ID: aSdsadf5s1f5</h6>
														<p>
															order date: <span>20 oct, 2020</span>
														</p>
													</div>
												</div>
											</div>
											<div class="detail-last">
												<span class="badge bg-success">past</span>
											</div>
										</div>
									</div>
									<div class="dashboard-detail">
										<div class="booking-box">
											<div class="date-box">
												<span class="day">tue</span> <span class="date">14</span> <span
													class="month">aug</span>
											</div>
											<div class="detail-middle">
												<div class="media">
													<div class="icon">
														<i class="fas fa-hotel"></i>
													</div>
													<div class="media-body">
														<h6 class="media-heading">sea view hotel</h6>
														<p>
															amount paid: <span>$2500</span>
														</p>
													</div>
													<div class="media-body">
														<h6 class="media-heading">ID: aSdsadf5s1f5</h6>
														<p>
															order date: <span>20 oct, 2020</span>
														</p>
													</div>
												</div>
											</div>
											<div class="detail-last">
												<span class="badge bg-success">past</span>
											</div>
										</div>
									</div>
									<div class="dashboard-detail">
										<div class="booking-box">
											<div class="date-box">
												<span class="day">tue</span> <span class="date">14</span> <span
													class="month">aug</span>
											</div>
											<div class="detail-middle">
												<div class="media">
													<div class="icon">
														<i class="fas fa-taxi"></i>
													</div>
													<div class="media-body">
														<h6 class="media-heading">paris to Toulouse</h6>
														<p>
															amount paid: <span>$2500</span>
														</p>
													</div>
													<div class="media-body">
														<h6 class="media-heading">ID: aSdsadf5s1f5</h6>
														<p>
															order date: <span>20 oct, 2020</span>
														</p>
													</div>
												</div>
											</div>
											<div class="detail-last">
												<span class="badge bg-success">past</span>
											</div>
										</div>
									</div>
								</div>
								<div class="dashboard-box">
									<div class="dashboard-title">
										<h4>cancelled booking</h4>
									</div>
									<div class="dashboard-detail">
										<div class="booking-box">
											<div class="date-box">
												<span class="day">tue</span> <span class="date">14</span> <span
													class="month">aug</span>
											</div>
											<div class="detail-middle">
												<div class="media">
													<div class="icon">
														<i class="fas fa-plane"></i>
													</div>
													<div class="media-body">
														<h6 class="media-heading">dubai to paris</h6>
														<p>
															amount paid: <span>$2500</span>
														</p>
													</div>
													<div class="media-body">
														<h6 class="media-heading">ID: aSdsadf5s1f5</h6>
														<p>
															order date: <span>20 oct, 2020</span>
														</p>
													</div>
												</div>
											</div>
											<div class="detail-last">
												<span class="badge bg-secondary">cancelled</span>
											</div>
										</div>
									</div>
									<div class="dashboard-detail">
										<div class="booking-box">
											<div class="date-box">
												<span class="day">tue</span> <span class="date">14</span> <span
													class="month">aug</span>
											</div>
											<div class="detail-middle">
												<div class="media">
													<div class="icon">
														<i class="fas fa-hotel"></i>
													</div>
													<div class="media-body">
														<h6 class="media-heading">sea view hotel</h6>
														<p>
															amount paid: <span>$2500</span>
														</p>
													</div>
													<div class="media-body">
														<h6 class="media-heading">ID: aSdsadf5s1f5</h6>
														<p>
															order date: <span>20 oct, 2020</span>
														</p>
													</div>
												</div>
											</div>
											<div class="detail-last">
												<span class="badge bg-secondary">cancelled</span>
											</div>
										</div>
									</div>
									<div class="dashboard-detail">
										<div class="booking-box">
											<div class="date-box">
												<span class="day">tue</span> <span class="date">14</span> <span
													class="month">aug</span>
											</div>
											<div class="detail-middle">
												<div class="media">
													<div class="icon">
														<i class="fas fa-taxi"></i>
													</div>
													<div class="media-body">
														<h6 class="media-heading">paris to Toulouse</h6>
														<p>
															amount paid: <span>$2500</span>
														</p>
													</div>
													<div class="media-body">
														<h6 class="media-heading">ID: aSdsadf5s1f5</h6>
														<p>
															order date: <span>20 oct, 2020</span>
														</p>
													</div>
												</div>
											</div>
											<div class="detail-last">
												<span class="badge bg-secondary">cancelled</span>
											</div>
										</div>
									</div>
								</div>
							<!-- 항공권 이용내역 조회 끝-->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- section end-->
</body>
</html>

<%@include file="../inc/footer.jsp"%>