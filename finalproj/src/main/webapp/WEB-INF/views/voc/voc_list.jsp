<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>


    <!-- breadcrumb start -->
    <section class="breadcrumb-section pt-0">
/////        <!-- <img src="../assets/images/tour/inner-page/breadcrumb.jpg" class="bg-img img-fluid blur-up lazyload" alt=""> -->
        <div class="breadcrumb-content pt-0">
            <div>
                <h2>blog</h2>
                <nav aria-label="breadcrumb" class="theme-breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">blog</li>
                    </ol>
                </nav>
            </div>
        </div>
        <div class="title-breadcrumb">Rica</div>
    </section>
    <!-- breadcrumb end -->


    <!-- blog detail section start -->
    <section class="section-b-space bg-white">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 order-lg-1">
                    <div class="blog-single-detail">
                        <div class="top-image">
                            <div class="slide-1 arrow-dark">
                                <div>
                                    <img src="../assets/images/portfolio/13.jpg" alt=""
                                        class="img-fluid blur-up lazyload">
                                </div>
                                <div>
                                    <img src="../assets/images/tour/spain.jpg" alt=""
                                        class="img-fluid blur-up lazyload">
                                </div>
                            </div>
                        </div>
                        <div class="title-part">
                            <h3>고객의 소리</h3>
                        </div>
                        <div class="detail-part">
                            <p>OnAir 이용에 대한 건의 · 불만 · 칭찬 등 다양한 의견을 남겨주세요</p>
                        </div>
                        <div class="comment-section">
                            <div class="comment-wrapper">
                                <div class="comment-box">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="title">
                                                <div class="comment-user">
                                                    <i class="fa fa-user"></i>
                                                    <h6>게시글 리스트 뿌리기</h6>
                                                </div>
                                            </div>
										</div>
									</div>										                                            
                        		</div>
                        	</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="sticky-cls-top">
                        <div class="blog-sidebar">
                            <div class="blog-wrapper">
                                <div class="search-bar">
                                    <input type="text" placeholder="Search here..">
                                    <i class="fas fa-search"></i>
                                </div>
                            </div>
                            <div class="blog-wrapper">
                                <div class="sidebar-title">
                                    <h5>categories</h5>
                                </div>
                                <div class="sidebar-content">
                                    <ul class="sidebar-list">
                                        <li class="">
                                            <a href="<c:url value='/voc/voc_main'/>">
                                                <i aria-hidden="true" class="fa fa-angle-right"></i>고객의소리
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="<c:url value='/voc/voc_write'/>">
                                                <i aria-hidden="true" class="fa fa-angle-right"></i>등록하기
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="<c:url value='/voc/voc_list'/>">
                                                <i aria-hidden="true" class="fa fa-angle-right"></i>목록
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="#">
                                                <i aria-hidden="true" class="fa fa-angle-right"></i>내가쓴 글
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="blog-wrapper">
                                <div class="sidebar-title">
                                    <h5>popular post</h5>
                                </div>
                                <div class="sidebar-content">
                                    <ul class="blog-post">
                                        <li>
                                            <div class="media">
                                                <img class="img-fluid blur-up lazyload"
                                                    src="../assets/images/portfolio/6.jpg"
                                                    alt="Generic placeholder image">
                                                <div class="media-body align-self-center">
                                                    <div>
                                                        <h6>25 Dec 2018</h6>
                                                        <p>100 hits</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media">
                                                <img class="img-fluid blur-up lazyload"
                                                    src="../assets/images/portfolio/7.jpg"
                                                    alt="Generic placeholder image">
                                                <div class="media-body align-self-center">
                                                    <div>
                                                        <h6>25 Dec 2018</h6>
                                                        <p>540 hits</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media">
                                                <img class="img-fluid blur-up lazyload"
                                                    src="../assets/images/portfolio/8.jpg"
                                                    alt="Generic placeholder image">
                                                <div class="media-body align-self-center">
                                                    <div>
                                                        <h6>25 Dec 2018</h6>
                                                        <p>250 hits</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media">
                                                <img class="img-fluid blur-up lazyload"
                                                    src="../assets/images/portfolio/2.jpg"
                                                    alt="Generic placeholder image">
                                                <div class="media-body align-self-center">
                                                    <div>
                                                        <h6>25 Dec 2018</h6>
                                                        <p>30 hits</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- blog detail section end -->


<%@include file="../inc/footer.jsp"%>