<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/adminTop.jsp"%>
<script type="text/javascript">
function pageFunc(curPage){
	$('input[name=currentPage]').val(curPage);
	$('form[name=frmPage]').submit();
	
	$('#btSearch').click(function() {
		location.href = "<c:url value='/admin/allUser'/>";
	});
}
</script>
<form name="frmPage" method="post">
	<input type="hidden" name="currentPage">
	<input type="hidden" name="searchKeyword" value="${SearchVO.searchKeyword }"> 
</form>

  <!-- pre-loader start -->
  <div class="loader-wrapper">
    <img src="../admin/images/loader/loader.gif" alt="loader gif">
  </div>
  <!-- pre-loader End -->

  <!-- tap on top starts-->
  <div class="tap-top"><i data-feather="chevrons-up"></i></div>
  <!-- tap on tap ends-->
  <!-- page-wrapper Start-->
  <div class="page-wrapper compact-wrapper modern-type" id="pageWrapper">
	<%-- <form method="post" action="<c:url value='/admin/allUser'/>"> --%>
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
                    <h5>관리자 조회</h5>
                  </div>

                  <!-- <form class="d-inline-flex">
                    <a href="" class="align-items-center btn btn-theme"> <i
                        data-feather="plus-square"></i>Add New
                    </a>
                  </form> -->

                </div>
			
                <div class="card-body">
                	
                  <div>
                    <div class="table-responsive table-desi">
                      <table class="user-table table table-striped" style="width: 60%; margin-left: 325px;" >
                      <!-- <table class="user-table table table-striped" > -->
                        <thead>
                          <tr>
                            <th align="center" >관리자아이디</th>
                            <th align="center">이름</th>
                            <th align="center">삭제</th>
                          </tr>
                        </thead>
                        <tbody>
                        <c:if test="${empty alist }">
                        	<tr>
                        		<td colspan="3" style="text-align: center;"><span class=" d-block">해당 회원이 없습니다.</span></td>
                        	</tr>
                        </c:if>
                        <c:if test="${!empty alist }">
                        <c:forEach var="vo" items="${alist }" varStatus="status">
                          <tr>
                            <td style="width: 200px"><span class=" d-block" >${vo.manId }</span>
                            </td>
                            <td style="width: 200px"><a href="#"><span class="d-block ">${vo.manName }</span><span></span></a>
                            </td>
                            <td style="width: 70px">
                            <input type="hidden" value="${vo.manId }">
                             <a href="<c:url value='/admin/delAdmin?manId=${vo.manId }'/>" onclick="return confirm('해당관리자를 탈퇴처리 하시겠습니까 ?');"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                            </td>
                          </tr>
                          </c:forEach>
                          </c:if>
                        </tbody>
                      </table>
                    </div>
		          
                  </div>
                </div>
                  <form method="post" action="<c:url value='/admin/adminAllUser'/>">
		          	<div class="form-group">
						<input placeholder="" value="${SearchVO.searchKeyword }" type="text" name="searchKeyword" 
							class="form-control" style="width: 450px; text-align: right: ; margin-left: 550px" />
						<button class="btn btn-primary me-3" style="background-color: #4291b8; border-color: #4291b8; width: 85px; height: 40px; font-size: 13px; margin-left: 1000px; margin-top: -60px" id="btSearch">검색</button>
					</div>
		          </form>
                <div class=" pagination-box">
                  <nav class="ms-auto me-auto " aria-label="...">
                  
                    <ul class="pagination pagination-primary">
                    	
                    <c:if test="${pagingInfo.firstPage>1 }">
						<li class="page-item"><a class="page-link"
							onclick="pageFunc(${pagingInfo.firstPage-1})" href="#"
							tabindex="-1"> Previous</a>
						</li>
					</c:if>
					
					<c:forEach var="i" begin="${pagingInfo.firstPage }"
						end="${pagingInfo.lastPage }">
						<c:if test="${i==pagingInfo.currentPage }">
							<li class="page-item"><a class="page-link">${i }</a></li>
						</c:if>

						<c:if test="${i!=pagingInfo.currentPage }">
							<li class="page-item"><a class="page-link" href="#"
								onclick="pageFunc(${i})">${i }</a></li>
						</c:if>
					</c:forEach>

					<c:if test="${pagingInfo.lastPage<pagingInfo.totalPage }">
						<li class="page-item"><a class="page-link" href="#"
							onclick="pageFunc(${pagingInfo.lastPage+1})" >
								Next
						</a></li>
					</c:if>
                    </ul>
				
                  </nav>
		          
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Container-fluid Ends-->

        <!-- <div class="container-fluid">
          <!-- footer start
          <footer class="footer">

            <div class="row">
              <div class="col-md-12 footer-copyright text-center">
                <p class="mb-0">Copyright 2021 © Rica theme by pixelstrap </p>
              </div>
            </div>

          </footer> -->
        </div>
      </div>
      <!-- </form> -->
    </div>




<%@include file="../inc/adminBottom.jsp"%>