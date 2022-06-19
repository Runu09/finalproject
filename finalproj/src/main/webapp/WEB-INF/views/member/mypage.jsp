<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
section.small-section.dashboard-section.bg-inner {
    position: relative;
    top: 88px;
}

footer {position: relative;top: 65px;}

.form-control{
	width: 300px
}

#hp{
	width: 150px
}
#email{
	width: 200px
}
</style>
<body>

    <!-- section start-->
    <section class="small-section dashboard-section bg-inner" data-sticky_parent>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="pro_sticky_info" data-sticky_column>
                        <div class="dashboard-sidebar">
                            <div class="profile-top">
                                <div class="profile-image">
                                    <img src="../assets/images/avtar/1.jpg" class="img-fluid blur-up lazyload" alt="">
                                    <a class="profile-edit" href="javascript:void(0)">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                            viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                            stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit">
                                            <path d="M20 14.66V20a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h5.34">
                                            </path>
                                            <polygon points="18 2 22 6 12 16 8 16 8 12 18 2"></polygon>
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
                                    <li class="nav-item"><a data-bs-toggle="tab" class="nav-link active"
                                            href="#dashboard">my onair</a></li>
                                    <li class="nav-item"><a data-bs-toggle="tab" class="nav-link"
                                            href="#profile">회원정보수정</a></li>
                                    <li class="nav-item"><a data-bs-toggle="tab" class="nav-link"
                                            href="#bookings">항공권이용내역</a></li>
                                    <li class="nav-item"><a data-bs-toggle="tab" class="nav-link" 
                                    href="#change-pwd">
                                           비밀번호변경</a></li>
                                    <li class="nav-item"><a data-bs-toggle="tab" class="nav-link"
                                            href="#delete-account">회원탈퇴</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="product_img_scroll" data-sticky_column>
                        <div class="faq-content tab-content" id="top-tabContent">
                            <div class="tab-pane fade show active" id="dashboard">
                                <div class="dashboard-main">
                                    <div class="dashboard-intro">
                                        <h5>welcome! <span>Mark Enderess</span></h5>
                                        <p>you have completed 70% of your profile. add basic info to complete profile.
                                        </p>
                                        <div class="complete-profile">
                                            <div class="row">
                                                <div class="col-xl-4">
                                                    <div class="complete-box">
                                                        <i class="far fa-check-square"></i>
                                                        <h6>verified email ID</h6>
                                                    </div>
                                                </div>
                                                <div class="col-xl-4">
                                                    <div class="complete-box">
                                                        <i class="far fa-check-square"></i>
                                                        <h6>verified phone number</h6>
                                                    </div>
                                                </div>
                                                <div class="col-xl-4">
                                                    <div class="complete-box not-complete">
                                                        <i class="far fa-window-close"></i>
                                                        <h6>complete basic info</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="counter-section">
                                        <div class="row">
                                            <div class="col-xl-3 col-sm-6">
                                                <div class="counter-box">
                                                    <img src="../assets/images/icon/hotel.png"
                                                        class="img-fluid blur-up lazyload" alt="">
                                                    <h3>25</h3>
                                                    <h5>hotel booked</h5>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-sm-6">
                                                <div class="counter-box">
                                                    <img src="../assets/images/icon/flight.png"
                                                        class="img-fluid blur-up lazyload" alt="">
                                                    <h3>12</h3>
                                                    <h5>flight booked</h5>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-sm-6">
                                                <div class="counter-box">
                                                    <img src="../assets/images/icon/taxi.png"
                                                        class="img-fluid blur-up lazyload" alt="">
                                                    <h3>50</h3>
                                                    <h5>cab booked</h5>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-sm-6">
                                                <div class="counter-box">
                                                    <img src="../assets/images/icon/food.png"
                                                        class="img-fluid blur-up lazyload" alt="">
                                                    <h3>40</h3>
                                                    <h5>food ordered</h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="dashboard-info">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div id="chart">
                                                    <div class="detail-left">
                                                        <ul>
                                                            <li><span class="completed"></span> Completed</li>
                                                            <li><span class="upcoming"></span> Upcoming</li>
                                                            <li><span class="cancelled"></span> Cancelled</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="activity-box">
                                                    <h6>recent activity</h6>
                                                    <ul>
                                                        <li>
                                                            <i class="fas fa-plane"></i>
                                                            Paris to Dubai
                                                            <span>3 days ago</span>
                                                        </li>
                                                        <li>
                                                            <i class="fas fa-plane"></i>
                                                            Paris to Dubai
                                                            <span>23 june</span>
                                                        </li>
                                                        <li class="blue-line">
                                                            <i class="fas fa-hotel"></i>
                                                            hotel sea view
                                                            <span>20 april</span>
                                                        </li>
                                                        <li class="yellow-line">
                                                            <i class="fas fa-taxi"></i>
                                                            Paris To Toulouse
                                                            <span>12 feb</span>
                                                        </li>
                                                        <li>
                                                            <i class="fas fa-plane"></i>
                                                            Paris to Dubai
                                                            <span>14 jan</span>
                                                        </li>
                                                        <li class="blue-line">
                                                            <i class="fas fa-hotel"></i>
                                                            hotel sea view
                                                            <span>12 jan</span>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 회원정보수정 -->
                            <div class="tab-pane fade" id="profile">
                                <div class="dashboard-box">
                                    <div class="dashboard-title">
                                        <h4>edit your profile</h4>
                                    </div>
                                    <br>
                                    <div class="dashboard-detail">
                                        <ul>
                                            <li>
                                                <div class="details">
                                                    <div class="left">
                                                        <h6>아이디</h6>
                                                    </div>
                                                    <div class="right">
                                                       <input class="form-control" type="userId" required="" placeholder="id" readonly="readonly">
                                                    </div>
                                                </div>
                                            </li>
                                             <li>
                                                <div class="details">
                                                    <div class="left">
                                                        <h6>이름</h6>
                                                    </div>
                                                    <div class="right">
                                                      <input class="form-control" type="text" required="" placeholder="name" readonly="readonly">
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="details">
                                                    <div class="left">
                                                        <h6>비밀번호</h6>
                                                    </div>
                                                    <div class="right">
                                                        <input class="form-control" type="password" name="pwd" required=""
                                         		   placeholder="password"><br>
                                                    </div>
                                                </div>
                                            </li>
                                           
                                            <li>
                                                <div class="details">
                                                    <div class="left">
                                                        <h6>생년월일</h6>
                                                    </div>
                                                    <div class="right">
                                                         <input class="form-control" type="text" required="" placeholder="생년월일" readonly="readonly">
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="details">
                                                    <div class="left">
                                                        <h6>우편번호</h6>
                                                    </div>
                                                    <div class="right">
                                                       <input class="form-control" type="text" required="" placeholder="우편번호">
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="details">
                                                    <div class="left">
                                                        <h6>주소</h6>
                                                    </div>
                                                    <div class="right">
                                                       <input class="form-control" type="text" required="" placeholder="주소">
                                                    </div>
                                                </div>
                                            </li>
                                              <li>
                                                <div class="details">
                                                    <div class="left">
                                                        <h6>상세주소</h6>
                                                    </div>
                                                    <div class="right">
                                                       <input class="form-control" type="text" required="" placeholder="상세주소">
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="details">
                                                    <div class="left">
                                                        <h6>핸드폰번호</h6>
                                                    </div>
                                                    <div class="right">
                                                       <div class="row g-2">
			                                        <div class="col-4">
			                                            <input class="form-control" type="text" required=""
			                                                placeholder="" id="hp">
			                                        </div>
			                                        <div class="col-4">
			                                            <input class="form-control" type="text" required="" placeholder="" id="hp">
			                                        </div>
			                                        <div class="col-4">
			                                            <input class="form-control" type="text" required="" placeholder="" id="hp">
			                                        </div>
			                                    		</div>
                                                    </div>
                                                </div>
                                            </li>
                                            
                                             <li>
                                                <div class="details">
                                                    <div class="left">
                                                        <h6>이메일</h6>
                                                    </div>
                                                    <div class="right">
	                                                      <div class="row g-2">
				                                   
				                                        <div class="col-4">
				                                            <input class="form-control" type="text" required="" placeholder="" id="email">
				                                        </div> @ 
				                                        <div class="col-4">
				                                            <input class="form-control" type="text" required="" placeholder="" id="email">
				                                        </div>
			                                    		</div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
								<br><br><a href="#" data-bs-toggle="modal" data-bs-target="#profile"
                                                class="btn btn-solid">회원정보수정</a>
                            </div>
                            <!-- 회원정보수정 끝-->
                            
                            <div class="tab-pane fade" id="bookings">
                                <div class="dashboard-box">
                                    <div class="dashboard-title">
                                        <h4>upcoming booking</h4>
                                    </div>
                                    <div class="dashboard-detail">
                                        <div class="booking-box">
                                            <div class="date-box">
                                                <span class="day">tue</span>
                                                <span class="date">14</span>
                                                <span class="month">aug</span>
                                            </div>
                                            <div class="detail-middle">
                                                <div class="media">
                                                    <div class="icon">
                                                        <i class="fas fa-plane"></i>
                                                    </div>
                                                    <div class="media-body">
                                                        <h6 class="media-heading">dubai to paris</h6>
                                                        <p>amount paid: <span>$2500</span></p>
                                                    </div>
                                                    <div class="media-body">
                                                        <h6 class="media-heading">ID: aSdsadf5s1f5</h6>
                                                        <p>order date: <span>20 oct, 2020</span></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="detail-last">
                                                <a href="#"><i class="fas fa-window-close" data-bs-toggle="tooltip"
                                                        data-placement="top" title="cancle booking"></i></a>
                                                <span class="badge bg-info">upcoming</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="dashboard-detail">
                                        <div class="booking-box">
                                            <div class="date-box">
                                                <span class="day">tue</span>
                                                <span class="date">14</span>
                                                <span class="month">aug</span>
                                            </div>
                                            <div class="detail-middle">
                                                <div class="media">
                                                    <div class="icon">
                                                        <i class="fas fa-hotel"></i>
                                                    </div>
                                                    <div class="media-body">
                                                        <h6 class="media-heading">sea view hotel</h6>
                                                        <p>amount paid: <span>$2500</span></p>
                                                    </div>
                                                    <div class="media-body">
                                                        <h6 class="media-heading">ID: aSdsadf5s1f5</h6>
                                                        <p>order date: <span>20 oct, 2020</span></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="detail-last">
                                                <a href="#"><i class="fas fa-window-close" data-bs-toggle="tooltip"
                                                        data-placement="top" title="cancle booking"></i></a>
                                                <span class="badge bg-info">upcoming</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="dashboard-detail">
                                        <div class="booking-box">
                                            <div class="date-box">
                                                <span class="day">tue</span>
                                                <span class="date">14</span>
                                                <span class="month">aug</span>
                                            </div>
                                            <div class="detail-middle">
                                                <div class="media">
                                                    <div class="icon">
                                                        <i class="fas fa-taxi"></i>
                                                    </div>
                                                    <div class="media-body">
                                                        <h6 class="media-heading">paris to Toulouse</h6>
                                                        <p>amount paid: <span>$2500</span></p>
                                                    </div>
                                                    <div class="media-body">
                                                        <h6 class="media-heading">ID: aSdsadf5s1f5</h6>
                                                        <p>order date: <span>20 oct, 2020</span></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="detail-last">
                                                <a href="#"><i class="fas fa-window-close" data-bs-toggle="tooltip"
                                                        data-placement="top" title="cancle booking"></i></a>
                                                <span class="badge bg-info">upcoming</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="dashboard-box">
                                    <div class="dashboard-title">
                                        <h4>past booking</h4>
                                    </div>
                                    <div class="dashboard-detail">
                                        <div class="booking-box">
                                            <div class="date-box">
                                                <span class="day">tue</span>
                                                <span class="date">14</span>
                                                <span class="month">aug</span>
                                            </div>
                                            <div class="detail-middle">
                                                <div class="media">
                                                    <div class="icon">
                                                        <i class="fas fa-plane"></i>
                                                    </div>
                                                    <div class="media-body">
                                                        <h6 class="media-heading">dubai to paris</h6>
                                                        <p>amount paid: <span>$2500</span></p>
                                                    </div>
                                                    <div class="media-body">
                                                        <h6 class="media-heading">ID: aSdsadf5s1f5</h6>
                                                        <p>order date: <span>20 oct, 2020</span></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="detail-last">
                                                <span class="badge bg-success">past</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="dashboard-detail">
                                        <div class="booking-box">
                                            <div class="date-box">
                                                <span class="day">tue</span>
                                                <span class="date">14</span>
                                                <span class="month">aug</span>
                                            </div>
                                            <div class="detail-middle">
                                                <div class="media">
                                                    <div class="icon">
                                                        <i class="fas fa-hotel"></i>
                                                    </div>
                                                    <div class="media-body">
                                                        <h6 class="media-heading">sea view hotel</h6>
                                                        <p>amount paid: <span>$2500</span></p>
                                                    </div>
                                                    <div class="media-body">
                                                        <h6 class="media-heading">ID: aSdsadf5s1f5</h6>
                                                        <p>order date: <span>20 oct, 2020</span></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="detail-last">
                                                <span class="badge bg-success">past</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="dashboard-detail">
                                        <div class="booking-box">
                                            <div class="date-box">
                                                <span class="day">tue</span>
                                                <span class="date">14</span>
                                                <span class="month">aug</span>
                                            </div>
                                            <div class="detail-middle">
                                                <div class="media">
                                                    <div class="icon">
                                                        <i class="fas fa-taxi"></i>
                                                    </div>
                                                    <div class="media-body">
                                                        <h6 class="media-heading">paris to Toulouse</h6>
                                                        <p>amount paid: <span>$2500</span></p>
                                                    </div>
                                                    <div class="media-body">
                                                        <h6 class="media-heading">ID: aSdsadf5s1f5</h6>
                                                        <p>order date: <span>20 oct, 2020</span></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="detail-last">
                                                <span class="badge bg-success">past</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="dashboard-box">
                                    <div class="dashboard-title">
                                        <h4>cancelled booking</h4>
                                    </div>
                                    <div class="dashboard-detail">
                                        <div class="booking-box">
                                            <div class="date-box">
                                                <span class="day">tue</span>
                                                <span class="date">14</span>
                                                <span class="month">aug</span>
                                            </div>
                                            <div class="detail-middle">
                                                <div class="media">
                                                    <div class="icon">
                                                        <i class="fas fa-plane"></i>
                                                    </div>
                                                    <div class="media-body">
                                                        <h6 class="media-heading">dubai to paris</h6>
                                                        <p>amount paid: <span>$2500</span></p>
                                                    </div>
                                                    <div class="media-body">
                                                        <h6 class="media-heading">ID: aSdsadf5s1f5</h6>
                                                        <p>order date: <span>20 oct, 2020</span></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="detail-last">
                                                <span class="badge bg-secondary">cancelled</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="dashboard-detail">
                                        <div class="booking-box">
                                            <div class="date-box">
                                                <span class="day">tue</span>
                                                <span class="date">14</span>
                                                <span class="month">aug</span>
                                            </div>
                                            <div class="detail-middle">
                                                <div class="media">
                                                    <div class="icon">
                                                        <i class="fas fa-hotel"></i>
                                                    </div>
                                                    <div class="media-body">
                                                        <h6 class="media-heading">sea view hotel</h6>
                                                        <p>amount paid: <span>$2500</span></p>
                                                    </div>
                                                    <div class="media-body">
                                                        <h6 class="media-heading">ID: aSdsadf5s1f5</h6>
                                                        <p>order date: <span>20 oct, 2020</span></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="detail-last">
                                                <span class="badge bg-secondary">cancelled</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="dashboard-detail">
                                        <div class="booking-box">
                                            <div class="date-box">
                                                <span class="day">tue</span>
                                                <span class="date">14</span>
                                                <span class="month">aug</span>
                                            </div>
                                            <div class="detail-middle">
                                                <div class="media">
                                                    <div class="icon">
                                                        <i class="fas fa-taxi"></i>
                                                    </div>
                                                    <div class="media-body">
                                                        <h6 class="media-heading">paris to Toulouse</h6>
                                                        <p>amount paid: <span>$2500</span></p>
                                                    </div>
                                                    <div class="media-body">
                                                        <h6 class="media-heading">ID: aSdsadf5s1f5</h6>
                                                        <p>order date: <span>20 oct, 2020</span></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="detail-last">
                                                <span class="badge bg-secondary">cancelled</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                          <!-- 비밀번호변경 -->
						 <div class="tab-pane fade" id="change-pwd">
                                <div class="dashboard-box">
                                    <div class="dashboard-title">
                                        <h4>change your password</h4>
                                    </div>
                                    <div class="dashboard-detail">
                                        <div class="delete-section">
                                            <p>Hi <span class="text-bold">회원명 님</span>,</p>
                                            
                                            <p><span class="text-bold">note:</span></p>
                                            <p>비밀번호는 영문 대소문자, 숫자, _(밑줄문자)를 조합하여 설정해 주세요.<br>
											다른 사이트에서 사용하는 것과 동일하거나 쉬운 비밀번호는 사용하지 마세요.<br>
											안전한 계정 사용을 위해 비밀번호는 주기적으로 변경해 주세요.<br>
                                            </p>
                                            <br>
                 
                                       			 <input class="form-control" type="password" name="currentPwd" required=""
                                         		   placeholder="현재 비밀번호"><br>
                                   
                                       			 <input class="form-control" type="password" name="newPwd1" required=""
                                         		   placeholder="새 비밀번호"><br>
                                   				
                                       			 <input class="form-control" type="password" name="newPwd2" required=""
                                         		   placeholder="새 비밀번호 확인"><br>
                                   			
                                            <a href="#" data-bs-toggle="modal" data-bs-target="#change-pwd"
                                                class="btn btn-solid">비밀번호 변경</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 비밀번호변경 끝 -->
                            <!-- 회원탈퇴 -->
                            <div class="tab-pane fade" id="delete-account">
                                <div class="dashboard-box">
                                    <div class="dashboard-title">
                                        <h4>delete your accont</h4>
                                    </div>
                                    <div class="dashboard-detail">
                                        <div class="delete-section">
                                            <p>Hi <span class="text-bold">회원명 님</span>,</p>
                                            
                                            <p><span class="text-bold">note:</span></p>
                                            <p>계정을 삭제하면 프로필, 개인 설정 및 기타 모든 관련 정보가 영구적으로 제거됩니다.<br>
                                            계정이 삭제되면 로그아웃되고 다시 로그인할 수 없습니다.<br>
											위의 내용을 이해하고 동의한 경우에도 계정을 삭제하려면 비밀번호 입력 후 탈퇴 버튼을 클릭하십시오.<br>
                                            </p>
                                            <br>
                                       			 <input class="form-control" type="password" name="pwd" required=""
                                         		   placeholder="password"><br>
                                   			
                                            <a href="#" data-bs-toggle="modal" data-bs-target="#delete-account"
                                                class="btn btn-solid">회원탈퇴</a>
                                        </div>
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