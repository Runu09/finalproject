<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../inc/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypageMain.jsp</title>
</head>
<style>

.form-control {
	width: 300px;
}

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

					
						<div class="tab-pane fade show active" id="dashboard">
								<div class="dashboard-main">
									<div class="dashboard-intro">
										<form action="<c:url value='/member/editMem.do'/>">
										<h5>
											welcome! <span>${vo.memName}님</span>
										</h5>
										</form>
										<p>${vo.memName}님의 현재 OnAir 이용 현황을 확인해 보세요!</p>
										<div class="complete-profile">
											<div class="row">
												<div class="col-xl-4">
													<div class="complete-box">
														<i class="far fa-check-square"></i>
														<h6>Mileage : ${vo.MMileage } </h6>
													</div>
												</div>
												<div class="col-xl-4">
													<div class="complete-box">
														<i class="far fa-check-square"></i>
														<h6>Tel : ${vo.MTel1 } - ${vo.MTel2 } -  ${vo.MTel3 }</h6>
													</div>
												</div>
												<div class="col-xl-4">
													<div class="complete-box">
														<i class="far fa-check-square"></i>
														<h6>Email : ${vo.MEmail1 }@${vo.MEmail2 }</h6>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="counter-section">
										<div class="row">
											<div class="col-xl-3 col-sm-6">
												<div class="counter-box">
													<img src="../assets/images/icon/hotel.png"
														class="img-fluid blur-up lazyload" alt="">
													<h3>25</h3>
													<h5>hotel booked</h5>
												</div>
											</div>
											<div class="col-xl-3 col-sm-6">
												<div class="counter-box">
													<img src="../assets/images/icon/flight.png"
														class="img-fluid blur-up lazyload" alt="">
													<h3>12</h3>
													<h5>flight booked</h5>
												</div>
											</div>
											<div class="col-xl-3 col-sm-6">
												<div class="counter-box">
													<img src="../assets/images/icon/taxi.png"
														class="img-fluid blur-up lazyload" alt="">
													<h3>50</h3>
													<h5>cab booked</h5>
												</div>
											</div>
											<div class="col-xl-3 col-sm-6">
												<div class="counter-box">
													<img src="../assets/images/icon/food.png"
														class="img-fluid blur-up lazyload" alt="">
													<h3>40</h3>
													<h5>food ordered</h5>
												</div>
											</div>
										</div>
									</div>
							<!--하단부 -------------------------------- -->
									<div class="dashboard-info">
										<div class="row">
									<!-- ----------------------------- -->
											<div class="col-md-6">
												<div class="activity-box">
													<h6>나의 비행 일정&nbsp;
													<span class="badge bg-info">upcoming</span></h6>
													<ul>
													<c:if test="${!empty list }">
														현재 비행 일정이 존재하지 않습니다.
													</c:if>
													
													<c:if test="${empty list }">
														<c:forEach var="vo2" items="${Rlist }" >
														<c:set var="day" value="${vo2.DDay%2 }"></c:set>
														
														<li <c:if test="${day ==0 }">class="blue-line"</c:if>>
														<i class="fas fa-plane">
														</i> ${vo2.ADepnm } to ${vo2.AArrnm }<span>
															${vo2.DDay }일 후  </span></li>
													</c:forEach>
													</c:if>
													</ul>
												</div>
											</div>
									<!-- ----------------------------- -->
											<div class="col-md-6">
												<div class="activity-box">
													<h6>최근 활동 내역
													<span class="badge bg-danger">Active</span></h6>
													<ul>
													<c:if test="${empty Blist }">
														최근 활동 내역이 존재하지 않습니다.
													</c:if>
													<c:if test="${!empty Blist }">
													<c:forEach var="vo3" items="${Blist }">
														<li <c:if test="${vo3.btNo == 2}">class="yellow-line"</c:if>>
														<i class="fas fa-user">
														</i> ${vo3.BTitle } 
														<c:if test="${vo3.btNo == 2}">
															유실물 찾기
														</c:if>
														<c:if test="${vo3.btNo == 3}">
															고객의 소리
														</c:if>
														<span><fmt:formatDate value="${vo3.BRegdate }" pattern="yyyy-MM-dd"/> </span>
													</c:forEach>
													</c:if>
														
													</ul>
												</div>
											</div>
									<!-- ----------------------------- -->
										</div>
									</div>
								<!-- ----------------------------- -->
								</div>
							</div>
							
					
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