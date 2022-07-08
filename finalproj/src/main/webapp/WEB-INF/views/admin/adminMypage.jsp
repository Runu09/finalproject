<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/adminTop.jsp"%>
<<script type="text/javascript">
	$(function(){
		$('#nPwd2').blur(function(){
			if($('#nPwd1').val() != $('#nPwd2').val()){
				if($('#nPwd2').val()!=''){
					alert("비밀번호가 일치하지 않습니다.");
					$('#nPwd2').val('');
					$('#nPwd2').focus();
				}
			}
		})
	})
</script>
      <div class="page-body">

        <!-- Container-fluid starts-->
        <div class="container-fluid">
          <div class="card">
            <div class="row">
              <div class="col-sm-6">
                <div class="card-header">
                  <h5>관리자 마이페이지</h5>
                </div>
                <div class="card-body">
                  <form class="theme-form mega-form">
                    <div class="mb-3">
                      <label class="form-label-title "> 유저아이디</label>
                      <input class="form-control" type="text" value="${sessionScope.manId }" readonly="readonly" style="width: 300px">
                    </div>

                    <div class="mb-3">
                      <label class="form-label-title "> 이름</label>
                      <input class="form-control" type="text" value="${vo.manName }" readonly="readonly" style="width: 300px">
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
          <div class="card">
            <div class="row">
              <div class="col-sm-6">
                <div class="card-header">
                  <h5>비밀번호 변경</h5>
                </div>
                <div class="card-body">
                 <input type="hidden" id="manId" name="manId" value="${sessionScope.manId}">
                  <form class="theme-form mega-form" name="editPwd" method="post" action="<c:url value='/admin/editPwd'/>">

                    <div class="mb-3">
                      <label class="form-label-title "> 기존 비밀번호</label>
                      <input class="form-control" type="password" placeholder="현재 비밀번호" id="manPwd" name="manPwd"  style="width: 300px">
                    </div>

                    <div class="mb-3">
                      <label class="form-label-title "> 새로운 비밀번호</label>
                      <input class="form-control" type="password" placeholder="새로운 비밀번호" id="nPwd" name="nPwd" style="width: 300px">
                    </div>

                    <div class="mb-3">
                      <label class="form-label-title "> 새로운 비밀번호 확인</label>
                      <input class="form-control" type="password" placeholder="새로운 비밀번호 확인" id="nPwd2" name="nPwd2" style="width: 300px">
                    </div>

                    <button class="btn btn-primary"> 비밀번호 변경</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
  <!-- Modal -->
<%@include file="../inc/adminBottom.jsp"%>