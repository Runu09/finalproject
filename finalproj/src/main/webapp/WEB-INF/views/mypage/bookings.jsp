<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../inc/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bookings.jsp</title>
</head>
<script type="text/javascript">

	function getTicket(){	
		var rNo=$('#rNo').val();
		
		window.open("${pageContext.request.contextPath}/booking/eTicket.do?rNo="+rNo,"eTicket",
		"left=0, top=0, width=700, height=600, scrollbars=no, resizable=yes");
		}



</script>   
<style>
button#btnTicket {
    border: none;
    background-color: #f9f9f9;
}


span.badge.bg-success {
    width: 135px;
    height: 46px;
    margin: auto 0;
    padding-top: 16px;
}

.ticket {
    position: relative;
    right: 107px;
    top: -14px;
    height: 20px;
}

span.badge.bg-info {
    position: relative;
    left: 56px;
    bottom: -20px;
}

i.fas.fa-window-close {
    position: relative;
    left: 159px;
    bottom: 51px;
}
</style>
<body>

	<!-- section start-->
	<section class="small-section dashboard-section bg-inner" data-sticky_parent>
		<div class="container">
			<div class="row">
				<%@include file="../mypage/mypageMenu.jsp"%>
				<div class="col-lg-9">
					<div class="product_img_scroll" data-sticky_column>
						<div class="faq-content tab-content" id="top-tabContent">
						
						<!-- 항공권 이용내역 조회 -->
								<div class="dashboard-box">
									<div class="dashboard-title">
										<h4>전체 예매 내역</h4>
									</div>
									<div class="dashboard-detail">
									<c:if test="${empty list }">
									<p class="align_center">해당 글이 존재하지 않습니다.</p>
									</c:if>
									<c:if test="${!empty list }">
									<c:forEach var="vo" items="${list }">
										<div class="booking-box">
											<div class="date-box">
											<c:set var="startTime" value="${vo.SStarttime }"/>
											
												<span class="day">출발</span> 
												<span class="date">
													${fn:substring(startTime, 2, 4) }/
													${fn:substring(startTime, 5, 7) }/
													${fn:substring(startTime, 8, 10) }
													</span> 
													
													<span class="month">${fn:substring(startTime, 11, 16) }</span>
											</div>
											<div class="detail-middle">
												<div class="media">
													<div class="icon">
														<i class="fas fa-plane"></i>
													</div>
													<div class="media-body">
														<h6 class="media-heading">${vo.ADepnm } to ${vo.AArrnm }</h6>
														<p>
															좌석번호: <span>${vo.PSeat }</span>
														</p>
													</div>
													<div class="media-body">
														<h6 class="media-heading">${vo.SName } / ${vo.alName}</h6>
														<p>
															예매일자: <span><fmt:formatDate value="${vo.RDate }" pattern="yyyy-MM-dd"/></span>
														</p>
													
													</div>
												</div>
											</div>
											<div class="detail-last">
												<c:set var="now" value="<%= new java.util.Date() %>" />
												 <c:choose >
												 	<c:when test="${vo.SStarttime ge now }"> <!-- 출발일>=현재 -->
												 		<span class="badge bg-info">upcoming</span>
												 	</c:when>
												 	<c:when test="${vo.SStarttime lt now }"><!-- 출발일<현재 -->
												 		<span class="badge bg-info">past</span>
												 	</c:when>
												 </c:choose>
											<!-- 발권  -->
											<div class="ticket">
												<input type="hidden" value="${vo.RNo }" id="rNo">
												 <button type="button"  id="btnTicket" onclick="getTicket()" title="새창열림">
												 <span class="badge bg-success">e-Ticket 발권</span></button>
											</div>
											<!-- 발권 끝--> 
												<a href="#"><i class="fas fa-window-close"
													data-bs-toggle="tooltip" data-placement="top"
													title="cancle booking"></i>
												</a> 
											</div>
										</div>
										</c:forEach>
									</c:if>
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