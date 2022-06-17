<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<%

%>
<script type="text/javascript">	
	$(function(){
		$('.list table tbody tr').hover(function(){
			$(this).css('background','lightgray');
		}, function(){
			$(this).css('background','');
		});
	});
</script>

<style>
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
	        	<input type="text" class="noticeSearch" placeholder="검색할 내용을 입력하세요.">
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
									<%-- <%if(list.isEmpty()){ %>
										<tr>
											<td colspan="3" class="align_center">해당 글이 존재하지 않습니다.</td>
										</tr>
									<%}else{ %>	
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
										<%}//for %>
									<%}//if %>  --%>
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
<!-- section end-->


<%@include file="../inc/footer.jsp"%>