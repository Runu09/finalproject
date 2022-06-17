<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>


<style>
.col-lg-10 {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 auto;
    flex: 0 0 auto;
    width: 100%;
}

.Search {
	text-align:center
}

.noticeSearch {
    height: auto;
}

.noticeSearch {
    /* width: 50%; */
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #212529;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border-radius: 0.25rem;
    margin-bottom: 2rem;
}

button.black {
    border: 1px solid black;
    background-color: black;
    color: #fff;
}
.btn_M {
    padding: 11px 30px;
    font-size: 15px;
    min-height: 35px;
    line-height: 14px;
}
.btn_L, .btn_M, .btn_S, .btn_XS {
    border-radius: 3px;
    text-align: center;
}
</style>

<body>

<!-- breadcrumb start -->
<section class="breadcrumb-section no-bg pt-0" id="block"
	style="width: 100%;">
	<div class="breadcrumb-content overlay-black">
		<div>
			<h2>공지사항</h2>
		</div>
	</div>
	<div class="title-breadcrumb">OnAir</div>
</section>
<!-- breadcrumb end -->


<!-- section start-->
<section class="small-section bg-inner" data-sticky_parent>
    <div class="container">
        <div class="row">
        	<div class="Search">
	        	<label for="noticeSearch" style="margin-right: 10px; font-weight: bold; font-size:20px">공지사항 검색</label>
	        	<input type="text" class="noticeSearch">
	        	<button id="btnSearch" type="button" class="btn_M black">검색</button>
        	</div>
        	<hr size="5"><br><br>
            <div class="col-lg-10">
                <div class="product_img_scroll" data-sticky_column>
                    <div class="faq-content tab-content" id="top-tabContent">
                        <h1>공지사항 목록</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- section end-->


<%@include file="../inc/footer.jsp"%>