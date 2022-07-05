<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="rica">
<meta name="keywords" content="rica">
<meta name="author" content="rica">
<link rel="icon" href="../assets/images/favicon.png" type="image/x-icon" />
<title>OnAir</title>


<!--Google font-->
<link
	href="https://fonts.googleapis.com/css?family=Nunito:300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:400,500,600,700,800,900&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Vampiro+One&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Dancing+Script&display=swap"
	rel="stylesheet">

<!-- Icons -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="../assets/css/animate.css">

<!-- Date-time picker css -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/datepicker.min.css">

<!-- fare calender -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/fare-calender.css">

<!--Slick slider css-->
<link rel="stylesheet" type="text/css" href="../assets/css/slick.css">
<link rel="stylesheet" type="text/css"
	href="../assets/css/slick-theme.css">

<!-- price range css -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/price-range.css">

<!-- Themify icon -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/magnific-popup.css">
<link rel="stylesheet" type="text/css"
	href="../assets/css/themify-icons.css">

<!-- Bootstrap css -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/bootstrap.css">

<!-- Theme css -->
<link rel="stylesheet" type="text/css" href="../assets/css/color1.css">
<link rel="stylesheet" type="text/css" href="../assets/css/color2.css">

<!-- Animation -->
<link rel="stylesheet" type="text/css" href="../assets/css/animate.css">
<link rel="stylesheet" type="text/css"
	href="../assets/css/themify-icons.css">

<!-- Date-time picker css -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/datepicker.min.css">

<!-- price range css -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/price-range.css">


<style type="text/css">
body {
	cursor: url('../assets/images/cursor.cur'), auto;
}
</style>


<!-- latest jquery-->
<script type="text/javascript" src="../assets/js/jquery-3.6.0.min.js"></script>
<script>
function noteList(){
	
	open("<c:url value='/note/noteList.do'/>", "쪽지함", "width=770, height=400, location=yes, resizable=yes, top=200, left=1000");

}

</script>

</head>

<body>


	<!-- pre-loader start -->
	<!-- <div class="loader-wrapper img-gif">
		<img src="../assets/images/loader.gif" alt="">
	</div> -->
	<!-- pre-loader end -->


	<!-- header start -->
	<header class="overlay-black">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="menu">
						<div class="brand-logo">
							<a href="<c:url value='/main/main.do'/>"> <img
								src="<c:url value='/assets/images/main.png'/>" alt=""
								class="img-fluid blur-up lazyload">
							</a>
						</div>
						<nav>
							<div class="main-navbar">
								<div id="mainnav">
									<div class="toggle-nav">
										<i class="fa fa-bars sidebar-bar"></i>
									</div>
									<div class="menu-overlay"></div>
									<ul class="nav-menu">
										<li class="back-btn">
											<div class="mobile-back text-end">
												<span>Back</span> <i aria-hidden="true"
													class="fa fa-angle-right ps-2"></i>
											</div>
										</li>
										<li class="dropdown"><a href="#"
											class="nav-link menu-title">예매</a>
											<ul class="nav-submenu menu-content">
												<li><a
													href="<c:url value='/booking/flight-round-trip.do'/>"
													class="submenu-title">항공권 예매</a></li>
												<li><a href="#" class="submenu-title">예약 조회</a></li>
												<li><a href="#" class="submenu-title">항공편 현황</a></li>
											</ul></li>
										<li class="dropdown"><a href="#"
											class="nav-link menu-title">공항</a></li>
										<li class="dropdown"><a href="#"
											class="nav-link menu-title">커뮤니티</a>
											<ul class="nav-submenu menu-content">
												<li><a href="<c:url value='/voc/voc_main'/>"
													class="submenu-title">고객의 소리</a></li>
												<li><a href="<c:url value='/lost/list.do'/>"
													class="submenu-title">유실물 찾기</a></li>
											</ul></li>
										<li class="dropdown"><a href="#"
											class="nav-link menu-title">고객지원</a>
											<ul class="nav-submenu menu-content">
												<li><a href="<c:url value='/customer/notice.do'/>"
													class="submenu-title">공지사항</a></li>
												<li><a href="<c:url value='/customer/information.do'/>"
													class="submenu-title">이용안내</a></li>
												<li><a href="<c:url value='/customer/faq.do'/>"
													class="submenu-title">FAQ</a></li>
											</ul></li>
									</ul>
								</div>
							</div>
						</nav>
						<ul class="header-right">


							<!-- 로그인 안된 경우 -->
							<c:if test="${empty sessionScope.memId }">
								<li class="user user-light"><a
									href="<c:url value='/login/login.do'/>" style="color: white">
										로그인 </a></li>
								<li class="user user-light"><a
									href="<c:url value='/member/agreement.do'/>"
									style="color: white"> 회원가입 </a></li>
							</c:if>

							<!-- 로그인 된 경우 -->
							<c:if test="${!empty sessionScope.memId }">
								<li class="user user-light"><a
									href="<c:url value='/login/logout.do'/>" style="color: white">
										로그아웃 </a></li>
								<li class="user user-light"><a
									href="<c:url value='/mypage/mypageMain.do'/>"
									style="color: white"> <svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-person-circle"
											viewBox="0 0 16 16" color="white" style="margin-right: 5px">
	                            	<path
												d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
	                            	<path fill-rule="evenodd"
												d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
                            	</svg> 마이페이지
								</a></li>
								<li class="user user-light"><a href="#" onClick="javascript:noteList();">
								<span style="color:red;font-size:1.2em;font-weight: bold">${count}</span>
								<svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-chat-left-dots-fill"
											viewBox="0 0 16 16" color="white">
										<path
												d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H4.414a1 1 0 0 0-.707.293L.854 15.146A.5.5 0 0 1 0 14.793V2zm5 4a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm4 0a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"></path>
									</svg>
								</a></li>
								
							</c:if>
							<!--  <li class="setting">
                                <a href="#">
                                    <i class="fas fa-cog"></i>
                                </a>
                                <ul class="setting-open">
                                </ul>
                            </li> -->
						</ul>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!--  header end -->