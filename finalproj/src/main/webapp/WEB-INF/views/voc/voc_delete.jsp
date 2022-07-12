<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<script type="text/javascript" src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
<script type="text/javascript">
	$(function(){
		$('form[name=frmWrite]').submit(function(){
			$('.form-control').each(function(idx, item){
				if($.trim($(this).val()).length<1){
					alert($(this).prev().text() + '을(를) 입력하세요');
					$(item).focus();
					event.preventDefault();
					return false;  //each 탈출
				}
			});			
		});
		
	});
</script>
	
    <!-- breadcrumb start -->
    <section class="breadcrumb-section pt-0">
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
                                            <a href="<c:url value='/voc/voc_list'/>">
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
                                <c:import url="/voc/bestList"></c:import>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="review-section">
                        <div class="review_box">
                            <div class="title-top">
                                <h5>고객의 소리 글삭제</h5>
                            </div>
                            <div class="guest-detail">
                            	<!-- 삭제할 글번호 hidden으로 보내줘야함 -->
                                <form name="frmWrite" method="post" enctype="multipart/form-data"
									action="<c:url value='/voc/voc_delete'/>" >
									<input type="hidden" name="BNo" value=${param.bNo } />
									<input type="hidden" name="BGroupno" value=${param.BGroupNo } />
									<input type="hidden" name="BStep" value=${param.BStep } />
									<input type="hidden" name="FName" value=${param.FName } />
									<p style="color: red">${param.bNo }번 글을 삭제하시겠습니까?</p>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col">
                                                <label>Password</label>
                                                <input type="password" id="bPwd" name="bPwd" class="form-control"
                                                    placeholder="비밀번호를 입력하세요">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="submit-btn">
                                        <input type="submit" class="btn btn-solid" value="삭제하기">
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
                
            </div>
        </div>
    </section>
    <!-- blog detail section end -->


<%@include file="../inc/footer.jsp"%>