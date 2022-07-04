<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script type="text/javascript">
	/* $(function() {
		$('#btWrite').click(function() {
			location.href = "<c:url value='/notice/noticeWrite.do'/>";
		});
	}); */
	
	function pageFunc(curPage){
		$('input[name=currentPage]').val(curPage);
		$('form[name=frmPage]').submit();
	}
</script>

<!-- <style>
.col-lg-10 {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 auto;
    flex: 0 0 auto;
    width: 90%;
    padding-left: 10%;
    margin-bottom: 2rem;
}

.Search {
	text-align:center
}

.noticeSearch {
    height: auto;
}

.noticeSearch {
    width: 20%;
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
    margin-bottom: 2.5rem;
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

.list {
	/* padding-left: 10%; */
}

.listTable {
	width: 100%; 
	text-align: center; 
	border-collapse: collapse;
	border-bottom: 1 ridge;
}

th {
	background: #696969;
	font-size: 15px;
	font-weight: bold;
	font-color: white;
}

td {
	font-size: 16px;
}

th, td {
    border-bottom: 1px solid #444444;
    padding: 25px;
  }

tr:hover{
		background-color: #F5F5F5; cursor: pointer;
	}
	
#block {
	background-color: blue;
}
</style> -->

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


<%-- <!-- section start-->
<section class="small-section bg-inner" data-sticky_parent>
    <div class="container">
        <div class="row">
        	<div class="Search">
	        	<label for="noticeSearch" style="margin-right: 10px; font-weight: bold; font-size:20px">공지사항 검색</label>
	        	<input type="text" class="noticeSearch" name="searchKeyword" value="${param.searchKeyword }" placeholder="검색할 내용을 입력하세요.">
	        	<button id="btnSearch" type="button" class="btn_M black">검색</button>
        	</div>
        	<hr size="5"><br><br>
            <div class="col-lg-10">
                <div class="product_img_scroll" data-sticky_column>
                    <div class="faq-content tab-content" id="top-tabContent">
                        <div style="text-align: right;">
                        	<h6>공지사항 총( )개</h6><hr>
                        </div>
                        <div class="list">
                        	<table  class="listTable">
								<thead>
									<tr>
										<th style="width:70%; color:white;">제목</th>
										<th style="width:10%; color:white;">조회수</th>
										<th style="width:20%; color:white;">등록일</th>
									</tr>									
								</thead>
								<tbody>
									<tr>
										<td colspan="3">해당 글이 존재하지 않습니다.</td>
									</tr>
									<tr>
										<td><a href="<c:url value='/customer/noticeDetail.do'/>">오늘 저녁은 뭘까?</a></td>
										<td>76,157</td>
										<td>22-06-16</td>
									</tr>
									<tr>
										<td><a href="<c:url value='/customer/noticeDetail.do'/>">수업 끝나고 뭐하지?</a></td>
										<td>16,359</td>
										<td>22-06-16</td>
									</tr>
									<c:if test="${empty noticeList }">
										<tr>
											<td colspan="3" class="align_center">해당 글이 존재하지 않습니다.</td>
										</tr>
									</c:if>
									<c:if test="${!empty noticeList }">
										<%for(int i=0;i<pageSize;i++){ 
											if(num-- <1) break;
											
											BoardVO vo = list.get(curPos++);
											%>
											<tr>
												<td>제목</td>
												<td style="text-align:left">
													<a href="countUpdate.jsp?no=<%=vo.getNo()%>">
													<%=vo.getTitle() %></a></td> 
												<td>조회수</td>
												<td><%=vo.getReadcount() %></td>
												<td>등록일</td>
												<td><%=sdf.format(vo.getRegdate()) %></td>
											</tr>
											
											
										<c:forEach var="vo" items="${noticeList }">
											<tr>
												<td>
													<a href="<c:url value='/notice/noticeDetail.do?bNo=${vo.BNo }'/>"><h5>${vo.BTitle}</h5></a>
												</td>
												<td>
													${vo.BCount}
												</td>
												<td>
													<fmt:formatDate value="${vo.BRegdate}" pattern="yyyy-MM-dd" />
												</td>
											</tr>
										</c:forEach>
											
											
										<c:forEach var="vo" items="${noticeList }">
											<div class="detail-wrap wow">
												<div class="row">
													<div class="col-md-4">
														<div class="price">
															<a href="<c:url value='/notice/noticeDetail.do?bNo=${vo.BNo }'/>"><h5>${vo.BTitle}</h5></a>
														</div>
													</div>
													<div class="col-md-3">
														<div class="price">
															<h5>${vo.BCount}</h5>
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
								</tbody>
						    </table>
                        </div>
                    </div>
                </div>
            </div>
            <nav aria-label="Page navigation example" class="pagination-section mt-0">
			    <ul class="pagination">
			        <li class="page-item">
			            <a class="page-link" href="javascript:void(0)" aria-label="Previous">
			                <span aria-hidden="true">&laquo;</span>
			                <span class="sr-only">이전</span>
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
			                <span class="sr-only">다음</span>
			            </a>
			        </li>
			    </ul>
			</nav>
        </div>
    </div>
</section>
<!-- section end--> --%>




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
							<div class="col-md-4">
								<div class="price">
									<div style="">
										<h5>제목</h5>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="price">
									<div>
										<h5>조회수</h5>
									</div>
								</div>
							</div>
							<div class="col-md-3">
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
					<c:if test="${empty list }">
						<div class="detail-wrap wow">
							<div class="row">
								<h5 style="text-align: center">해당 글이 존재하지 않습니다.</h5>
							</div>
						</div>
					</c:if>
					<!-- 글 존재 여부 확인 끝 -->
					
					<!-- 리스트 시작 -->
					<c:if test="${!empty list }">
						<c:forEach var="vo" items="${list }">
							<div class="detail-wrap wow">
								<div class="row">
									<div class="col-md-4">
										<div class="price">
											<a href="<c:url value='/notice/noticeDetail.do?bNo=${vo.BNo }'/>"><h5>${vo.BTitle}</h5></a>
										</div>
									</div>
									<div class="col-md-3">
										<div class="price">
											<h5>${vo.BCount }</h5>
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