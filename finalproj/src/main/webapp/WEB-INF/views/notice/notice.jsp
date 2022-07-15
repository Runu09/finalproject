<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script type="text/javascript">
	function pageFunc(curPage){
		$('input[name=currentPage]').val(curPage);
		$('form[name=frmPage]').submit();
	}
</script>

<body>
<form name="frmPage" method="post">
	<input type="hidden" name="startDay" value="${dateSearchVO.startDay }"> 
	<input type="hidden" name="endDay" value="${dateSearchVO.endDay }"> 
	<input type="hidden" name="currentPage">
	<input type="hidden" name="searchKeyword" value="${dateSearchVO.searchKeyword }"> 
</form>

<!-- breadcrumb start -->
<section class="breadcrumb-section no-bg pt-0" id="block"
	style="width: 100%; background-images: http://www.astronomer.rocks/news/photo/202103/89853_24782_324.jpeg;">
	<div class="breadcrumb-content overlay-black">
		<div>
			<h2>공지사항</h2>
		</div>
	</div>
	<div class="title-breadcrumb">OnAir</div>
</section>
<!-- breadcrumb end -->

<!-- search section start -->
<div class="bg-inner small-section pb-0">
	<div class="container">
		<div class="flight-search">
			<div class="flight-search-detail" style="background-color: #dfd7d79c">
				<form name="frm1" method="post"
					action="<c:url value='/notice/notice.do'/>" class="row m-0">
					<div class="col-lg-2" style="text-align: center">
						<span style="font-size: 1.3em">날짜</span>
					</div>
					<div class="col-lg-2">
						<div class="form-group">
							<input placeholder="시작일 선택" name="startDay"
								value="${dateSearchVO.startDay }" id="datepicker" />
						</div>
					</div>
					<div class="col-lg-2">

						<div class="form-group">
							<input placeholder="종료일 선택" name="endDay"
								value="${dateSearchVO.endDay }" id="datepicker1" />
						</div>
					</div>
					<div class="col-lg-2" style="text-align: center">
						<span style="font-size: 1.3em">제목(title)</span>
					</div>
					<div class="col-lg-2">
						<div class="form-group">
							<input placeholder="제목 입력"
								value="${dateSearchVO.searchKeyword }" type="text"
								name="searchKeyword" class="form-control" />
						</div>
					</div>
					<div class="col-lg-2">
						<div class="search-btn">
							<input type="submit" class="btn btn-solid color1" id="btSearch"
								value="조회하기" value="조회하기">
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
			<!-- 리스트 상단 시작 -->
			<div class="flight-detail-sec full_width-detail">
				<div class="detail-bar">
					<div class="detail-wrap wow"
						style="background-color: black; color: white">
						<div class="row">
							<div class="col-md-7">
								<div class="price">
									<div style="">
										<h5>제목</h5>
									</div>
								</div>
							</div>
							<div class="col-md-1">
								<div class="price">
									<div>
										<h5>조회수</h5>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="price">
									<div style="">
										<h5>등록일</h5>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 리스트 상단 끝 -->
			
			<!-- 리스트 본문 시작 -->
			<div class="flight-detail-sec full_width-detail">
				<div class="detail-bar">
					<!-- 글 존재 여부 확인 시작 -->
					<c:if test="${empty noticeList }">
						<div class="detail-wrap wow">
							<div class="row">
								<h5 style="text-align: center">해당 글이 존재하지 않습니다.</h5>
							</div>
						</div>
					</c:if>
					<!-- 글 존재 여부 확인 끝 -->
					
					<!-- 리스트 시작 -->
					<c:if test="${!empty noticeList }">
						<c:forEach var="vo" items="${noticeList }">
							<div class="detail-wrap wow">
								<div class="row">
									<div class="col-md-7">
										<div class="price">
											<a href="<c:url value='/notice/noticeDetail.do?mbNo=${vo.mbNo }'/>">
											<h5>${vo.mbTitle}</h5></a>
										</div>
									</div>
									<div class="col-md-1">
										<div class="price">
											<h5>${vo.mbCount }</h5>
										</div>
									</div>
									<div class="col-md-4">
										<div class="price">
											<h5>
												<fmt:formatDate value="${vo.mbRegdate}" pattern="yyyy-MM-dd" />
											</h5>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>
					<!-- 리스트 끝 -->
				</div>
			</div>
			<!-- 리스트 본문 끝 -->
			
			<!-- 페이징 시작 -->
			<nav aria-label="Page navigation example"
				class="pagination-section mt-0">
				<ul class="pagination">
					<c:if test="${pagingInfo.firstPage>1 }">
						<li class="page-item"><a class="page-link"
							onclick="pageFunc(${pagingInfo.firstPage-1})" href="#"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								<span class="sr-only">이전</span>
						</a></li>
					</c:if>
					<c:forEach var="i" begin="${pagingInfo.firstPage }"
						end="${pagingInfo.lastPage }">
						<c:if test="${i==pagingInfo.currentPage }">
							<li class="page-item active"><a class="page-link">${i }</a></li>
						</c:if>
						<c:if test="${i!=pagingInfo.currentPage }">
							<li class="page-item"><a class="page-link" href="#"
								onclick="pageFunc(${i})">${i }</a></li>
						</c:if>
					</c:forEach>
					<c:if test="${pagingInfo.lastPage<pagingInfo.totalPage }">
						<li class="page-item"><a class="page-link" href="#"
							onclick="pageFunc(${pagingInfo.lastPage+1})" aria-label="Next">
								<span aria-hidden="true">&raquo;</span> <span class="sr-only">다음</span>
						</a></li>
					</c:if>
				</ul>
			</nav>
			<!-- 페이징 끝 -->
		</div>
	</div>

</section>
<!-- section End -->




<%@include file="../inc/footer.jsp"%>