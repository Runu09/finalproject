<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

a#Btype {
position: relative;
right: 17px;
font-size: 13px;
color: #8080809e;
padding: 1px;
}

span#sName {
    font-size: 13px;
    color: #8080809e;
    position: relative;
    left: -13px;
}

a#Btitle {
    color: black;
}

p#p1 {
    font-size: 18px;
}
h6>span.badge.bg-danger{
    position: relative;
    bottom: 2px;   
}
h6>span.badge.bg-info {
    position: relative;
    bottom: 2px;
    margin-left: -5px;
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
										<c:set var="now" value="<%= new java.util.Date() %>" />
										<p id="p1"><b>${vo.memName}님의 <fmt:formatDate value="${now}" pattern="M" />월
										한 달간 OnAir 이용 현황을 확인해 보세요 !</b></p>
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
														<c:if test="${empty sumMileage }">
														<h3>0</h3>
														</c:if>
													<h3><fmt:formatNumber value="${sumPay}" pattern="#,###"/></h3>
													<h5><b>총 결제금액</b></h5>
												</div>
											</div>
											<div class="col-xl-3 col-sm-6">
												<div class="counter-box">
												<img src="../assets/images/icon/taxi.png"
														class="img-fluid blur-up lazyload" alt="">
													<c:if test="${empty sumMileage }">
													<h3>0</h3>
													</c:if>
													<h3><fmt:formatNumber value="${sumMileage }" pattern="#,###"/></h3>
													<h5><b>총 사용 마일리지</b></h5>	
												</div>
											</div>
											<div class="col-xl-3 col-sm-6">
												<div class="counter-box">
													<img src="../assets/images/icon/flight.png"
														class="img-fluid blur-up lazyload" alt="">
													<h3>${countR}</h3>
													<h5><b>항공권 예매</b></h5>
												</div>
											</div>
											<div class="col-xl-3 col-sm-6">
												<div class="counter-box">
													<img src="../assets/images/icon/food.png"
														class="img-fluid blur-up lazyload" alt="">
													<h3>${countB }</h3>
													<h5><b>내가 쓴 글</b></h5>
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
													<c:if test="${empty Rlist }">
														현재 비행 일정이 존재하지 않습니다.
													</c:if>
													
													<c:if test="${!empty Rlist }">
														<c:forEach var="vo2" items="${Rlist }" >
														<c:set var="day" value="${vo2.DDay%2 }"></c:set>
														
														<li <c:if test="${day ==0 }">class="blue-line"</c:if>>
														<i class="fas fa-plane">
														</i> ${vo2.ADepnm } to ${vo2.AArrnm }
														
														<fmt:formatDate var="today" value="${now}" pattern="dd" />
														<fmt:formatDate var="start" value="${vo2.SStarttime}" pattern="dd" />
														<fmt:formatDate var="startTime" value="${vo2.SStarttime}" pattern="HH:mm" />
														
														<c:if test="${vo2.DDay == 0 && start == today}">
														<span><b>오늘 ${startTime }</b></span>
														</c:if>
														<c:if test="${vo2.DDay == 0 && start > today}">
														<span> 1일 후  </span>
														</c:if>
														<c:if test="${vo2.DDay > 0}">
														<span> ${vo2.DDay}일 후  </span>
														</c:if>
														<span id="sName">${vo2.SName } / ${vo2.alName }</span>
														
														</li>
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
														</i> 
														<c:if test="${vo3.btNo == 2}">
															<a href="<c:url value='/lost/detail.do?bNo=${vo3.BNo }'/>" id="Btitle">${vo3.BTitle }</a>
														</c:if>
														<c:if test="${vo3.btNo == 3}">
															<a href="<c:url value='/voc/updateCount?bNo=${vo3.BNo }'/>" id="Btitle">${vo3.BTitle }</a>
														</c:if>
														
														
														<span><fmt:formatDate value="${vo3.BRegdate }" pattern="yyyy-MM-dd"/> </span>
														<span>
														<c:if test="${vo3.btNo == 2}">
															<a href="<c:url value='/lost/list.do'/>" id="Btype">유실물 찾기</a>
														</c:if>
														<c:if test="${vo3.btNo == 3}">
															<a href="<c:url value='/voc/voc_list'/>" id="Btype">고객의 소리</a>
														</c:if>
														</span>
														
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