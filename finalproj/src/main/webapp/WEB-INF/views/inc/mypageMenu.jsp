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
										class="img-fluid blur-up lazyload" alt=""> <a
										class="profile-edit" href="javascript:void(0)"> <svg
											xmlns="http://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round" class="feather feather-edit">
                                            <path
												d="M20 14.66V20a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h5.34">
                                            </path>
                                            <polygon
												points="18 2 22 6 12 16 8 16 8 12 18 2"></polygon>
                                        </svg>
									</a>
								</div>
								<div class="profile-detail">
									<h5>mark enderess</h5>
									<h6>+91 123 - 456 - 7890</h6>
									<h6>mark.enderess@mail.com</h6>
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
										class="nav-link" href="<c:url value='/member/deleteMem.do'/>">회원탈퇴</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
</body>
</html>