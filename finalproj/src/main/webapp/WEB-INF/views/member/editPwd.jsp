<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>editPwd.jsp</title>
</head>
<script type="text/javascript">
	$(function(){
		$('form[name=pwdEdit]').submit(function(){
			 if($("#newPwd").val() != $("#newPwd2").val()){
				alert("입력하신 새로운 비밀번호가 일치하지 않습니다.");
				$("#newPwd2").focus();
				event.preventDefault();
			}
		});
	});
</script>
<style>

.form-control {
	width: 300px;
}

</style>
<body>
	<!-- section start-->
	<section class="small-section dashboard-section bg-inner"
		data-sticky_parent>
		<div class="container">
			<div class="row">
				<%@include file="../mypage/mypageMenu.jsp"%>

				<div class="col-lg-9">
					<div class="product_img_scroll" data-sticky_column>
						<div class="faq-content tab-content" id="top-tabContent">

						<!-- 비밀번호변경 -->
							
								<div class="dashboard-box">
									<div class="dashboard-title">
										<h4>change your password</h4>
									</div>
									<div class="dashboard-detail">
										<div class="delete-section">
											<p>
												Hi <span class="text-bold">${sessionScope.memName } 님</span>,
											</p>

											<p>
												<span class="text-bold">note:</span>
											</p>
											<p>
												비밀번호는 영문 대소문자, 숫자, _(밑줄문자)를 조합하여 설정해 주세요.<br> 다른 사이트에서
												사용하는 것과 동일하거나 쉬운 비밀번호는 사용하지 마세요.<br> 안전한 계정 사용을 위해
												비밀번호는 주기적으로 변경해 주세요.<br>
											</p><br>
											<form name="pwdEdit" method="post" action="<c:url value='/member/editPwd.do'/>"> 
											<input class="form-control" type="password"
												name="memPwd" required="" placeholder="현재 비밀번호"><br>

											<input class="form-control" type="password" name="newPwd"
												id="newPwd" required="" placeholder="새 비밀번호"><br> 
											<input class="form-control" type="password" name="newPwd2"
												id="newPwd2" required="" placeholder="새 비밀번호 확인"><br> 
												
											<div id=btEdit>
												<input class="btn btn-solid" type="submit" id="btEditPwd"
												value="비밀번호 변경" style="height: 40px;">
											</div>
											</form>
										</div>
									</div>
								</div>
							
							<!-- 비밀번호변경 끝 -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- section end-->
</body>
</html>
<%@include file="../inc/footer.jsp"%>