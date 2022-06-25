<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>deleteMem.jsp</title>
</head>
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

							<!-- 회원탈퇴 -->
							
								<div class="dashboard-box">
									<div class="dashboard-title">
										<h4>delete your accont</h4>
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
												계정을 삭제하면 프로필, 개인 설정 및 기타 모든 관련 정보가 영구적으로 제거됩니다.<br> 계정이
												삭제되면 로그아웃되고 다시 로그인할 수 없습니다.<br> 위의 내용을 이해하고 동의한 경우에도
												계정을 삭제하려면 비밀번호 입력 후 탈퇴 버튼을 클릭하십시오.<br>
											</p>
											<form name="memOut" method="post" action="<c:url value='/member/outMem.do'/>">
												<br> <input class="form-control" type="password"
													name="memPwd" required="" placeholder="password"><br>
												
												<div id=btOut>
													<input class="btn btn-solid" type="submit" id="submitOut"
													value="회원탈퇴" style="height: 40px;">
												</div>
											</form>
										</div>
									</div>
								</div>
						
							<!-- 회원탈퇴 끝 -->
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