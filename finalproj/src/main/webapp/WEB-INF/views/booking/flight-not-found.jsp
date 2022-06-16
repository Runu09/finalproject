<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>

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
                        <span>dubai</span>
                        <span><i class="fas fa-long-arrow-alt-right"></i></span>
                        <span>paris</span>
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
                                    value="dubai(DXB)" placeholder="from">
                                <img src="../assets/images/icon/from.png" class="img-fluid blur-up lazyload" alt="">
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <label>도착지</label>
                                <input type="text" class="form-control open-select" value="paris(PAR)" placeholder="to">
                                <img src="../assets/images/icon/location.png" class="img-fluid blur-up lazyload" alt="">
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <label>탑승일</label>
                                <input placeholder="Depart Date" value="10/01/2019" id="datepicker" />
                            </div>
                        </div>
                        
                        <div class="col-lg-2">
                            <div class="form-group">
                                <label>승객 선택</label>
                                <input type="text" class="form-control  open-select" value="1 traveller"
                                    placeholder="to">
                                <img src="../assets/images/icon/user.png" class="img-fluid blur-up lazyload" alt="">
                                <div class="selector-box-flight">
                                    <div class="room-cls">
                                        <div class="qty-box">
                                            <label>성인</label>
                                            <div class="input-group">
                                                <button type="button" class="btn quantity-left-minus" data-type="minus"
                                                    data-field=""> - </button>
                                                <input type="text" name="quantity"
                                                    class="form-control qty-input input-number" value="1">
                                                <button type="button" class="btn quantity-right-plus" data-type="plus"
                                                    data-field="">+</button>
                                            </div>
                                        </div>
                                        <div class="qty-box">
                                            <label>소아</label>
                                            <div class="input-group">
                                                <button type="button" class="btn quantity-left-minus" data-type="minus"
                                                    data-field=""> - </button>
                                                <input type="text" name="quantity"
                                                    class="form-control qty-input input-number" value="1">
                                                <button type="button" class="btn quantity-right-plus" data-type="plus"
                                                    data-field=""> + </button>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="bottom-part">
                                        <a href="javascript:void(0)" class="btn">apply</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="search-btn">
                                <a href="#" class="btn btn-solid color1">search</a>
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
<section class="bg-inner small-section success-section">
	<div class="container">
		<div class="row success-detail mt-0">
			<div class="col">
				<img src="../assets/images/flights/plane.png"
					class="img-fluid blur-up lazyload" alt="">
				<h2>항공편을 찾을 수 없습니다.</h2>
				<p>검색결과에 맞는 항공편을 찾을 수 없습니다. 
					다시 검색해주세요.</p>
				<button type="submit" class="btn  btn-solid color1">search
					again</button>
			</div>
		</div>
	</div>
</section>
<!-- section End -->

<%@include file="../inc/footer.jsp"%>