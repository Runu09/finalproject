<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../inc/top.jsp"%>    
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript">
$(function(){
	$("#btPayment").click(function() {
		//class가 btn_payment인 태그를 선택했을 때 작동한다.
		var IMP = window.IMP; // 생략가능
		IMP.init('imp60821147');//가맹점식별코드
		IMP.request_pay({
			pg : 'inicis',//KG이니시스
			pay_method : 'card', //결제방식
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : '${schedule.ADepnm}-${schedule.AArrnm}', //상품이름
			//amount : 100, //판매가격
			<c:if test="${empty mMileage}">
				amount : parseInt('${total}'), //판매가격
	    	</c:if>
	    	<c:if test="${!empty mMileage}">
				amount : parseInt('${mileTotal}'), //판매가격
	    	</c:if> 
			buyer_email : '${memVo.MEmail1}@${memVo.MEmail2}',
			buyer_name : '${memVo.memName}',
			buyer_tel : '${memVo.MTel1}-${memVo.MTel2}-${memVo.MTel3}',
			buyer_addr : '${memVo.MAdd1} ${memVo.MAdd2}',
			buyer_postcode : '${memVo.MZipcode}'
		}, function(rsp) { // callback
			console.log(rsp);
			if (rsp.success) {
				$("input[name=pImpUid]").val(rsp.imp_uid);
				console.log('빌링키 발급 성공',rsp);
				var msg = '결제가 완료되었습니다.';
				alert(msg);
			    $("form[name=payment]").submit();
			    
				/* location.href = "<c:url value='/booking/flight-booking-success.do'/>" */
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
				alert(msg);
				/* location.href = "<c:url value='/booking/flight-booking-failed.do'/>" */
			}
		});
	});
});
</script>
<!-- breadcrumb start -->
    <section class="breadcrumb-section small-sec flight-sec pt-0">
        <img src="http://themes.pixelstrap.com/rica/assets/images/flights/flight-breadcrumb2.jpg" class="bg-img img-fluid blur-up lazyload" alt="">
        <div class="content-bottom">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <nav aria-label="breadcrumb" class="theme-breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="<c:url value='/booking/flight-booking.do'/>">예매</a></li>
                                <li class="breadcrumb-item"><a href="<c:url value='/booking/flight-booking-addons.do'/>">좌석</a></li>
                                <li class="breadcrumb-item active">결제</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb end -->


    <!-- booking section start -->
    <section class="small-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="sticky-cls-top">
                        <div class="review-section">
                            <div class="review_box">
                                <div class="title-top">
                                    <h5>예매 정보</h5>
                                </div>
                                <div class="flight_detail">
                                    <div class="summery_box">
                                        <div class="top-detail">
                                        </div>
                                        <div class="review_box">
				                            <div class="title-top">
				                                <h5>여정 정보</h5>
				                            </div>
				                            <div class="flight_detail">
				                                <div class="row">
				                                    <div class="col-md-3">
				                                        <div class="logo-sec">
				                                            <img src="../assets/images/flights/airlines/8.png"
				                                                class="img-fluid blur-up lazyload" alt="">
				                                            <span class="title">${schedule.alName}</span>
				                                        </div>
				                                    </div>
				                                    <div class="col-md-6">
				                                        <div class="airport-part">
				                                            <div class="airport-name">
				                                                <h6>${schedule.ADepnm} <span>${schedule.SStarttime.substring(8, 10)}:${schedule.SStarttime.substring(10, 12)}</span></h6>
				                                                <p>${schedule.SStarttime.substring(0, 4)}-${schedule.SStarttime.substring(4, 6)}-${schedule.SStarttime.substring(6, 8)}</p>
				                                            </div>
				                                            <div class="airport-progress">
				                                                <i class="fas fa-plane-departure float-start"></i>
				                                                <i class="fas fa-plane-arrival float-end"></i>
				                                            </div>
				                                            <div class="airport-name arrival">
				                                                <h6>${schedule.AArrnm} <span>${schedule.SArrtime.substring(8, 10)}:${schedule.SArrtime.substring(10, 12)}</span></h6>
				                                                <p>${schedule.SArrtime.substring(0, 4)}-${schedule.SArrtime.substring(4,6)}-${schedule.SArrtime.substring(6, 8)}</p>
				                                            </div>
				                                        </div>
				                                    </div>
				                                    <div class="col-md-3">
				                                        <div class="duration">
				                                            <div>
				                                                <h6>${schedule.SArrtime.substring(8, 10)*60+schedule.SArrtime.substring(10, 12)-(schedule.SStarttime.substring(8, 10)*60+schedule.SStarttime.substring(10, 12))}분</h6>
				                                            </div>
				                                        </div>
				                                    </div>
				                                </div>
				                            </div>
				                        </div>
				                        <div class="review_box">
				                            <div class="title-top">
				                                <h5>좌석</h5>
				                            </div>
				                            <div class="flight_detail">
				                                <div class="row">
				                                    <div class="col-md-12">
				                                        <div class="boxes">
				                                        
				                                        <c:forEach var="arr1" items="${pName}" varStatus="status">
				                                            <h6><c:out value="${arr1}"/> :
				                                            <c:forEach var="arr2" items="${pSeat[status.index]}">
				                                            	<c:out value="${arr2}"/>
				                                        	</c:forEach></h6>
				                                        </c:forEach>
				                                        
				                                        </div>
				                                    </div>
				                                </div>
				                            </div>
				                        </div>
				                        <div class="review_box">
			                                <div class="title-top">
			                                    <h5>예매 정보</h5>
			                                </div>
			                                <div class="flight_detail">
			                                    <div class="summery_box">
			                                        <table class="table table-borderless" id="table">
			                                            <tbody>
			                                                <tr>
			                                                    <td>성인</td>
			                                                    <td><fmt:formatNumber value="${schedule.SPrice*adult}" pattern="#,###" />원</td>
			                                                </tr>
			                                                <tr>
			                                                	<c:if test="${child==0 }">
			                                                	</c:if>
			                                                	<c:if test="${child!=0 }">
				                                                	<td>소아</td>
				                                                    <td><fmt:formatNumber value="${schedule.SPrice*child-schedule.SPrice*0.25}" pattern="#,###" />원</td>
			                                                	</c:if>
			                                                </tr>
			                                                <tr>
			                                                    <td>세금</td>
			                                                    <td>25,000원</td>
			                                                </tr>
			                                                <tr>
			                                                	<c:if test="${empty mMileage}">
			                                                	</c:if>
			                                                	<c:if test="${!empty mMileage}">
				                                                	<td>마일리지</td>
				                                                	<td>-${mMileage}원</td>
			                                                	</c:if>
			                                                </tr>
			                                            </tbody>
			                                        </table>
			                                        <div class="grand_total" id="total">
			                                        	<c:if test="${empty mMileage}">
			                                        		<h5>최종 결제 금액: <span id="finalTotal"><fmt:formatNumber value="${total}" pattern="#,###" />원</span></h5>
	                                                	</c:if>
	                                                	<c:if test="${!empty mMileage}">
		                                                	<h5>최종 결제 금액: <span id="finalTotal"><fmt:formatNumber value="${mileTotal}" pattern="#,###" />원</span></h5>
	                                                	</c:if>
			                                            
			                                        </div>
			                                    </div>
			                                </div>
			                            </div>
			                            <form action="<c:url value='/booking/flight-booking-success.do' />" method="post" name="payment">
											<input type="hidden" name="rAdult" value="${adult}">
											<input type="hidden" name="rChild" value="${child}">
										
											<input type="hidden" name="memNo" value="${memVo.memNo}">
											<input type="hidden" name="sNo" value="${schedule.SNo}">
											
											<c:if test="${empty mMileage}">
												<input type="hidden" name="mMileage" value="0">
												<input type="hidden" name="pMileage" value="0">
                                       			<input type="hidden" name="total" value="${total}">
                                       			<input type="hidden" name="pPay" value="${total}">
                                       			<input type="hidden" name="rPay" value="${total}">
                                            </c:if>
                                           	<c:if test="${!empty mMileage}">
                                           		<input type="hidden" name="mMileage" value="${mMileage}">
												<input type="hidden" name="pMileage" value="${mMileage}">
                                            	<input type="hidden" name="total" value="${mileTotal}">
                                            	<input type="hidden" name="pPay" value="${mileTotal}">
                                            	<input type="hidden" name="rPay" value="${mileTotal}">
                                           	</c:if>
			                            	<c:forEach var="p1" items="${pSeat}" varStatus="status">
												<input type="hidden" name="pSeat" value="${p1}">
	                                        </c:forEach>
	                                        <c:forEach var="p2" items="${pName}" varStatus="status">
												<input type="hidden" name="pName" value="${p2}">
	                                        </c:forEach>
	                                        <c:forEach var="p3" items="${pBirth}" varStatus="status">
												<input type="hidden" name="pBirthday" value="${p3}">
	                                        </c:forEach>
	                                        <c:forEach var="p4" items="${pCon}" varStatus="status">
												<input type="hidden" name="pCon" value="${p4}">
	                                        </c:forEach>
	                                        <input type="hidden" name="pImpUid">
	                                        
											<div class="continue-btn">
												<input type="button" value="결제하기" class="btn btn-solid" id="btPayment">
											</div>
										</form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- booking section end -->


    <!-- book now section start -->
    <div class="book-panel">
        <h6 class="mb-0 text">결제 금액 : <span>$2750</span></h6>
        <button type="button" class="btn bottom-btn theme-color">make payment</button>
    </div>
    <!-- book now section end -->

<%@include file="../inc/footer.jsp"%>   