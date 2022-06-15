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
                                <h5>고객의 소리 글등록</h5>
                            </div>
                            <div class="guest-detail">
                                <form>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col first-name">
                                                <label>userID</label>
                                                <input type="text" id="firstName" class="form-control"
                                                    placeholder="익명으로 가능합니다">
                                            </div>
                                            <div class="col">
                                                <label>Password</label>
                                                <input type="text" id="lastName" class="form-control"
                                                    placeholder="비밀번호를 입력하세요">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>title</label>
                                        <input id="mobile-no" type="tel" class="form-control"
                                        	placeholder="제목을 입력하세요">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleFormControlTextarea1">content</label>
                                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="7"
                                            placeholder="내용을 입력하세요"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleFormControlTextarea1">첨부파일</label>
                                        <div class="input-group">
                                            <input type="file" class="form-control">
                                        </div>
                                    </div>
                                    <div class="submit-btn">
                                        <button type="button" onclick="#"
                                            class="btn btn-solid">등록하기</button>
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
                                            <h6>안녕하세요 고객님</h6>
                                            <ul>
                                                <li>Onair를 이용해주셔서 감사합니다. Onair 직원은 누군가의 아들, 딸, 아버지, 어머니입니다.
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="boxes">
                                            <h6>감사합니다</h6>
                                            <ul>
                                                <li>따뜻한 배려로 글을 남겨주세요</li>
                                                <li>이용해주셔서 감사합니다</li>
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
                                <h5>고객의 소리 전화 이용안내</h5>
                            </div>
                            <div class="flight_detail">
                                <div class="summery_box">
                                    <table class="table table-borderless">
                                        <tbody>
                                            <tr>
                                                <td>평일 09시~18시</td>
                                                <td>토요일 09시~17시</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="grand_total">
                                        <h5>010-1234-5678</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="review_box">
                            <div class="flight_detail">
                                <div class="promo-section">
                                    <div class="promos">
                                        <form>
                                            <div class="form-check">
                                                <div>
                                                    <label class="form-check-label title" for="exampleRadios3">
                                                        무슨말을
                                                    </label>
                                                    <label class="form-check-label" for="exampleRadios3">
                                                        넣어야할까 정말 고민입니다
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