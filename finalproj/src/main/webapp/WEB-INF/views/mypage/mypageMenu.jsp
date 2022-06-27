<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypageMenu.jsp</title>
</head>
<style>
section.small-section.dashboard-section.bg-inner {
	position: relative;
	top: 100px;
}

footer {
	position: relative;
	top: 65px;
}

</style>
<body>
				<div class="col-lg-3">
					<div class="pro_sticky_info" data-sticky_column>
						<div class="dashboard-sidebar">
							<div class="profile-top">
								<div class="profile-image">
								
									<img src="../assets/images/avtar/1.jpg"
										class="img-fluid blur-up lazyload" alt="">
								</div>
								<div class="profile-detail">
									<h5>${sessionScope.memName } 님</h5>
									<h6>${sessionScope.memId}</h6>
								</div>
							</div>
							<div class="faq-tab">
								<ul class="nav nav-tabs" id="top-tab" role="tablist">
									<li class="nav-item"><a 
										class="nav-link" href="<c:url value='/mypage/mypageMain.do'/>">my onair</a></li>
									<li class="nav-item"><a 
										class="nav-link" href="<c:url value='/member/editMem.do'/>">회원정보수정</a></li>
									<li class="nav-item"><a
										class="nav-link" href="<c:url value='/mypage/bookings.do'/>">항공권이용내역</a></li>
									<li class="nav-item"><a 
										class="nav-link" href="<c:url value='/member/editPwd.do'/>"> 비밀번호변경</a></li>
									<li class="nav-item"><a
										class="nav-link" href="<c:url value='/member/outMem.do'/>">회원탈퇴</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
</body>
</html>