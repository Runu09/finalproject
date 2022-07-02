<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/adminTop.jsp"%>
<script type="text/javascript" src="../assets/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

function pageFunc(curPage){
	$('input[name=currentPage]').val(curPage);
	$('form[name=frmPage]').submit();
	
	$('#btSearch').click(function() {
		location.href = "<c:url value='/note/list.do'/>";
	});
	
	
	
}

</script>
<form name="frmPage" method="post">
	<input type="hidden" name="currentPage"> <input type="hidden"
		name="searchKeyword" value="${SearchVO.searchKeyword }">
</form>

<!-- pre-loader start -->
<!-- <div class="loader-wrapper">
	<img src="../admin/images/loader/loader.gif" alt="loader gif">
</div>  -->
<!-- pre-loader End -->

<!-- tap on top starts-->
<div class="tap-top">
	<i data-feather="chevrons-up"></i>
</div>
<!-- tap on tap ends-->
<!-- page-wrapper Start-->
<div class="page-wrapper compact-wrapper modern-type" id="pageWrapper">

	<!-- Page Body Start-->
	<div class="page-body-wrapper">

		<div class="page-body">

			<!-- Container-fluid starts-->
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-12">
						<div class="card">
							<div class="card-header  card-header--2"
								style="border-top: 1px solid #ecf3fa">

								<div>
									<h5>쪽지관리</h5>
								</div>
							</div>
							<%-- <form method="post" action="<c:url value='/note/write.do'/>"> --%>
							<div class="card-body">
								<div>
									<div class="table-responsive table-desi"><table class="user-table table table-striped">
											<thead>
												<tr style="text-align: center">
													<th>번호</th>
													<th>보낸사람</th>
													<th>받은사람</th>
													<th>쪽지내용</th>
													<th>발송일</th>

												</tr>
											</thead>
											<tbody>
												<c:if test="${empty noteList }">
													<tr>
														<td colspan="5" style="text-align: center;"><span
															class=" d-block">쪽지 내역이 없습니다.</span></td>
													</tr>
												</c:if>
												<c:if test="${!empty noteList }">
													<c:forEach var="vo" items="${noteList }">
														<tr style="text-align: center">
															<td width="10%">${vo.nmNo }</td>
															<td width="15%">${vo.manId }</td>
															<td width="15%">${vo.memId }</td>
															
															<td width="40%">${vo.NContent }</td>
															<td width="20%">${vo.NTime }</td> 
														</tr>
													</c:forEach> 
												- </c:if>
											</tbody>
										</table>
									</div>
								</div>

							</div>
							<div class="form-group" style="margin: 0 auto">
								<form method="post" action="<c:url value='/note/write.do'/>">

									<div class="row">

										<input placeholder="" value="${SearchVO.searchKeyword }"
											type="text" name="searchKeyword" class="form-control"
											style="width: 350px;" />
										<button class="btn btn-primary me-3"
											style="background-color: #4291b8; border-color: #4291b8; width: 84px; height: 40px; margin-left: 10px; font-size: 13px;"
											id="btSearch">검색</button>
									</div>

								</form>
							</div>
							<div class=" pagination-box">
								<nav class="ms-auto me-auto " aria-label="...">

									<ul class="pagination pagination-primary">

										<c:if test="${pagingInfo.firstPage>1 }">
											<li class="page-item"><a class="page-link"
												onclick="pageFunc(${pagingInfo.firstPage-1})" href="#"
												tabindex="-1"> Previous</a></li>
										</c:if>

										<c:forEach var="i" begin="${pagingInfo.firstPage }"
											end="${pagingInfo.lastPage }">
											<c:if test="${i==pagingInfo.currentPage }">
												<li class="page-item"><a class="page-link"
													style="background-color: lightgray;">${i }</a></li>
											</c:if>

											<c:if test="${i!=pagingInfo.currentPage }">
												<li class="page-item"><a class="page-link" href="#"
													onclick="pageFunc(${i})">${i }</a></li>
											</c:if>
										</c:forEach>

										<c:if test="${pagingInfo.lastPage<pagingInfo.totalPage }">
											<li class="page-item"><a class="page-link" href="#"
												onclick="pageFunc(${pagingInfo.lastPage+1})"> Next </a></li>
										</c:if>
									</ul>
								</nav>

							</div>
						</div>
					</div>

				</div>
			</div>

		</div>
	</div>
	<!-- </form> -->
</div>


</div>

<!-- latest jquery-->
<script src="../admin/js/jquery-3.5.1.min.js"></script>
<!-- Bootstrap js-->
<script src="../admin/js/bootstrap/bootstrap.bundle.min.js"></script>
<!-- feather icon js-->
<script src="../admin/js/icons/feather-icon/feather.min.js"></script>
<script src="../admin/js/icons/feather-icon/feather-icon.js"></script>
<!-- scrollbar js-->
<script src="../admin/js/scrollbar/simplebar.js"></script>
<script src="../admin/js/scrollbar/custom.js"></script>

<!-- customizer js start  -->
<script src="../admin/js/customizer.js"></script>
<!-- customizer js start  -->
<!-- Sidebar jquery-->
<script src="../admin/js/config.js"></script>
<!-- Plugins JS start-->
<script src="../admin/js/sidebar-menu.js"></script>
<script src="../admin/js/notify/bootstrap-notify.min.js"></script>


<script src="../admin/js/notify/index.js"></script>
<script src="../admin/js/typeahead/handlebars.js"></script>
<script src="../admin/js/typeahead/typeahead.bundle.js"></script>
<script src="../admin/js/typeahead/typeahead.custom.js"></script>
<script src="../admin/js/typeahead-search/handlebars.js"></script>
<script src="../admin/js/typeahead-search/typeahead-custom.js"></script>

<!-- Plugins JS Ends-->
<!-- Theme js-->
<script src="../admin/js/script.js"></script>

<!-- login js-->
<!-- Plugin used-->


<%@include file="../inc/adminBottom.jsp"%>