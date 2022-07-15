<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>


<style>
.col-lg-10 {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 auto;
    flex: 0 0 auto;
    width: 90%;
    padding-left: 10%;
    margin-bottom: 2rem;
}

.returnList {
	text-align: right;
}

#title {
	text-align: center;
	padding-top: 10px;
	padding-bottom: 10px;
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
        	<div class="title-part">
                <ul class="post-detail">
                    <li>${vo.mbRegdate }</li>
                    <li> | </li>
                    <li>조회수 : ${vo.mbCount }</li>
                </ul>
                <hr>
                <div id="title">
                	<h2>${vo.mbTitle }</h2>
                </div>
            </div>
        	<hr size="5"><br><br>
            <div class="col-lg-10">
                <div class="product_img_scroll" data-sticky_column>
                    <div class="faq-content tab-content" id="top-tabContent">
                        <h2 style="text-align: center;">${vo.mbContent }</h2>
                        <hr size="3">
                        <div class="returnList">
                        	<button><a href="<c:url value='/notice/notice.do'/>">목록</a></button>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- section end-->


<%@include file="../inc/footer.jsp"%>