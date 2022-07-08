<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/adminTop.jsp"%>
<script type="text/javascript">
window.onload = function() {
	
}

function pageFunc(curPage){
	$('input[name=currentPage]').val(curPage);
	$('form[name=frmPage]').submit();
	
	$('#btSearch').click(function() {
		location.href = "<c:url value='/admin/allUser'/>";
	});
}
/* function delchk(){
    if(confirm("해당 회원을 탈퇴처리 하시겠습니까?")){
    	if(){
	    	location.href = "<c:url value='/admin/delUser?memId=${vo.memId }'/>" ;
    	}else{
    		alert("이미 탈퇴한 회원입니다.");
    	}
        return true;
    } else {
        return false;
    }
} */
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
                            <th>유저아이디</th>
                            <th>이름</th>
                            <th>전화번호</th>
                            <th>생년월일</th>
                            <th>Email</th>
                            <th>주소</th>
                            <th>보유마일리지</th>
                            <th>탈퇴일자&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp삭제</th>
                          </tr>
                        </thead>
                        <tbody>
                        <c:if test="${empty alist }">
                        	<tr>
                        		<td colspan="9" style="text-align: center;"><span class=" d-block">해당 회원이 없습니다.</span></td>
                        	</tr>
                        </c:if>
                        <c:if test="${!empty alist }">
                        <c:forEach var="vo" items="${alist }" varStatus="status">
                          <tr>
                            <td><span class=" d-block" >${vo.memId }</span>
                            	
                            </td>
                            <td><a href="#"><span class="d-block ">${vo.memName }</span><span></span></a>
                            </td>
                            <td>${vo.MTel1}-${vo.MTel2}-${vo.MTel3}</td>
                            <td>${vo.MBirthday }
                              </td>
                            <td>${vo.MEmail1}@${vo.MEmail2}
                              </td>
                            <td class="font-primary">${vo.MAdd1} ${vo.MAdd2}</td>
                            <td>
                              <span>${vo.MMileage}</span>
                            </td>
                            <td >
								<c:choose>
									<c:when test="${vo.MOutdate ne null}">
										<span><fmt:formatDate
										value="${vo.MOutdate}" pattern="yyyy-MM-dd" /></span>
										<a href="#" onclick="return alert('이미 탈퇴한 회원입니다.');">&nbsp&nbsp&nbsp
										<i class="fa fa-trash-o" aria-hidden="true"></i></a>
									</c:when>
									<c:otherwise>
										<a href="<c:url value='/admin/delUser?memId=${vo.memId }'/>" onclick="return confirm('해당회원을 탈퇴처리 하시겠습니까 ?');">
										&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	                            		<i class="fa fa-trash-o" aria-hidden="true"></i></a>
									</c:otherwise>
								</c:choose>
                            </td>
                            <%-- <td>
                              <a href="<c:url value='/member/editMem.do'/>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
							<!--<a href="javascript:void(0)"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a> -->
                            </td>
                            <td>
                            <input type="hidden" id="memId" name="memId" value="${vo.memId }">
                            <a href="<c:url value='/admin/delUser?memId=${vo.memId }'/>" onclick="delchk();">
                             
                            </td> --%>
                          </tr>
                          </c:forEach>
                          </c:if>
                        </tbody>
                      </table>
                    </div>
		          
                  </div>
                </div>
                  <form method="post" action="<c:url value='/admin/allUser'/>">
		          	<div class="form-group">
						<input placeholder="" value="${SearchVO.searchKeyword }" type="text" name="searchKeyword" 
							class="form-control" style="width: 450px; text-align: right: ; margin-left: 550px" />
						<button class="btn btn-primary me-3" style="background-color: #4291b8; border-color: #4291b8; width: 85px; height: 40px; font-size: 13px; margin-left: 1000px; margin-top: -60px" id="btSearch">검색</button>
					</div>
		          </form>
		          <form name="excelForm" id="excelForm" method="post" action="<c:url value='/excelDown'/>">
     					<input class="btn btn-primary me-3" type="submit" id="excelDown" value="유저정보 다운" style="margin-left: 1363px;margin-bottom: -12px; height: 40px;">
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

<%@include file="../inc/adminBottom.jsp"%>