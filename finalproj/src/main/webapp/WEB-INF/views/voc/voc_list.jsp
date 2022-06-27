<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript" src="<c:url value='/assets/js/jquery-3.6.0.min.js'/>"></script>
<script type="text/javascript">
	$.setDate = function(){ //controller에 보낼 form의 text 값에 날짜넣기위한 함수화
		var str=$('.endDay').val().split('-'); //endDay 문자열화
		var d=new Date(str[0], str[1]-1, str[2]);
		
		$('.startDay').val($.findDate(d));
	}
	
	$.findDate = function(date){
		return date.getFullYear()+"-"+ $.formatDate(date.getMonth()+1)+"-"
			+$.formatDate(date.getDate());
	}
	
	$.formatDate = function(d){
		if(d<10)
			d="0" + d;
		
		return d;
	}
	
	function pageProc(curPage){
		$('input[name=currentPage]').val(curPage);
		$('form[name=frmPage]').submit();
	}
	
	
</script>

<!-- 페이징 처리위한 form -->
<form action="<c:url value='/voc/voc_list'/>" method="post" name=frmPage>
	<input type="hidden" name="searchKeyword" value="${param.searchKeyword }">
	<input type="hidden" name="searchCondition" value="b_title">
	<input type="hidden" name="currentPage">
	<input type="hidden" class="startDay" name="startDay" value="${dateSearchVO.startDay }">
	<input type="hidden" class="endDay" name="endDay" value="${dateSearchVO.endDay }">
</form>

<!-- breadcrumb start -->
<!-- <section class="breadcrumb-section pt-0 bg-size"  style="height: 350px">
	<img src="../assets/images/flights/flight-breadcrumb2.jpg" class="bg-img img-fluid blur-up" alt="">
        
	<div class="breadcrumb-content dark-content" style="height: 350px">
		<div>
			<h2>고객의 소리</h2>
		</div>
	</div>
</section> -->
<!-- breadcrumb end -->


	<!-- breadcrumb start -->
	<section class="breadcrumb-section no-bg pt-0" id="block"
		style="width: 100%; background-images: http://www.astronomer.rocks/news/photo/202103/89853_24782_324.jpeg;">
		<div class="breadcrumb-content overlay-black">
			<div>
				<h2>고객의소리</h2>
			</div>
		</div>
		<div class="title-breadcrumb">OnAir</div>
	</section>
	<!-- breadcrumb end -->


<!-- blog detail section start -->
<section class="section-b-space bg-white">
	<div class="container">
		<div class="row">
			<div class="col-lg-9 order-lg-1">
				<div class="blog-single-detail">
					<!-- search section start -->

					<div class="bg-inner small-section pb-0">
						<div class="container">
							<div class="flight-search">

								<div class="flight-search-detail"
									style="background-color: #dfd7d79c">
									<!-- 검색기능 form -->
									<form class="row m-0" name="frmSearch" method="post"
										action="<c:url value='/voc/voc_list'/>">
										<div class="col-lg-1" style="text-align: center">
											<span style="font-size: 1.3em">날짜</span>
										</div>
										<div class="col-lg-3">
											<div class="form-group">
												<input type=text placeholder="시작일 선택" name="startDay" class="startDay" value="${dateSearchVO.startDay }" id="datepicker" />

											</div>
										</div>
										<div class="col-lg-3">

											<div class="form-group">
												<input type=text placeholder="종료일 선택" name="endDay" class="endDay" value="${dateSearchVO.endDay }" id="datepicker1" />
											</div>
										</div>
										<div class="col-lg-1" style="text-align: center">
											<span style="font-size: 1.3em">제목</span>
										</div>
										<div class="col-lg-2">
											<div class="form-group">
												<input placeholder="제목 입력" name="searchKeyword" value="${param.searchKeyword }" type="text"
													class="form-control" />
											</div>
										</div>
										<div class="col-lg-2">
											<div class="search-btn">
												<input type="submit" class="btn btn-solid color1" value="조회하기">
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
										<div class="detail-wrap wow"
											style="background-color: black; color: white">
											<div class="row">
												<div class="col-md-2">
													<div class="price">
														<div>
															<h5>번호</h5>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div class="logo-sec">
														<h5>아이디</h5>
													</div>
												</div>

												<div class="col-md-4">
													<div class="price">
														<div style="">
															<h5>제목</h5>
														</div>
													</div>
												</div>

												<div class="col-md-2">
													<div class="price">
														<div style="">
															<h5>등록일</h5>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div class="price">
														<div style="">
															<h5>조회수</h5>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="flight-detail-sec full_width-detail">
									<c:if test="${empty list }">
											<h5>해당 글이 존재하지 않습니다</h5>
									</c:if>
									<c:if test="${!empty list }">
									<!--고객의소리 리스트 반복문 시작  -->
									<c:forEach var="vo" items="${list }">
									<div class="detail-bar">
										<div class="detail-wrap wow">
											<div class="row">
												<div class="col-md-2">
													<div class="price">
														<div>
															<h5>${vo.BNo}</h5>
														</div>
													</div>
												</div>
												<div class="col-md-2">
													<div class="logo-sec">
														<h5>${vo.BId}</h5>
													</div>
												</div>

												<div class="col-md-4">
													<div class="price">
														<div style="">
															<a href="<c:url value='/voc/updateCount?bNo=${vo.BNo }'/>"><h5>${vo.BTitle }</h5></a>
														</div>
													</div>
												</div>

												<div class="col-md-2">
													<div class="price">
														<div style="">
															<h5><fmt:formatDate value="${vo.BRegdate}" pattern="yyyy-MM-dd"/></h5>
														</div>
													</div>
												</div>

												<div class="col-md-2">
													<div class="price">
														<div style="">
															<h5>${vo.BCount}</h5>
														</div>
													</div>
												</div>
											</div>

										</div>
									</div>
									</c:forEach>	 
									<!--반복처리 끝  -->
								 </c:if>
								 <br><br>
								 <div class="divPage">
									 <nav aria-label="Page navigation example" class="pagination-section mt-0">
				                       <ul class="pagination">
				                       	<!-- 이전블록 표시 -->
				                       	<c:if test="${pagingInfo.firstPage>1 }">
				                           <li class="page-item">
				                               <a class="page-link" href="#" onclick="pageProc(${pagingInfo.firstPage-1})" aria-label="Previous">
				                                   <span aria-hidden="true">&laquo;</span>
				                                   <span class="sr-only">이전</span>
				                               </a>
				                           </li>
				                           </c:if>
				                           <!-- 페이지 번호추가 -->
				                           <c:forEach var="i" begin="${pagingInfo.firstPage}" end="${pagingInfo.lastPage }">
					                           <li class="page-item active"><a class="page-link" href="#" onclick="pageProc(${i})">${i}</a></li>
				                           </c:forEach>
				                           <!-- 번호처리 끝 -->
				                           
				                           <!-- 다음블럭 이미지 표시 -->
				                           <c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">
					                           <li class="page-item">
					                               <a class="page-link" href="#" aria-label="Next">
					                                   <span aria-hidden="true">&raquo;</span>
					                                   <span class="sr-only">다음</span>
					                               </a>
					                           </li>
				                           </c:if>
					                       </ul>
					                   </nav>
                    				</div>
								</div>
							</div>
						</div>
					
					</section>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="sticky-cls-top">
					<div class="blog-sidebar">
						<div class="blog-wrapper">
							<div class="search-bar">
								<input type="text" placeholder="Search here.."> <i
									class="fas fa-search"></i>
							</div>
						</div>
						<div class="blog-wrapper">
							<div class="sidebar-title">
								<h5>categories</h5>
							</div>
							<div class="sidebar-content">
								<ul class="sidebar-list">
									<li class=""><a href="<c:url value='/voc/voc_main'/>">
											<i aria-hidden="true" class="fa fa-angle-right"></i>고객의소리
									</a></li>
									<li class=""><a href="<c:url value='/voc/voc_write'/>">
											<i aria-hidden="true" class="fa fa-angle-right"></i>등록하기
									</a></li>
									<li class=""><a href="<c:url value='/voc/voc_list'/>">
											<i aria-hidden="true" class="fa fa-angle-right"></i>목록
									</a></li>
									<li class=""><a href="<c:url value='/voc/voc_mylist'/>"> <i aria-hidden="true"
											class="fa fa-angle-right"></i>내가쓴 글
									</a></li>
								</ul>
							</div>
						</div>
						<div class="blog-wrapper">
							<div class="sidebar-title">
								<h5>popular post</h5>
							</div>
							<div class="sidebar-content">
								<c:import url="/voc/bestList"></c:import>
								<!-- <ul class="blog-post">
									<c:if test="${empty blist }">
										<li>
										<div class="media">
											<div class="media-body align-self-center">
												<div>
													<h6>해당 글이 존재하지 않습니다</h6>
												</div>
											</div>
										</div>
									</li>
									</c:if>
									<c:if test="${!empty blist }">
									<c:forEach var="bvo" items="${blist}">
									<li>
										<div class="media">
											<div class="media-body align-self-center">
												<div>
													<h6><fmt:formatDate value="${bvo.BRegdate}" pattern="yyyy-MM-dd"/></h6>
													<p>${bvo.BTitle}</p>
													<p>${bvo.BCount} hits</p>
												</div>
											</div>
										</div>
									</li><br>
									</c:forEach>
									</c:if>
								</ul> -->
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