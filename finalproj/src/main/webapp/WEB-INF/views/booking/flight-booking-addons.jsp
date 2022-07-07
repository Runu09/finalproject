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
                                <li class="breadcrumb-item"><a href="<c:url value='/booking/flight-booking.do'/>">예매</a></li>
                                <li class="breadcrumb-item active">좌석선택</li>
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
                                <h5>좌석 및 수하물 추가</h5>
                            </div>
                            <div class="flight_detail">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="accordion addons-according" id="accordionExample">
                                            <div class="card">
                                                <div class="card-header" id="headingTwo">
                                                    <h2 class="mb-0">
                                                        <button class="btn btn-link collapsed" type="button"
                                                            data-bs-toggle="collapse" data-bs-target="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            <img src="../assets/images/icon/seat.png" alt=""
                                                                class="img-fluid blur-up lazyload"> 좌석선택
                                                        </button>
                                                    </h2>
                                                </div>
                                                <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo"
                                                    data-bs-parent="#accordionExample">
                                                    <div class="card-body seat-select">
                                                        <div class="seat-details">
                                                            <ul>
                                                                <li>
                                                                    <div class="box taken"></div>
                                                                    <h6>선택불가좌석</h6>
                                                                </li>
                                                                <li>
                                                                    <div class="box selected"></div>
                                                                    <h6>선택좌석</h6>
                                                                </li>
                                                                <li>
                                                                    <div class="box available"></div>
                                                                    <h6>선택가능좌석</h6>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="plane">
                                                            <div class="cockpit">
                                                                <div>
                                                                    <img src="../assets/images/flights/cockpit.png"
                                                                        alt="" class="img-fluid blur-up lazyload">
                                                                </div>
                                                            </div>
                                                            <div class="exit exit--front fuselage">

                                                            </div>
                                                            <ol class="cabin fuselage">
                                                                <li class="row row--1">
                                                                    <ol class="seats" type="A">
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="1A" />
                                                                            <label for="1A">1A</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="1B" />
                                                                            <label for="1B">1B</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="1C" />
                                                                            <label for="1C">1C</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" disabled id="1D" />
                                                                            <label for="1D">Occupied</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="1E" />
                                                                            <label for="1E">1E</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="1F" />
                                                                            <label for="1F">1F</label>
                                                                        </li>
                                                                    </ol>
                                                                </li>
                                                                <li class="row row--2">
                                                                    <ol class="seats" type="A">
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="2A" />
                                                                            <label for="2A">2A</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="2B" />
                                                                            <label for="2B">2B</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="2C" />
                                                                            <label for="2C">2C</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="2D" />
                                                                            <label for="2D">2D</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="2E" />
                                                                            <label for="2E">2E</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="2F" />
                                                                            <label for="2F">2F</label>
                                                                        </li>
                                                                    </ol>
                                                                </li>
                                                                <li class="row row--3">
                                                                    <ol class="seats" type="A">
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="3A" />
                                                                            <label for="3A">3A</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="3B" />
                                                                            <label for="3B">3B</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="3C" />
                                                                            <label for="3C">3C</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="3D" />
                                                                            <label for="3D">3D</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="3E" />
                                                                            <label for="3E">3E</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="3F" />
                                                                            <label for="3F">3F</label>
                                                                        </li>
                                                                    </ol>
                                                                </li>
                                                                <li class="row row--4">
                                                                    <ol class="seats" type="A">
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="4A" />
                                                                            <label for="4A">4A</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="4B" />
                                                                            <label for="4B">4B</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="4C" />
                                                                            <label for="4C">4C</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="4D" />
                                                                            <label for="4D">4D</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="4E" />
                                                                            <label for="4E">4E</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="4F" />
                                                                            <label for="4F">4F</label>
                                                                        </li>
                                                                    </ol>
                                                                </li>
                                                                <li class="row row--5">
                                                                    <ol class="seats" type="A">
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="5A" />
                                                                            <label for="5A">5A</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="5B" />
                                                                            <label for="5B">5B</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="5C" />
                                                                            <label for="5C">5C</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="5D" />
                                                                            <label for="5D">5D</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="5E" />
                                                                            <label for="5E">5E</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="5F" />
                                                                            <label for="5F">5F</label>
                                                                        </li>
                                                                    </ol>
                                                                </li>
                                                                <li class="row row--6">
                                                                    <ol class="seats" type="A">
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="6A" />
                                                                            <label for="6A">6A</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="6B" />
                                                                            <label for="6B">6B</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="6C" />
                                                                            <label for="6C">6C</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="6D" />
                                                                            <label for="6D">6D</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="6E" />
                                                                            <label for="6E">6E</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="6F" />
                                                                            <label for="6F">6F</label>
                                                                        </li>
                                                                    </ol>
                                                                </li>
                                                                <li class="row row--7">
                                                                    <ol class="seats" type="A">
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="7A" />
                                                                            <label for="7A">7A</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="7B" />
                                                                            <label for="7B">7B</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="7C" />
                                                                            <label for="7C">7C</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="7D" />
                                                                            <label for="7D">7D</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="7E" />
                                                                            <label for="7E">7E</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="7F" />
                                                                            <label for="7F">7F</label>
                                                                        </li>
                                                                    </ol>
                                                                </li>
                                                                <li class="row row--8">
                                                                    <ol class="seats" type="A">
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="8A" />
                                                                            <label for="8A">8A</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="8B" />
                                                                            <label for="8B">8B</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="8C" />
                                                                            <label for="8C">8C</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="8D" />
                                                                            <label for="8D">8D</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="8E" />
                                                                            <label for="8E">8E</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="8F" />
                                                                            <label for="8F">8F</label>
                                                                        </li>
                                                                    </ol>
                                                                </li>
                                                                <li class="row row--9">
                                                                    <ol class="seats" type="A">
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="9A" />
                                                                            <label for="9A">9A</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="9B" />
                                                                            <label for="9B">9B</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="9C" />
                                                                            <label for="9C">9C</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="9D" />
                                                                            <label for="9D">9D</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="9E" />
                                                                            <label for="9E">9E</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="9F" />
                                                                            <label for="9F">9F</label>
                                                                        </li>
                                                                    </ol>
                                                                </li>
                                                                <li class="row row--10">
                                                                    <ol class="seats" type="A">
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="10A" />
                                                                            <label for="10A">10A</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="10B" />
                                                                            <label for="10B">10B</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="10C" />
                                                                            <label for="10C">10C</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="10D" />
                                                                            <label for="10D">10D</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="10E" />
                                                                            <label for="10E">10E</label>
                                                                        </li>
                                                                        <li class="seat">
                                                                            <input type="checkbox" id="10F" />
                                                                            <label for="10F">10F</label>
                                                                        </li>
                                                                    </ol>
                                                                </li>
                                                            </ol>
                                                            <div class="exit exit--back fuselage">

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                           
                                            <div class="card">
                                                <div class="card-header" id="headingThree">
                                                    <h2 class="mb-0">
                                                        <button class="btn btn-link collapsed" type="button"
                                                            data-bs-toggle="collapse" data-bs-target="#collapseThree"
                                                            aria-expanded="false" aria-controls="collapseThree">
                                                            <img src="../assets/images/icon/suitcase.png" alt=""
                                                                class="img-fluid blur-up lazyload"> 추가 수하물
                                                        </button>
                                                    </h2>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree"
                                                    data-bs-parent="#accordionExample">
                                                    <div class="card-body order-menu-section">
                                                        <div class="order-section">
                                                            <div class="order-items">
                                                                <div class="items">
                                                                    <h6>5 KG</h6>
                                                                    <h5>$10.00</h5>
                                                                    <div class="addtocart_btn">
                                                                        <button class="add-button add_cart"
                                                                            title="Add to cart" tabindex="0">
                                                                            add
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                                <div class="items">
                                                                    <h6>7 KG</h6>
                                                                    <h5>$15.00</h5>
                                                                    <div class="addtocart_btn">
                                                                        <button class="add-button add_cart"
                                                                            title="Add to cart" tabindex="0">
                                                                            add
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                                <div class="items">
                                                                    <h6>10 KG</h6>
                                                                    <h5>$20.00</h5>
                                                                    <div class="addtocart_btn">
                                                                        <button class="add-button add_cart"
                                                                            title="Add to cart" tabindex="0">
                                                                            add
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                                <div class="items">
                                                                    <h6>15 KG</h6>
                                                                    <h5>$25.00</h5>
                                                                    <div class="addtocart_btn">
                                                                        <button class="add-button add_cart"
                                                                            title="Add to cart" tabindex="0">
                                                                            add
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                                <div class="items">
                                                                    <h6>20 KG</h6>
                                                                    <h5>$30.00</h5>
                                                                    <div class="addtocart_btn">
                                                                        <button class="add-button add_cart"
                                                                            title="Add to cart" tabindex="0">
                                                                            add
                                                                        </button>
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
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 res-margin">
                    <div class="sticky-cls-top">
                        <div class="review-section">
                            <div class="review_box">
                                <div class="title-top">
                                    <h5>예매정보</h5>
                                </div>
                                <div class="flight_detail">
                                    <div class="summery_box">
                                        <table class="table table-borderless">
                                            <tbody>
                                                <tr>
                                                    <td>항공편</td>
                                                    <td>$2500</td>
                                                </tr>
                                                <tr class="title">
                                                    <td>추가 수하물</td>
                                                </tr>
                                                <tr>
                                                    <td>15kg</td>
                                                    <td>+ $25</td>
                                                </tr>
                                                <tr class="title">
                                                    <td>좌석</td>
                                                </tr>
                                                <tr>
                                                    <td>좌석(10D)</td>
                                                    <td>+ $5</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div class="grand_total">
                                            <h5>예상 결제 금액: <span>$2750</span></h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single-section">
                            <div class="single-sidebar p-0">
                                <div class="newsletter-sec">
                                    <div>
                                        <h4 class="title">always first</h4>
                                        <p>Be the first to find out latest tours and exclusive offers and get 15% off
                                            your first booking.</p>
                                        <form>
                                            <input type="email" id="email1" class="form-control"
                                                placeholder="Enter your email">
                                            <div class="button">
                                                <a href="#" class="btn btn-solid ">be the first</a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="continue-btn">
                <button class="btn btn-solid" onclick="window.location.href='<c:url value="/booking/flight-booking-payment.do"/>'"
                    type="submit">결제하기</button>
            </div>
        </div>
    </section>
    <!-- booking section end -->


    <!-- book now section start -->
    <div class="book-panel">
        <h6 class="mb-0 text">결제금액 : <span>$2750</span></h6>
        <button type="button" onclick="window.location.href='flight-booking-payment.html'"
            class="btn bottom-btn theme-color">make payment</button>
    </div>
    <!-- book now section end -->

<%@include file="../inc/footer.jsp"%>    
    