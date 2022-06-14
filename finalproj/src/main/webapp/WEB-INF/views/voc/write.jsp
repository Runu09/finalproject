<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>

    <!-- breadcrumb start -->
    <section class="breadcrumb-section flight-sec pt-0">
        <img src="../assets/images/cab/breadcrumb.jpg" class="bg-img img-fluid blur-up lazyload" alt="">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-right breadcrumb-content pt-0">
                        <div>
                            <h2>cab booking</h2>
                            <nav aria-label="breadcrumb" class="theme-breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">cab booking</li>
                                </ol>
                            </nav>
                        </div>
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
                                <h5>contact details</h5>
                            </div>
                            <div class="guest-detail">
                                <form>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col first-name">
                                                <label>first name</label>
                                                <input type="text" id="firstName" class="form-control"
                                                    placeholder="First name">
                                            </div>
                                            <div class="col">
                                                <label>last name</label>
                                                <input type="text" id="lastName" class="form-control"
                                                    placeholder="Last name">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Email address</label>
                                        <input type="email" class="form-control" placeholder="Enter email">
                                        <small id="emailHelp" class="form-text text-muted">Booking confirmation will be
                                            sent to this email ID.</small>
                                    </div>
                                    <div class="form-group">
                                        <label>contact info</label>
                                        <input id="mobile-no" type="tel" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleFormControlTextarea1">special request</label>
                                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"
                                            placeholder=""></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleFormControlTextarea1">have a coupon code?</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="Promo Code">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">apply</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="submit-btn">
                                        <button type="button" onclick="window.location.href='cab-booking-payment.html';"
                                            class="btn btn-solid">proceed to pay</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="review_box">
                            <div class="title-top">
                                <h5>Information</h5>
                            </div>
                            <div class="flight_detail">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="boxes">
                                            <h6>Cancellation Charges</h6>
                                            <ul>
                                                <li>airline fee : <span>$2012</span></li>
                                                <li>This airline allows cancellation only before 2 hrs from departure
                                                    time.
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="boxes">
                                            <h6>Reschedule Charges</h6>
                                            <ul>
                                                <li>airline fee : <span>$2012</span></li>
                                                <li>This airline allows reschedule only before 2 hrs from departure
                                                    time.
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 booking-order res-margin">
                    <div class="review-section">
                        <div class="review_box">
                            <div class="title-top">
                                <h5>booking summery</h5>
                            </div>
                            <div class="flight_detail">
                                <div class="summery_box">
                                    <table class="table table-borderless">
                                        <tbody>
                                            <tr>
                                                <td>Itinerary :</td>
                                                <td>Paris > Toulouse</td>
                                            </tr>
                                            <tr>
                                                <td>pickup date:</td>
                                                <td>10/01/2019, 11.35pm</td>
                                            </tr>
                                            <tr>
                                                <td>return date:</td>
                                                <td>14/01/2019</td>
                                            </tr>
                                            <tr>
                                                <td>car type</td>
                                                <td>Fiat Chrysler</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="grand_total">
                                        <h5>total fare: <span>$1250</span></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="review_box">
                            <div class="flight_detail">
                                <div class="promo-section">
                                    <div class="form-group mb-0">
                                        <label>have a coupon code?</label>
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="Promo Code">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">apply</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="promos">
                                        <form>
                                            <div class="form-check">
                                                <input class="form-check-input radio_animated" type="radio"
                                                    name="radiobtn" id="exampleRadios3" value="option1" checked>
                                                <div>
                                                    <label class="form-check-label title" for="exampleRadios3">
                                                        RICA500
                                                    </label>
                                                    <label class="form-check-label" for="exampleRadios3">
                                                        Use RICA50, and get $50 off on first booking
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input radio_animated" type="radio"
                                                    name="radiobtn" id="exampleRadios4" value="option2">
                                                <div>
                                                    <label class="form-check-label title" for="exampleRadios4">
                                                        CAB10
                                                    </label>
                                                    <label class="form-check-label" for="exampleRadios4">
                                                        Use FLY10, and get 10% off upto $50 on cab ticket bookings.
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input radio_animated" type="radio"
                                                    name="radiobtn" id="exampleRadios5" value="option2">
                                                <div>
                                                    <label class="form-check-label title" for="exampleRadios5">
                                                        CAB80
                                                    </label>
                                                    <label class="form-check-label" for="exampleRadios5">
                                                        Upto 80% Off + Upto 40% Cashback on Cab booking & more + Extra
                                                        10% off via ICICI Cards (10th-13th Oct)
                                                    </label>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="review_box">
                            <img src="../assets/images/cab/advertise.jpg" class="img-fluid blur-up lazyload" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- booking section end -->


    <!-- book now section start -->
    <div class="book-panel">
        <h6 class="mb-0 text">grand total : <span>$1250</span></h6>
        <button type="button" onclick="window.location.href='cab-booking-payment.html';"
            class="btn bottom-btn theme-color">continue</button>
    </div>
    <!-- book now section end -->





<%@include file="../inc/footer.jsp"%>