<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>

<!-- breadcrumb start -->
<section class="breadcrumb-section pt-0 bg-size">
	<!-- <img src="../assets/images/flights/flight-breadcrumb2.jpg" class="bg-img img-fluid blur-up" alt="">
         -->
	<div class="breadcrumb-content dark-content">
		<div>
			<h2>유실물 조회</h2>
		</div>
	</div>
</section>
<!-- breadcrumb end -->


<!-- search section start -->
<div class="bg-inner small-section pb-0">
	<div class="container">
		<div class="flight-search">
			<!--  <div class="responsive-detail">
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
                        <a href="javascript:void(0)" class="btn btn-solid color1"> modify search</a>
                    </div>
                </div> -->
			<div class="flight-search-detail">
				<form class="row m-0">
					<div class="col-lg-1"></div>
					<div class="col-lg-1">날짜</div>
					<div class="col-lg-2">
						<div class="form-group">
							<input placeholder="시작일 선택" value="" id="datepicker" />

						</div>
					</div>
					<div class="col-lg-2">

						<div class="form-group">
							<input placeholder="종료일 선택" id="datepicker1" />
						</div>
					</div>
					<div class="col-lg-1">물품명</div>
					<div class="col-lg-3">
						<div class="form-group">
							<input placeholder="물품명 입력" value="" type="text" class="form-control" />

						</div>
					</div>
					<div class="col-lg-2">
						<div class="search-btn">
							<a href="#" class="btn btn-solid color1">조회하기</a>
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

                
<%@include file="../inc/footer.jsp"%>