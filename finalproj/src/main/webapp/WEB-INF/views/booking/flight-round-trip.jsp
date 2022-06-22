<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<script src="../assets/js/booking.js"></script>

<!-- breadcrumb start -->
<section class="breadcrumb-section small-sec pt-0">
	<img src="http://themes.pixelstrap.com/rica/assets/images/flights/flight-breadcrumb2.jpg"
		class="bg-img img-fluid blur-up lazyload" alt="">
</section>
<!-- breadcrumb end -->


<!-- search section start -->
    <div class="bg-inner small-section pb-0">
        <div class="container">
            <div class="flight-search">
                <div class="responsive-detail">
                    <div class="destination">
                        <span>서울/김포</span>
                        <span><i class="fas fa-long-arrow-alt-right"></i></span>
                        <span>제주</span>
                    </div>
                    <div class="details">
                        <span>tue, 19-Aug-2019</span>
                        <span class="divider">|</span>
                        <span>2 Adults</span>
                    </div>
                    <div class="modify-search">
                        <a href="javascript:void(0)" class="btn btn-solid color1"> 상세검색</a>
                    </div>
                </div>
                <div class="flight-search-detail">
                    <form class="row m-0">
                        <div class="col-lg-2">
                            <div class="form-group">
                                <label>출발지</label>
                                <input type="text" class="form-control open-select" id="exampleInputEmail1"
                                    value="서울/김포" placeholder="from" id="Depart">
                                <img src="../assets/images/icon/from.png" class="img-fluid blur-up lazyload" alt="">
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
                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <label>도착지</label>
                                <input type="text" class="form-control open-select" value="부산/김해" placeholder="to" id="Arrive">
                                <img src="../assets/images/icon/location.png" class="img-fluid blur-up lazyload" alt="">
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
                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <label>탑승일</label>
                                <input placeholder="Depart Date" id="datepicker" />
                            </div>
                        </div>
                        
                        <div class="col-lg-2">
                            <div class="form-group">
                                <label>승객 선택</label>
                                <input type="text" class="form-control open-select" id="people" name="people" placeholder="to">
                                <img src="../assets/images/icon/user.png" class="img-fluid blur-up lazyload" alt="">
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
                        <div class="col-lg-2">
                            <div class="search-btn">
                                <a href="#" class="btn btn-solid color1">검색</a>
                            </div>
                        </div>
                        <div class="responsive-close">
                            <i class="far fa-times-circle"></i>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- search section end -->


<!-- section start -->
<section class="pt-0 bg-inner small-section loader-section">
	<!-- pre-loader start -->
        <div class="loader-wrapper inner-loader">
            <div class="loader">
                <div class="animation">
                    <svg class="animation__cloud--back" viewBox="0 0 45 18" version="1.1"
                        xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="45px" height="18px">
                        <path
                            d="M 58.88372802734375 825.155517578125 C 16.61685562133789 826.1433715820312 57.925209045410156 781.6769409179688 58.883731842041016 781.3507080078125 C 106.25779724121094 731.152099609375 169.17739868164062 692.9862670898438 226.64694213867188 694.6730346679688 C 227.2968292236328 557.091552734375 389.74322509765625 563.0558471679688 425.166748046875 635.9559326171875 C 534.7359619140625 431.2034912109375 793.6226196289062 599.6361694335938 715.956298828125 741.27392578125 C 820.5570068359375 803.94287109375 789.773193359375 826.9736328125 767.21728515625 825.1555786132812 C 394.85125732421875 825.5911865234375 359.5561218261719 823.805908203125 58.88372802734375 825.155517578125 Z"
                            transform="matrix(0.0573558509349823, 0, 0, 0.056244850158691406, -1.3596858978271484, -29.666284561157227)" />
                    </svg>
                    <svg class="animation__cloud--middle" viewBox="0 0 45 18" version="1.1"
                        xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="45px" height="18px">
                        <path
                            d="M 58.88372802734375 825.155517578125 C 16.61685562133789 826.1433715820312 57.925209045410156 781.6769409179688 58.883731842041016 781.3507080078125 C 106.25779724121094 731.152099609375 169.17739868164062 692.9862670898438 226.64694213867188 694.6730346679688 C 227.2968292236328 557.091552734375 389.74322509765625 563.0558471679688 425.166748046875 635.9559326171875 C 534.7359619140625 431.2034912109375 793.6226196289062 599.6361694335938 715.956298828125 741.27392578125 C 820.5570068359375 803.94287109375 789.773193359375 826.9736328125 767.21728515625 825.1555786132812 C 394.85125732421875 825.5911865234375 359.5561218261719 823.805908203125 58.88372802734375 825.155517578125 Z"
                            transform="matrix(0.0573558509349823, 0, 0, 0.056244850158691406, -1.3596858978271484, -29.666284561157227)" />
                    </svg>
                    <div class="animation__plane--shadow"></div>
                    <svg class="animation__plane" data-name="svgi-plane" viewBox="0 0 135.67 49.55">
                        <path fill="#fff" stroke="#464646" stroke-linejoin="round" d="M74.663 45.572h-9.106z"
                            class="svgi-plane--stripe3" />
                        <path fill="#fff" stroke="#464646" stroke-linejoin="round" stroke-width="1"
                            d="M.75 26.719h23.309z" class="svgi-plane--stripe1" />
                        <path fill="#fff" stroke="#464646" stroke-linejoin="round" stroke-width="1"
                            d="M11.23 31.82h22.654z" class="svgi-plane--stripe2" />
                        <path fill="#fff" stroke="#464646" stroke-linejoin="round" stroke-width="1"
                            d="m 53.47597,24.263013 h 68.97869 c 6.17785,0 12.47074,6.758518 12.40872,8.67006 -0.05,1.537903 -5.43763,7.036166 -11.72452,7.056809 l -59.599872,0.201269 c -9.092727,0.03097 -23.597077,-5.992662 -22.178652,-11.794378 1.160348,-4.74789 7.862358,-4.13376 12.115634,-4.13376 z" />
                        <path fill="#fff" stroke="#464646" stroke-linejoin="round" stroke-width="1"
                            d="M 45.243501,24.351777 37.946312,0.952937 h 7.185155 c 15.37061,20.184725 28.402518,23.28324 28.402518,23.28324 0,0 -27.106129,-0.178562 -28.290484,0.1156 z" />
                        <path fill="#fff" stroke="#464646" stroke-linejoin="round" stroke-width="1"
                            d="m 42.699738,18.984597 h 10.627187 c 5.753726,0 5.364609,7.799958 0,7.799958 H 42.998828 c -4.96749,0 -5.574672,-7.799958 -0.29909,-7.799958 z m 33.139939,16.164502 h 29.656893 c 6.62199,0 6.49395,6.577892 0,6.577892 H 75.940707 c -8.658596,0 -8.499549,-6.35598 -0.10103,-6.577892 z m 9.693907,6.664592 h 8.86866 c 4.439332,0 4.309293,7.066099 0,7.066099 h -8.756626 z" />
                        <path fill="#fff" stroke="#464646" stroke-linejoin="round" stroke-width="1"
                            d="m 85.55159,42.447431 c 0,0 -5.282585,0.456211 -6.372912,3.263659 1.335401,2.378073 6.397919,2.528767 6.397919,2.528767 z" />
                        <path fill="#fff" stroke="#464646" stroke-linejoin="round" stroke-width="1"
                            d="m 133.68903,31.07417 h -7.01411 c -1.26938,0 -2.89286,-1.005314 -3.21496,-3.216179 h 7.50225 z" />
                        <ellipse cx="113.564" cy="29.448534" fill="#fff" stroke="#464646" stroke-linecap="square"
                            stroke-linejoin="round" stroke-width="1" rx="1.3354006" ry="1.6400863" />
                        <ellipse cx="107.56219" cy="29.448534" fill="#fff" stroke="#464646" stroke-linecap="square"
                            stroke-linejoin="round" stroke-width="1" rx="1.3354006" ry="1.6400863" />
                        <ellipse cx="101.56039" cy="29.448534" fill="#fff" stroke="#464646" stroke-linecap="square"
                            stroke-linejoin="round" stroke-width="1" rx="1.3354006" ry="1.6400863" />
                        <ellipse cx="95.558594" cy="29.448534" fill="#fff" stroke="#464646" stroke-linecap="square"
                            stroke-linejoin="round" stroke-width="1" rx="1.3354006" ry="1.6400863" />
                        <ellipse cx="89.556793" cy="29.448534" fill="#fff" stroke="#464646" stroke-linecap="square"
                            stroke-linejoin="round" stroke-width="1" rx="1.3354006" ry="1.6400863" />
                        <ellipse cx="83.554993" cy="29.448534" fill="#fff" stroke="#464646" stroke-linecap="square"
                            stroke-linejoin="round" stroke-width="1" rx="1.3354006" ry="1.6400863" />
                        <ellipse cx="77.553192" cy="29.448534" fill="#fff" stroke="#464646" stroke-linecap="square"
                            stroke-linejoin="round" stroke-width="1" rx="1.3354006" ry="1.6400863" />
                        <ellipse cx="71.551392" cy="29.448534" fill="#fff" stroke="#464646" stroke-linecap="square"
                            stroke-linejoin="round" stroke-width="1" rx="1.3354006" ry="1.6400863" />
                        <ellipse cx="65.549591" cy="29.448534" fill="#fff" stroke="#464646" stroke-linecap="square"
                            stroke-linejoin="round" stroke-width="1" rx="1.3354006" ry="1.6400863" /></svg>
                    <svg class="animation__cloud--front" viewBox="0 0 45 18" version="1.1"
                        xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="45px" height="18px">
                        <path
                            d="M 58.88372802734375 825.155517578125 C 16.61685562133789 826.1433715820312 57.925209045410156 781.6769409179688 58.883731842041016 781.3507080078125 C 106.25779724121094 731.152099609375 169.17739868164062 692.9862670898438 226.64694213867188 694.6730346679688 C 227.2968292236328 557.091552734375 389.74322509765625 563.0558471679688 425.166748046875 635.9559326171875 C 534.7359619140625 431.2034912109375 793.6226196289062 599.6361694335938 715.956298828125 741.27392578125 C 820.5570068359375 803.94287109375 789.773193359375 826.9736328125 767.21728515625 825.1555786132812 C 394.85125732421875 825.5911865234375 359.5561218261719 823.805908203125 58.88372802734375 825.155517578125 Z"
                            transform="matrix(0.0573558509349823, 0, 0, 0.056244850158691406, -1.3596858978271484, -29.666284561157227)" />
                    </svg>
                </div>
            </div>
        </div>
        <!-- pre-loader end -->
        <div class="container">
            <div class="row">
                <div class="col-lg-9 ratio3_2">
                    <a href="javascript:void(0)" class="mobile-filter border-top-0">
                        <h5>최근 검색 조건</h5>
                        <img src="../assets/images/icon/adjust.png" class="img-fluid blur-up lazyload" alt="">
                    </a>
                    <div class="flight-detail-sec">
                        <div class="title-bar">
                            <div class="row">
                                <div class="col-2">
                                    <p>항공사</p>
                                </div>
                                <div class="col-5">
                                    <p>출발지 & 도착지</p>
                                </div>
                                <div class="col-2">
                                    <p>가격</p>
                                </div>
                            </div>
                        </div>
                        <div class="detail-bar">
                            <div class="detail-wrap wow fadeInUp">
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="logo-sec">
                                            <img src="../assets/images/flights/airlines/8.png"
                                                class="img-fluid blur-up lazyload" alt="">
                                            <span class="title">대한항공</span>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="airport-part">
                                            <div class="airport-name">
                                                <h4>17.00</h4>
                                                <h6>GMP</h6>
                                            </div>
                                            <div class="airport-progress">
                                                <i class="fas fa-plane-departure float-start"></i>
                                                <i class="fas fa-plane-arrival float-end"></i>
                                                <div class="stop">
                                                    45분
                                                </div>
                                            </div>
                                            <div class="airport-name arrival">
                                                <h4>17.45</h4>
                                                <h6>CJU</h6>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="price">
                                            <div>
                                                <h4>120,000원</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="book-flight">
                                            <a href="<c:url value='/booking/flight-booking.do'/>" class="btn btn-solid color1 ">book now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            
                            
                        </div>
                    </div>
                    <nav aria-label="Page navigation example" class="pagination-section mt-0">
                        <ul class="pagination">
                            <li class="page-item">
                                <a class="page-link" href="javascript:void(0)" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                    <span class="sr-only">Previous</span>
                                </a>
                            </li>
                            <li class="page-item active"><a class="page-link" href="javascript:void(0)">1</a></li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0)">2</a></li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0)">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="left-sidebar">
                        <div class="back-btn">
                            back
                        </div>
                        <div class="search-bar">
                            <input type="text" placeholder="Search here..">
                            <i class="fas fa-search"></i>
                        </div>
                        <div class="middle-part collection-collapse-block open">
                            <a href="javascript:void(0)" class="section-title collapse-block-title">
                                <h5>검색 조건</h5>
                                <img src="../assets/images/icon/adjust.png" class="img-fluid blur-up lazyload" alt="">
                            </a>
                            <div class="collection-collapse-block-content ">
                                <div class="filter-block">
                                    <div class="collection-collapse-block open">
                                        <h6 class="collapse-block-title">가격</h6>
                                        <div class="collection-collapse-block-content">
                                            <div class="wrapper">
                                                <div class="range-slider">
                                                    <input type="text" class="js-range-slider" value="" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="filter-block">
                                    <div class="collection-collapse-block open">
                                        <h6 class="collapse-block-title">항공사</h6>
                                        <div class="collection-collapse-block-content">
                                            <div class="collection-brand-filter">
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="wifi">
                                                    <label class="form-check-label" for="wifi">대한항공(KAL)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="spa">
                                                    <label class="form-check-label" for="spa">아시아나항공(AAR)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="pet">
                                                    <label class="form-check-label" for="pet">에어로케이(EOK)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="parking">
                                                    <label class="form-check-label" for="parking">에어부산(ABL)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="swimming">
                                                    <label class="form-check-label" for="swimming">에어서울(ASV)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="chinese">
                                                    <label class="form-check-label" for="chinese">제주항공(JJA)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="restaurant">
                                                    <label class="form-check-label" for="restaurant">진에어(JJA)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="restaurant">
                                                    <label class="form-check-label" for="restaurant">티웨이항공(TWB)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="restaurant">
                                                    <label class="form-check-label" for="restaurant">플라이강원(FGW)</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="filter-block">
                                    <div class="collection-collapse-block open">
                                        <h6 class="collapse-block-title">출발 시간</h6>
                                        <div class="collection-collapse-block-content">
                                            <div class="collection-brand-filter">
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="suomi">
                                                    <label class="form-check-label" for="suomi"><img
                                                            src="../assets/images/icon/time/sunrise.png"
                                                            class="img-fluid blur-up lazyload me-1" alt=""> 아침 (6am
                                                        to 12pm)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="english">
                                                    <label class="form-check-label" for="english"><img
                                                            src="../assets/images/icon/time/sun.png"
                                                            class="img-fluid blur-up lazyload me-1" alt=""> 점심 (12pm
                                                        to 6pm)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="sign">
                                                    <label class="form-check-label" for="sign"><img
                                                            src="../assets/images/icon/time/night.png"
                                                            class="img-fluid blur-up lazyload me-1" alt=""> 저녁
                                                        (after 6pm)</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="filter-block">
                                    <div class="collection-collapse-block open">
                                        <h6 class="collapse-block-title">도착시간</h6>
                                        <div class="collection-collapse-block-content">
                                            <div class="collection-brand-filter">
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="morning">
                                                    <label class="form-check-label" for="morning"><img
                                                            src="../assets/images/icon/time/sunrise.png"
                                                            class="img-fluid blur-up lazyload me-1" alt=""> 아침 (6am
                                                        to 12pm)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="noon">
                                                    <label class="form-check-label" for="noon"><img
                                                            src="../assets/images/icon/time/sun.png"
                                                            class="img-fluid blur-up lazyload me-1" alt=""> 점심 (12pm
                                                        to 6pm)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="evening">
                                                    <label class="form-check-label" for="evening"><img
                                                            src="../assets/images/icon/time/night.png"
                                                            class="img-fluid blur-up lazyload me-1" alt=""> 저녁
                                                        (after 6pm)</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="bottom-info">
                            <h5><span>i</span> need help</h5>
                            <h4>856 - 215 - 211</h4>
                            <h6>Monday to Friday 9.00am - 7.30pm</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- section End -->

<%@include file="../inc/footer.jsp"%>