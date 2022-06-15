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
			
			<div class="flight-search-detail">
				<form class="row m-0">
					
					<div class="col-lg-2" style="text-align: center"><span style="font-size: 1.3em">날짜</span></div>
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
					<div class="col-lg-2" style="text-align: center"><span style="font-size: 1.3em">물품명</span></div>
					<div class="col-lg-2">
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

    <!-- section start -->
    <section class="pt-0 bg-inner small-section loader-section">

        <div class="container">
            <div class="row">
               
                    <div class="flight-detail-sec full_width-detail">
                        <div class="detail-bar">
                            <div class="detail-wrap wow fadeInUp">
                                <div class="row" >
                                     <div class="col-md-3">
                                        <div class="price" >
                                            <div>
                                                <h5>22-001232</h5>
                                              
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2" >
                                        <div class="logo-sec">
                                            <img src="../assets/images/upload.png" alt="">
                                            </div>
                                    </div>
                                    
                                     <div class="col-md-4">
                                        <div class="price">
                                            <div style="">
                                                <h5>에어팟 한쪽 습득했습니다.</h5>
                                              
                                            </div>
                                        </div>
                                    </div>
                                   
                                   <div class="col-md-3">
                                        <div class="price">
                                            <div style="">
                                                <h5>2022-06-15</<h5>
                                               
                                            </div>
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
                            <li class="page-item"><a class="page-link" href="javascript:void(0)">4</a></li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0)">5</a></li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0)">6</a></li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0)">7</a></li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0)">8</a></li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0)">9</a></li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0)">10</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- section End -->
<%@include file="../inc/footer.jsp"%>