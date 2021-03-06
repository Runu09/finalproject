<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/adminTop.jsp"%>
<script type="text/javascript" src="../assets/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function() {
	
	var memList=[];
	
	$('input[name=chkAll]').click(function(){
		
		$('tbody input[type=checkbox]').prop("checked",this.checked);
	});
	
	
	
	$('#btMemAdd').click(function(){
		
		var cbx=$('tbody input[type=checkbox]:checked');

		if(memList.length>=10){
			alert('최대 10명만 가능합니다.');
			return;
		} 
		
		
		for(i=0;i<cbx.length;i++){
			var val=cbx.eq(i).val();
				for(j=0;j<memList.length;j++){
					if(memList[j]===val){
						alert('회원당 1번만 선택가능합니다.');
						return;
					}
				} 
			memList.push(val);
			$('#receiver').append(cbx.eq(i).val()+'\n');
			
		}
		
		$('#memList').val(memList);
	
		
	});
	
	 $('#btSend').click(function() {
			if($.trim($('#receiver').val()).length<1){
			alert('회원을 선택하세요');	
			//$('#receiver').focus();
			event.preventDefault();
		} 
		else if($.trim($('#nTitle').val()).length<1){
			alert('제목을 입력하세요');	
			$('#nTitle').focus();
			event.preventDefault();
		} 
		else if($.trim($('#nContent').val()).length<1){
			
			alert('내용을 입력하세요');	
			//$('#nContent').focus();
			event.preventDefault();
		} 
	}); 
}); 

function pageFunc(curPage){
	$('input[name=currentPage]').val(curPage);
	$('form[name=frmPage]').submit();
	
	$('#btSearch').click(function() {
		location.href = "<c:url value='/note/write.do'/>";
	});
	
	
	
}

/* function setReceiver(id){
	/* if($('#receiver').text().length>0){
		alert('1명만 선택 가능합니다.');	
		return;
	} */
	/* 
	$('#receiver').append(id+'\n');
	$('#memId').val(id);
} */ 
</script>
<form name="frmPage" method="post">
	<input type="hidden" name="currentPage"> <input type="hidden"
		name="searchKeyword" value="${searchVO.searchKeyword }">
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
							<div class="card-header  card-header--2">

								<div>
									<h5>쪽지발송</h5>
								</div>
							</div>


							<%@include file="write.jsp"%>
							<div class="card-header  card-header--2"
								style="border-top: 1px solid #ecf3fa">

								<div>
									<h5>회원조회</h5>
								</div>
							</div>

							<%-- <form method="post" action="<c:url value='/note/write.do'/>"> --%>
							<div class="card-body">
								<input type="button" class="btn btn-primary me-3"
									value="선택한 회원 추가" id="btMemAdd"
									style="width: 200px; margin-bottom: 10px; margin-top: -10px">

								<div>
									<div class="table-responsive table-desi">

										<table class="user-table table table-striped">
											<thead>
												<tr style="text-align: center">
													<th><input type="checkbox" name="chkAll"></th>
													<th>아이디</th>
													<th>이름</th>
													<th>생년월일</th>
													<th>보유마일리지</th>

												</tr>
											</thead>
											<tbody>
												<c:if test="${empty alist }">
													<tr>
														<td colspan="4" style="text-align: center;"><span
															class=" d-block">가입한 회원이 없습니다.</span></td>
													</tr>
												</c:if>
												<c:if test="${!empty alist }">
<c:set var="i" value="0" />
													<c:forEach var="vo" items="${alist }">
														<tr style="text-align: center">
															<td><input type="checkbox" name="memList[${i }]" 
															value="${vo.memId }">
															<c:set var="i" value="${i+1 }" />
															</td>
															<td>${vo.memId }</td>
															<td>${vo.memName }
															</td>
															<td>${vo.MBirthday }</td>
															<td><span>${vo.MMileage}</span></td>


														</tr>
													</c:forEach>
												</c:if>
											</tbody>
										</table>
									</div>
								</div>

							</div>

							<div class="form-group" style="margin: 0 auto">
								<form method="post" action="<c:url value='/note/write.do'/>">

									<div class="row">
										<input placeholder="이름을 입력하세요"
											value="${searchVO.searchKeyword }" type="text"
											name="searchKeyword" class="form-control"
											style="width: 350px" />
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


<!-- Modal -->
<!-- <div class="modal fade " id="staticBackdrop" data-bs-backdrop="static"
	data-bs-keyboard="false" tabindex="-1"
	aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog  modal-dialog-centered">
		<div class="modal-content">

			<div class="modal-body">
				<h5 class="modal-title" id="staticBackdropLabel">Logging Out</h5>
				<p>Are you sure you want to log out?</p>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>

				<div class="button-box">
					<button type="button" class="btn btn--no " data-bs-dismiss="modal">No</button>
					<button type="button" class="btn  btn--yes btn-primary">Yes</button>
				</div>
			</div>
		</div>
	</div>
</div> -->

</div>




<%@include file="../inc/adminBottom.jsp"%>