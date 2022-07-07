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
                    <h5>유저 조회</h5>
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
                      <table class="user-table table table-striped">
                        <thead>
                          <tr>
                            <th align="center">유저아이디</th>
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
                            <td><span class=" d-block" >${vo.manId }</span>
                            </td>
                            <td><a href="#"><span class="d-block ">${vo.manName }</span><span></span></a>
                            </td>
                            <td>
                            <input type="hidden" value="${vo.manId }">
                             <a href="<c:url value='/admin/delAdmin?manId=${vo.manId }'/>"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
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
                      <!-- <li class="page-item "><a class="page-link" href="javascript:void(0)"
                          tabindex="-1">Previous</a>
                      </li>
                      <li class="page-item"><a class="page-link" href="javascript:void(0)">1</a></li>
                      <li class="page-item active"><a class="page-link" href="javascript:void(0)">2 <span
                            class="sr-only">(current)</span></a></li>
                      <li class="page-item"><a class="page-link" href="javascript:void(0)">3</a></li>
                      <li class="page-item"><a class="page-link" href="javascript:void(0)">4</a></li>
                      <li class="page-item"><a class="page-link" href="javascript:void(0)">5</a></li>
                      <li class="page-item"><a class="page-link" href="javascript:void(0)">Next</a></li> -->
                    	
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


     <!-- Modal -->
    <div class="modal fade " id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
      aria-labelledby="staticBackdropLabel" aria-hidden="true">
      <div class="modal-dialog  modal-dialog-centered">
        <div class="modal-content">

          <div class="modal-body">
            <h5 class="modal-title" id="staticBackdropLabel">Logging Out</h5>
            <p>Are you sure you want to log out?</p>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>

            <div class="button-box">
              <button type="button" class="btn btn--no " data-bs-dismiss="modal">No</button>
              <button type="button" class="btn  btn--yes btn-primary">Yes</button>
            </div>
          </div>
        </div>
      </div>
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