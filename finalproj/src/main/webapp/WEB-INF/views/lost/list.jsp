<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script type="text/javascript">
	$(function() {
 
		$('#btWrite').click(function() {
			location.href = "<c:url value='/lost/write.do'/>";
		});

		
		//startDay, endDay 유효성 검사
		
		
	}); //ready()
	
	function pageFunc(curPage){
		$('input[name=currentPage]').val(curPage);
		$('form[name=frmPage]').submit();
		
	}
	
	
</script>

<!-- 페이징 처리를 위한 form 시작-->
<form name="frmPage" method="post">
	<input type="hidden" name="startDay" value="${dateSearchVO.startDay }"> <input type="hidden" name="endDay"
		value="${dateSearchVO.endDay }"> <input
		type="hidden" name="currentPage">
		<input type="hidden" name="searchKeyword" value="${dateSearchVO.searchKeyword }"> 
</form>
<!-- 페이징 처리 form 끝 -->


<!-- breadcrumb start -->
<section class="breadcrumb-section no-bg pt-0" id="block"
	style="width: 100%;">
	<div class="breadcrumb-content overlay-black">
		<div>
			<h2>유실물 조회</h2>
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
					action="<c:url value='/lost/list.do'/>" class="row m-0">
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
						<span style="font-size: 1.3em">물품명</span>
					</div>
					<div class="col-lg-2">
						<div class="form-group">
							<input placeholder="물품명 입력" value="${dateSearchVO.searchKeyword }" type="text" name="searchKeyword" 
								class="form-control" />

						</div>
					</div>
					<div class="col-lg-2">
						<div class="search-btn">
							<input type="submit" class="btn btn-solid color1" id="btSearch" value="조회하기"
								value="조회하기">
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
							<div class="col-md-3">
								<div class="price">
									<div>
										<h5>번호</h5>

									</div>
								</div>
							</div>
							<div class="col-md-2">
								<div class="logo-sec">
									<h5>사진정보</h5>
								</div>
							</div>

							<div class="col-md-4">
								<div class="price">
									<div style="">
										<h5>제목</h5>

									</div>
								</div>
							</div>

							<div class="col-md-3">
								<div class="price">
									<div style="">
										<h5>
											등록일</
											<h5>
									</div>
								</div>
							</div>
						</div>


					</div>




				</div>
			</div>
			<div class="flight-detail-sec full_width-detail">

				<div class="detail-bar">

					<c:if test="${empty list }">


						<div class="detail-wrap wow">
							<div class="row">

								<h5 style="text-align: center">해당 글이 존재하지 않습니다.</h5>
							</div>

						</div>
					</c:if>

					<c:if test="${!empty list }">
						<c:forEach var="vo" items="${list }">
							<div class="detail-wrap wow">
								<div class="row">
									<div class="col-md-3">
										<div class="price">
											<!-- <div> -->
											<h5>${vo.BNo }</h5>
											<!-- </div> -->
										</div>
									</div>
									<div class="col-md-2">
										<div class="logo-sec">
											<img src="<c:url value='/img_upload/${vo.FName }'/>"
												alt="${vo.BTitle}" style="width: 60px; height: 60px">
										</div>
									</div>

									<div class="col-md-4">
										<div class="price">
											<a href="<c:url value='/lost/detail.do?bNo=${vo.BNo }'/>"><h5>${vo.BTitle}</h5></a>

										</div>
									</div>

									<div class="col-md-3">
										<div class="price">
											<h5>
												<fmt:formatDate value="${vo.BRegdate}" pattern="yyyy-MM-dd" />
											</h5>

										</div>
									</div>
								</div>

							</div>

						</c:forEach>
					</c:if>

				</div>
			</div>
			<div style="text-align: right; margin-bottom: 10px">
				<button class="btn btn-primary me-3"
					style="background-color: #4291b8; border-color: #4291b8; width: 80px; height: 40px; font-size: 20px"
					id="btWrite">등록</button>
			</div>
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



					<!-- <li class="page-item active"><a class="page-link"
						href="javascript:void(0)">1</a></li>
					<li class="page-item"><a class="page-link"
						href="javascript:void(0)">2</a></li>
					<li class="page-item"><a class="page-link"
						href="javascript:void(0)">3</a></li>
					<li class="page-item"><a class="page-link"
						href="javascript:void(0)">4</a></li>
					<li class="page-item"><a class="page-link"
					-->
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
		</div>
	</div>

</section>
<!-- section End -->
<%@include file="../inc/footer.jsp"%>