<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>

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
                                            <span class="title">대한항공</span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="airport-part">
                                            <div class="airport-name">
                                                <h6>GMP <span>17.00</span></h6>
                                                <p>2022-08-22 금</p>
                                            </div>
                                            <div class="airport-progress">
                                                <i class="fas fa-plane-departure float-start"></i>
                                                <i class="fas fa-plane-arrival float-end"></i>
                                            </div>
                                            <div class="airport-name arrival">
                                                <h6>CJU <span>17.45</span></h6>
                                                <p>2022-08-22 금</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="duration">
                                            <div>
                                                <h6>45분</h6>
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
                                            <h6>취소 비용</h6>
                                            <ul>
                                                <li>항공료 : <span>$2012</span></li>
                                                <li>※본 항공사는 출발 시간으로부터 2시간 전까지만 일정을 변경할 수 있습니다.</li>
                                            </ul>
                                        </div>
                                        <div class="boxes">
                                            <h6>재예매 비용</h6>
                                            <ul>
                                                <li>항공료 : <span>$2012</span></li>
                                                <li>※본 항공사는 출발 시간으로부터 2시간 전까지만 일정을 변경할 수 있습니다.</li>
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
                                                <div class="form-group col-md-5">
                                                    <label for="first">이름</label>
                                                    <input type="text" class="form-control" id="firstt">
                                                </div>
                                        </form>
                                        
                                        <form>
                                            <h6>contact details</h6>
                                            <div class="row">
                                                <div class="form-group col-md-6">
                                                    <label for="inputEmail4">이메일</label>
                                                    <input type="email" class="form-control" id="inputEmail4">
                                                </div>
                                                <h6> </h6>
                                                <div class="form-group col-md-6">
                                                    <label for="inputnumber">전화번호</label>
                                                    <input type="number" class="form-control" id="inputnumber">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="review_box">
                            <div class="title-top">
                                <h5>여행 보험</h5>
                            </div>
                            <div class="flight_detail">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="boxes">
                                            <h6>secure your travel with travel insurance for $25/person</h6>
                                            <div class="form-check">
                                                <input class="form-check-input radio_animated" type="radio"
                                                    name="exampleRadios1" id="exampleRadios1" value="option1" checked>
                                                <label class="form-check-label" for="exampleRadios1">
                                                    yes, i want to secure my travel with insurance
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input radio_animated" type="radio"
                                                    name="exampleRadios1" id="exampleRadios2" value="option2">
                                                <label class="form-check-label" for="exampleRadios2">
                                                    no, i do not want to secure my travel with insurance
                                                </label>
                                            </div>
                                        </div>
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
                                        <table class="table table-borderless">
                                            <tbody>
                                                <tr>
                                                    <td>성인</td>
                                                    <td>120,000원</td>
                                                </tr>
                                                <tr>
                                                    <td>세금</td>
                                                    <td>25,000원</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div class="grand_total">
                                            <h5>예상 결제 금액: <span>145,000원</span></h5>
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
                                                <input type="text" class="form-control">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">apply</span>
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
                                                        <label class="form-check-label" for="exampleRadios3">
                                                            (사용가능한 마일리지 표시)
                                                        </label>
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