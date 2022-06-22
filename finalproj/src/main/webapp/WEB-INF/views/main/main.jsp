<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<script src="../assets/js/booking.js"></script>

<body>

 <!-- home section start -->
    <section class="cab-section flight-section home-section p-0">
        <div class="cloud">
            <img src="http://themes.pixelstrap.com/rica/assets/images/flights/sky.jpg" alt="" class="bg-img">
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="flight-left h-100">
                        <!-- <img src="../assets/images/flights/plane-1.png"
                            class="img-fluid blur-up lazyload plane-animation" alt=""> -->
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="cab-content">
                        <div>
                            <div class="top-cls">
                                #On Air
                            </div>
                            <!-- <form class="radio-form">
                                <input id="radio-1" type="radio" name="exampleRadios" value="option1" checked>
                                <label for="radio-1" class="radio-label">round trip</label>
                                <input id="radio-2" type="radio" name="exampleRadios" value="option2">
                                <label for="radio-2" class="radio-label">one way</label>
                            </form> -->
                            <form>
                                <div class="form-group">
                                    <input type="text" class="form-control open-select" placeholder="출발지" id="Depart">
                                    <img src="../assets/images/icon/from.png" class="img-fluid blur-up lazyload" alt="">
                                    <div class="selector-box" >
                                        <h6 class="title" >출발지</h6>
                                        <ul class="d">
                                            <li>
                                                <a href="#">
                                                    <h5>서울/김포</h5>
                                                    <h6>김포 국제공항</h6>
                                                    <span>GMP</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>부산/김해</h5>
                                                    <h6>김해 국제공항</h6>
                                                    <span>PUS</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>제주</h5>
                                                    <h6>제주 국제공항</h6>
                                                    <span>CJU</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>대구</h5>
                                                    <h6>대구 국제공항</h6>
                                                    <span>TAE</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>울산</h5>
                                                    <h6>울산 국내공항</h6>
                                                    <span>USN</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>청주</h5>
                                                    <h6>청주 국제공항</h6>
                                                    <span>CJJ</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>무안</h5>
                                                    <h6>무안 국제공항</h6>
                                                    <span>MWX</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>광주</h5>
                                                    <h6>광주 국내공항</h6>
                                                    <span>KWJ</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>여수</h5>
                                                    <h6>여수 국내공항</h6>
                                                    <span>RSU</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>포항</h5>
                                                    <h6>포항 국내공항</h6>
                                                    <span>KPO</span>
                                                </a>
                                            </li>
                                             <li>
                                                <a href="#">
                                                    <h5>양양</h5>
                                                    <h6>양양 국내공항</h6>
                                                    <span>YNY</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>사천</h5>
                                                    <h6>사천 국내공항</h6>
                                                    <span>HIN</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>군산</h5>
                                                    <h6>군산 국내공항</h6>
                                                    <span>KUV</span>
                                                </a>
                                            </li>
                                             <li>
                                                <a href="#">
                                                    <h5>횡성/원주</h5>
                                                    <h6>원주 국내공항</h6>
                                                    <span>WJU</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control open-select" placeholder="도착지" id="Arrive">
                                    <img src="../assets/images/icon/location.png" class="img-fluid blur-up lazyload"
                                        alt="">
                                    
                                    <div class="selector-box" >
                                        <h6 class="title">도착지</h6>
                                        <ul class="a">
                                            <li>
                                                <a href="#">
                                                    <h5>서울/김포</h5>
                                                    <h6>김포 국제공항</h6>
                                                    <span>GMP</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>부산/김해</h5>
                                                    <h6>김해 국제공항</h6>
                                                    <span>PUS</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>제주</h5>
                                                    <h6>제주 국제공항</h6>
                                                    <span>CJU</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>대구</h5>
                                                    <h6>대구 국제공항</h6>
                                                    <span>TAE</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>울산</h5>
                                                    <h6>울산 국내공항</h6>
                                                    <span>USN</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>청주</h5>
                                                    <h6>청주 국제공항</h6>
                                                    <span>CJJ</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>무안</h5>
                                                    <h6>무안 국제공항</h6>
                                                    <span>MWX</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>광주</h5>
                                                    <h6>광주 국내공항</h6>
                                                    <span>KWJ</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>여수</h5>
                                                    <h6>여수 국내공항</h6>
                                                    <span>RSU</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>포항</h5>
                                                    <h6>포항 국내공항</h6>
                                                    <span>KPO</span>
                                                </a>
                                            </li>
                                             <li>
                                                <a href="#">
                                                    <h5>양양</h5>
                                                    <h6>양양 국내공항</h6>
                                                    <span>YNY</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>사천</h5>
                                                    <h6>사천 국내공항</h6>
                                                    <span>HIN</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>군산</h5>
                                                    <h6>군산 국내공항</h6>
                                                    <span>KUV</span>
                                                </a>
                                            </li>
                                             <li>
                                                <a href="#">
                                                    <h5>횡성/원주</h5>
                                                    <h6>원주 국내공항</h6>
                                                    <span>WJU</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="form-group mb-0">
                                    <div class="row">
                                        <!-- <div class="col">
                                            <input placeholder="Depart Date" id="datepicker" />
                                        </div>
                                        <div id="dropdate" class="col">
	                                        <div role="wrapper" class="gj-datepicker gj-datepicker-bootstrap gj-unselectable input-group">
	                                            <input placeholder="Return Date" id="datepicker1" />
	                                            <span class="input-group-append" role="right-icon">
	                                            	<button class="btn btn-outline-secondary border-left-0" type="button">
	                                            		<i class="gj-icon">event</i>
	                                           		</button>
	                                           	</span>
	                                        </div>
                                        </div> -->
                                        
                                        
                                        <div class="form-group mb-0">
                                    <div class="row">
                                        <div class="col" id="goDate">
                                            <input placeholder="탑승일" id="datepicker" class="datepicker"/>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <input type="text" class="form-control open-select" id="people" name="people"
                                                    placeholder="승객" >
                                                <img src="../assets/images/icon/user.png"
                                                    class="img-fluid blur-up lazyload" alt="">
                                                <div class="selector-box-flight">
                                                    <div class="room-cls">
                                                        <div class="qty-box">
                                                            <label>성인</label>
                                                            <div class="input-group">
                                                                <button type="button" class="btn quantity-left-minus" id="decAd" 
                                                                    data-type="minus" data-field=""> - </button>
                                                                <span name="quantity"  id="numberUpDown1"
                                                                    class="form-control qty-input input-number">1</span>
                                                                <button type="button" class="btn quantity-right-plus"
                                                                    data-type="plus" data-field="" id="incAd">+</button>
                                                            </div>
                                                        </div>
                                                        <div class="qty-box" >
                                                            <label>소아</label>
                                                            <div class="input-group" >
                                                                <button type="button" class="btn quantity-left-minus" id="decCh"
                                                                    data-type="minus" data-field=""> - </button>
                                                                <span name="quantity"  id="numberUpDown2"
                                                                    class="form-control qty-input input-number">1</span>
                                                                <button type="button" class="btn quantity-right-plus" id="incCh"
                                                                    data-type="plus" data-field=""> + </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="bottom-part">
                                                        <a href="javascript:void(0)" class="btn" id="inwonOk">확인</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <a href="<c:url value='/booking/flight-round-trip.do'/>" class="btn btn-rounded btn-sm color1 float-end" id="reservationsubmit">search
                                now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--  home section end -->

<%@include file="../inc/footer.jsp"%>