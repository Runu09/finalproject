<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Rica admin is super flexible, powerful, clean &amp; modern responsive bootstrap 5 admin template with unlimited possibilities.">
<meta name="keywords"
	content="admin template, Rica admin template, dashboard template, flat admin template, responsive admin template, web app">
<meta name="author" content="pixelstrap">
<link rel="icon" href="../admin/images/favicon.png" type="image/x-icon">
<link rel="shortcut icon" href="../admin/images/favicon.png"
	type="image/x-icon">
<title>OnAir</title>
<!-- Google font-->
<link
	href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200&family=Nunito:ital,wght@0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">

<!-- FontAsowme css start  -->
<link rel="stylesheet" type="text/css"
	href="../admin/css/font-awesome.css">

<!-- Themify icon-->
<link rel="stylesheet" type="text/css"
	href="../admin/css/vendors/themify.css">
<!-- ratio start -->
<link rel="stylesheet" type="text/css" href="../admin/css/ratio.css">

<!-- Feather icon-->
<link rel="stylesheet" type="text/css"
	href="../admin/css/vendors/feather-icon.css">
<!-- Plugins css start-->
<link rel="stylesheet" type="text/css"
	href="../admin/css/vendors/scrollbar.css">
<link rel="stylesheet" type="text/css"
	href="../admin/css/vendors/animate.css">
<!-- Plugins css Ends-->
<!-- datepicker -->
<link rel="stylesheet" type="text/css"
	href="../admin/css/vendors/date-picker.css">
<!-- Bootstrap css-->
<link rel="stylesheet" type="text/css"
	href="../admin/css/vendors/bootstrap.css">
<!-- vector map css start -->
<link rel="stylesheet" type="text/css"
	href="../admin/css/vector-map.css">
<!-- vector map css start -->
<!-- slick slider-->
<link rel="stylesheet" type="text/css" href="../admin/css/slick.css">
<link rel="stylesheet" type="text/css"
	href="../admin/css/slick-theme.css">
<!-- App css-->
<link rel="stylesheet" type="text/css" href="../admin/css/style.css">
<!-- Responsive css-->
<link rel="stylesheet" type="text/css"
	href="../admin/css/responsive.css">
</head>

<body>


	<!-- pre-loader start -->
	<div class="loader-wrapper">
		<img src="../admin/images/loader/loader.gif" alt="loader gif">
	</div>
	<!-- pre-loader End -->

	<!-- tap on top starts-->
	<div class="tap-top">
		<i data-feather="chevrons-up"></i>
	</div>
	<!-- tap on tap ends-->
	<!-- page-wrapper Start-->
	<div class="page-wrapper compact-wrapper modern-type" id="pageWrapper">
		<!-- Page Header Start-->
		<div class="page-header">
			<div class="header-wrapper row m-0">

				<div class="header-logo-wrapper col-auto p-0">
					<div class="logo-wrapper">
						<a href="<c:url value='/admin/adminMain'/>"><img
							class="img-fluid main-logo"
							src="<c:url value='/admin/images/main2.png'/>" alt="logo">
							<img class="img-fluid white-logo" src="../admin/images/main.png"
							alt="logo"></a>
					</div>
					<!-- <div class="toggle-sidebar"><i class="status_toggle middle sidebar-toggle"
                            data-feather="align-center"></i>
                    </div> -->
				</div>

				<!-- <form class="form-inline search-full col " action="#" method="get">
                    <div class="form-group w-100">
                        <div class="Typeahead Typeahead--twitterUsers">
                            <div class="u-posRelative">
                                <input class="demo-input Typeahead-input form-control-plaintext w-100" type="text"
                                     name="q" title="" autofocus>
                                <i class="close-search" data-feather="x"></i>
                                <div class="spinner-border Typeahead-spinner" role="status"><span
                                        class="sr-only">Loading...</span>
                                </div>
                            </div>
                            <div class="Typeahead-menu"></div>
                        </div>
                    </div>
                </form> -->
				<div class="nav-right col-4 pull-right right-header p-0">
					<ul class="nav-menus">

						<!-- <li> <span class="header-search"><i data-feather="search"></i></span></li>
                        <li class="onhover-dropdown">
                            <div class="notification-box"><i class="fa fa-bell-o"> </i><span
                                    class="badge rounded-pill badge-theme">4 </span></div>
                                
                             <ul class="notification-dropdown onhover-show-div">
                                <li>
                                    <p><i class="fa fa-circle-o me-3 font-primary"> </i>Delivery processing <span
                                            class="pull-right">10
                                            min.</span></p>
                                </li>
                                <li>
                                    <p><i class="fa fa-circle-o me-3 font-success"></i>Order Complete<span
                                            class="pull-right">1 hr</span>
                                    </p>
                                </li>
                                <li>
                                    <p><i class="fa fa-circle-o me-3 font-info"></i>Tickets Generated<span
                                            class="pull-right">3 hr</span>
                                    </p>
                                </li>
                                <li>
                                    <p><i class="fa fa-circle-o me-3 font-danger"></i>Delivery Complete<span
                                            class="pull-right">6
                                            hr</span></p>
                                </li>
                                <li><a class="btn btn-primary" href="#">Check all notification</a></li> 
                            </ul>
                        </li>-->

						<li><a href="<c:url value='/admin/adminMain'/>"></a> <i
							data-feather="home"></i>
							<h6 class="f-18 mb-0"></h6></li>
						<li>
							<div class="mode">
								<i class="fa fa-moon-o" aria-hidden="true"></i>
							</div>
						</li>
						<li class="onhover-dropdown"><i data-feather="message-square"></i>
							<ul class="chat-dropdown onhover-show-div">
								<li><i data-feather="message-square"></i>
									<h6 class="f-18 mb-0">쪽지함</h6></li>
								<li>
									<div class="media">
										<img class="img-fluid rounded-circle me-3"
											src="../admin/images/user/1.jpg" alt="user1">
										<div class="status-circle online"></div>
										<div class="media-body">
											<span>관욱</span>
											<p>반갑습니다.</p>
										</div>
										<p class="f-12 font-success">방금 전</p>
									</div>
								</li>
								<li>
									<div class="media">
										<img class="img-fluid rounded-circle me-3"
											src="../admin/images/user/2.jpg" alt="user2">
										<div class="status-circle online"></div>
										<div class="media-body">
											<span>수창</span>
											<p>안녕하세요</p>
										</div>
										<p class="f-12 font-success">1시간 전</p>
									</div>
								</li>
								<li class="text-center"><a class="btn btn-primary" href="#">전체
										조회 </a></li>
							</ul></li>
						<!-- <li class="maximize"><a class="text-dark" href="#!" onclick="javascript:toggleFullScreen()"><i
                                    data-feather="maximize"></i></a></li> -->
						<li class="profile-nav onhover-dropdown pe-0 me-0">
							<div class="media profile-media">
								<img class="user-profile rounded-circle"
									src="../admin/images/users/4.jpg" alt="profile-picture">
								<div class="user-name-hide media-body">
									<span></span>
									<p class="mb-0 font-roboto">${sessionScope.manId }
										<i class="middle fa fa-angle-down"></i>
									</p>
								</div>
							</div>
							<ul class="profile-dropdown onhover-show-div">
								<li><a href="#"><i data-feather="user"></i><span>계정</span></a></li>
								<!-- <li><a href="#"><i data-feather="mail"></i><span>쪽지함</span></a></li> -->
								<!-- <li><a href="#"><i data-feather="file-text"></i><span>공지사항</span></a></li> -->
								<!-- <li><a href="#"><i data-feather="settings"></i><span>Settings</span></a></li> -->
								<li><a href="<c:url value='/admin/adminLogout'/>"><i
										data-feather="log-out"> </i> <span>로그아웃</span></a></li>

							</ul>
						</li>
					</ul>
				</div>
				<script class="result-template" type="text/x-handlebars-template">
            		<div class="ProfileCard u-cf">                        
            		<div class="ProfileCard-avatar"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-airplay m-0"><path d="M5 17H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-1"></path><polygon points="12 15 17 21 7 21 12 15"></polygon></svg></div>
            		<div class="ProfileCard-details">
            		<div class="ProfileCard-realName">{{name}}</div>
            		</div>
            	</div>
        		</script>
				<script class="empty-template" type="text/x-handlebars-template"><div class="EmptyMessage">Your search turned up 0 results. This most likely means the backend is down, yikes!</div></script>
			</div>
		</div>
		<!-- Page Header Ends -->

		<!-- Page Body Start-->
		<div class="page-body-wrapper">
			<!-- Page Sidebar Start-->
			<div class="sidebar-wrapper">
				<div>
					<div class="logo-wrapper">
						<span class="back">Back</span>
						<div class="back-btn">
							<i class="fa fa-angle-left"></i>
						</div>
						<div class="toggle-sidebar">
							<i class="status_toggle middle sidebar-toggle"
								data-feather="grid"> </i>
						</div>
					</div>
					<div class="logo-icon-wrapper">
						<a href="<c:url value='/admin/adminMain'/>"><img
							class="img-fluid" src="../admin/images/logo/logo-icon.png" alt=""></a>
					</div>
					<nav class="sidebar-main">
						<div class="left-arrow" id="left-arrow">
							<i data-feather="arrow-left"></i>
						</div>
						<div id="sidebar-menu">
							<ul class="sidebar-links" id="simple-bar">
								<li class="back-btn"><a href="index.html"><img
										class="img-fluid" src="../admin/images/logo/logo-icon.png"
										alt=""></a>
									<div class="mobile-back text-end">
										<span>Back</span><i class="fa fa-angle-right ps-2"
											aria-hidden="true"></i>
									</div></li>

								<li class="sidebar-list"><a
									class="sidebar-link sidebar-title link-nav"
									href="<c:url value='/admin/adminMain'/>"><i
										data-feather="home"> </i><span>홈</span></a></li>
								<%-- <li class="sidebar-list">
                                    <a class="sidebar-link sidebar-title" href="#"><i
                                            data-feather="users"></i><span>유저 </span></a>
                                    <ul class="sidebar-submenu">
                                        <li><a href="<c:url value='/admin/allUser'/>">유저 조회</a></li>
                                        <li><a href="<c:url value='/admin/allUser'/>">관리자 추가</a></li>
                                    </ul>
                                </li> --%>

								<!-- <li class="sidebar-list"><a class="sidebar-link sidebar-title" href="#"><i
                                            data-feather="map"></i><span>Tour Packages</span></a>
                                    <ul class="sidebar-submenu">
                                        <li><a href="all-packages.html">All Packages</a></li>
                                        <li><a href="package-detail.html">Package's Detail</a></li>
                                        <li><a href="add-new-package.html">Add New Package</a></li>
                                        <li><a href="all-package-categories.html">All Package Categories</a></li>
                                        <li><a href="add-package-category.html">Add Package Category</a></li>
                                    </ul>
                                </li> -->

								<!--  <li class="sidebar-list">
                                    <a class="linear-icon-link sidebar-link sidebar-title" href="#"><i
                                            data-feather="briefcase"></i><span>hotel
                                        </span></a>
                                    <ul class="sidebar-submenu">
                                        <li><a href="all-hotel.html">All Hotels</a></li>

                                        <li><a href="hotel-details.html">Hotel's Detail</a></li>
                                        <li><a href="add-new-hotel.html">Add New Hotel</a></li>

                                    </ul>
                                </li>

                                <li class="sidebar-list"><a class="linear-icon-link sidebar-link sidebar-title"
                                        href="#"><i data-feather="coffee"></i><span>Restaurant </span></a>
                                    <ul class="sidebar-submenu">
                                        <li><a href="all-restaurant.html">All Restaurant</a></li>

                                        <li><a href="restaurant-details.html">Restaurant's Details</a></li>
                                        <li><a href="add-new-restaurant.html">Add New Restaurant </a></li>
                                        <li><a href="restaurant-menu.html">Menu Items</a></li>
                                        <li><a href="restaurant-menu-add.html">Add Menu item </a></li>
                                    </ul>
                                </li>

                                <li class="sidebar-list"><a class="sidebar-link sidebar-title" href="#"><i
                                            data-feather="navigation"></i><span>Cab</span></a>
                                    <ul class="sidebar-submenu">
                                        <li><a href="all-cars.html">All Cars</a></li>
                                        <li><a href="cars-detail.html">Cars's Details </a></li>

                                        <li><a href="add-new-cars.html">Add New Cars</a></li>
                                        <li><a href="all-drivers.html">All Drivers</a></li>
                                        <li><a href="add-driver.html">Add Drivers</a></li>
                                    </ul>
                                </li> -->
								<li class="sidebar-list"><a
									class="sidebar-link sidebar-title link-nav"
									href="<c:url value='/admin/allUser'/>"><i
										data-feather="users"> </i><span>유저</span></a></li>
								<%-- <li class="sidebar-list"><a class="sidebar-link sidebar-title link-nav"
                                        href="<c:url value='/admin/adminRegister'/>"><i data-feather="plus-circle"> </i><span>관리자</span></a>
                                </li> --%>
                                <li class="sidebar-list"><a class="sidebar-link sidebar-title" href="#"><i
                                            data-feather="navigation"></i><span>관리자</span></a>
                                    <ul class="sidebar-submenu">
                                        <li><a href="<c:url value='/admin/adminRegister'/>">관리자 등록</a></li>
                                        <li><a href="<c:url value='/admin/allAdmin'/>">관리자 조회</a></li>
                                    </ul>
                                </li> 
                                <li class="sidebar-list"><a class="sidebar-link sidebar-title link-nav"
                                        href="booking.html"><i data-feather="bookmark"> </i><span>예약</span></a>
                                </li>
                                <li class="sidebar-list"><a class="sidebar-link sidebar-title link-nav"
                                        href="reviews.html"><i data-feather="message-square">
                                        </i><span>쪽지함</span></a></li>
                                        
                                <li class="sidebar-list"><a class="sidebar-link sidebar-title" href="#"><i
                                            data-feather="navigation"></i><span>공지사항</span></a>
                                    <ul class="sidebar-submenu">
                                        <li><a href="<c:url value='/notice/notice.do'/>">공지사항 목록</a></li>
                                        <li><a href="<c:url value='/notice/noticeWrite.do'/>">공지사항 등록</a></li>
                                        <!-- <li><a href="add-new-cars.html">공지사항 수정</a></li> -->
                                    </ul>
                                </li>

								<li class="sidebar-list"><a
									class="sidebar-link sidebar-title link-nav"
									href="<c:url value='/admin/adminLogout'/>"><i
										data-feather="log-out"> </i><span>로그아웃</span></a></li>


							</ul>
						</div>
						<div class="right-arrow" id="right-arrow">
							<i data-feather="arrow-right"></i>
						</div>
					</nav>
				</div>
			</div>