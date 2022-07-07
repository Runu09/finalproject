<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../inc/top.jsp"%>
<script type="text/javascript">
	$(function(){
		$('#btApply').click(function() {
			var mile=document.getElementById('mileage').value;
			var myMile=$('#myMileage').text();
			
			if(mile<=0){
				alert("사용하실 마일리지를 입력하세요.");
			}else if(mile>myMile){
				alert("마일리지가 부족합니다.");
			}else if(mile<=myMile){
				var res=myMile-mile;
				if(res>=0){
					$('#myMileage').text(res);
					var a= "<tr>"
					a+="<td>마일리지</td>"
					a+="<td>"+"-"+mile.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",")+"원</td>"
		            a+="</tr>"
		            $('#table').append(a);
		            
		            var st=$('.grand_total').text();
		            var regex = /[^0-9]/g;
		            var result = st.replace(regex, "");
		            var numRst=parseInt(result)-parseInt(mile);
		            var aaa=numRst.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
		            
		            $('.grand_total span').text(aaa+"원");
				}
			}
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
                                <li class="breadcrumb-item"><a href="<c:url value='/main/main.do'/>">홈</a></li>
                                <li class="breadcrumb-item"><a href="<c:url value='/booking/flight-round-trip.do'/>">항공편검색</a></li>
                                <li class="breadcrumb-item active">예매</li>
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
                    <div class="review-section">
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
                                <h5>정보</h5>
                            </div>
                            <div class="flight_detail">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="boxes">
                                            <h6>예매변경 및 취소 안내</h6>
                                            <ul>
                                                <li>본 항공사는 출발 시간으로부터 2시간 전까지만 일정을 변경할 수 있습니다.</li>
                                            </ul>
                                        </div>
                                       
                                        <div class="boxes">
                                            <h6>수하물 규정</h6>
                                            <ul>
                                                <li>위탁 수하물 : <span>15 kg</span></li>
                                                <li>기내 수하물: <span>7 kg</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="review_box">
                            <div class="title-top">
                                <h5>승객 정보</h5>
                            </div>
                            <div class="flight_detail">
                                <div class="row form_flight">
                                    <div class="col-md-12">
                                        <form>
                                            <h6>승객</h6>
                                            <div class="row">
                                            	<div class="form-group col-md-6">
	                                                <label for="first">이름</label>
	                                                <input type="text" class="form-control" id="firstt" value="${memVo.memName }" readonly="readonly">
                                                </div>
                                            </div>
                                        </form>
                                        
                                        <form>
                                            <h6>contact details</h6>
                                            <div class="row">
                                                <div class="form-group col-md-6">
                                                    <label for="inputEmail4">이메일</label>
                                                    <input type="email" class="form-control" id="inputEmail4" value="${memVo.MEmail1 }@${memVo.MEmail2 }" readonly="readonly">
                                                </div>
                                                <h6> </h6>
                                                <div class="form-group col-md-6">
                                                    <label for="inputnumber">전화번호</label>
                                                    <input type="text" class="form-control" id="inputnumber" value="${memVo.MTel1 }-${memVo.MTel2 }-${memVo.MTel3 }" readonly="readonly">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 res-margin">
                    <div class="sticky-cls-top">
                        <div class="review-section">
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
	                                                    <td><fmt:formatNumber value="${schedule.SPrice*child-schedule.SPrice*0.1}" pattern="#,###" />원</td>
                                                	</c:if>
                                                </tr>
                                                <tr>
                                                    <td>세금</td>
                                                    <td>25,000원</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div class="grand_total" id="total">
                                        	<c:if test="${child==0 }">
	                                            <h5>예상 결제 금액: <span><fmt:formatNumber value="${schedule.SPrice*adult+25000}" pattern="#,###" />원</span></h5>
                                        	</c:if>
                                        	<c:if test="${child!=0 }">
	                                            <h5>예상 결제 금액: <span><fmt:formatNumber value="${schedule.SPrice*adult+schedule.SPrice*child-schedule.SPrice*0.1+25000}" pattern="#,###" />원</span></h5>
                                        	</c:if>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="review_box">
                                <div class="flight_detail">
                                    <div class="promo-section">
                                        <div class="form-group mb-0" style="width: 70%;">
                                            <label>마일리지를 사용하시겠습니까?</label>
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="mileage" id="mileage" onkeyup="printMile()" value="0">
                                                <div class="input-group-prepend">
                                                    <button class="input-group-text" id="btApply" name="btApply">apply</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="promos">
                                            <form>
                                                <div class="form-check">
                                                    <div>
                                                        <label class="form-check-label title" for="exampleRadios3">
                                                        	보유 마일리지
                                                        </label>
                                                        <p id="myMileage">${memVo.MMileage}</p>
                                                    </div>
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
            <div class="continue-btn">
                <button onclick="window.location.href='<c:url value="/booking/flight-booking-addons.do"/>'" class="btn btn-solid"
                    type="submit">예매 진행</button>
            </div>
        </div>
    </section>
    <!-- booking section end -->


    <!-- book now section start -->
    <div class="book-panel">
        <h6 class="mb-0 text">결제금액 : <span>$2500</span></h6>
        <button type="button" onclick="window.location.href='<c:url value="/booking/flight-booking-addons.do"/>'"
            class="btn bottom-btn theme-color">continue</button>
    </div>
    <!-- book now section end -->
    
<%@include file="../inc/footer.jsp"%>