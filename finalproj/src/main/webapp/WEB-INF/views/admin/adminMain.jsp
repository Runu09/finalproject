<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<% 
 Integer count = (Integer)application.getAttribute("count");
 Integer newCount = null;
 
 if(count == null) {
  application.setAttribute("count", 1);
  
 } else {
  
  if(session.isNew()) {
   newCount = count + 1;
   application.setAttribute("count", newCount);
  } 
 }
%>

<%@include file="../inc/adminTop.jsp"%>

<!-- Highcharts -->
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>

<script type="text/javascript">
function getLoc(){
	var x = event.offsetX;
	var y = event.offsetY;
	alert("현재좌표는 : "+x+" / "+y);
	}
	
$(function() {
	const chart = Highcharts.chart('container', {
	    title: {
	        text: 'Chart.update'
	    },
	    subtitle: {
	        text: 'Plain'
	    },
	    xAxis: {
	        categories: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
	    },
	    series: [{
	        type: 'column',
	        colorByPoint: true,
	        data: [29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4],
	        showInLegend: false
	    }]
	});

	document.getElementById('plain').addEventListener('click', () => {
	    chart.update({
	        chart: {
	            inverted: false,
	            polar: false
	        },
	        subtitle: {
	            text: 'Plain'
	        }
	    });
	});

	document.getElementById('inverted').addEventListener('click', () => {
	    chart.update({
	        chart: {
	            inverted: true,
	            polar: false
	        },
	        subtitle: {
	            text: 'Inverted'
	        }
	    });
	});

	document.getElementById('polar').addEventListener('click', () => {
	    chart.update({
	        chart: {
	            inverted: false,
	            polar: true
	        },
	        subtitle: {
	            text: 'Polar'
	        }
	    });
	});
})
</script>

<!-- Highcharts -->
<style>
#container {
    height: 400px;
}

.highcharts-figure,
.highcharts-data-table table {
    min-width: 320px;
    max-width: 800px;
    margin: 1em auto;
}

.highcharts-data-table table {
    font-family: Verdana, sans-serif;
    border-collapse: collapse;
    border: 1px solid #ebebeb;
    margin: 10px auto;
    text-align: center;
    width: 100%;
    max-width: 500px;
}

.highcharts-data-table caption {
    padding: 1em 0;
    font-size: 1.2em;
    color: #555;
}

.highcharts-data-table th {
    font-weight: 600;
    padding: 0.5em;
}

.highcharts-data-table td,
.highcharts-data-table th,
.highcharts-data-table caption {
    padding: 0.5em;
}

.highcharts-data-table thead tr,
.highcharts-data-table tr:nth-child(even) {
    background: #f8f8f8;
}

.highcharts-data-table tr:hover {
    background: #f1f7ff;
}
</style>

     
<div class="page-body">
<div class="container-fluid">
    <div class="row">
    
        <!-- 금일 방문자 수 시작 -->
        <div class="col-sm-6 col-xxl-3 col-lg-6">
            <div class="b-b-primary border-5 border-0 card o-hidden">
                <div class="custome-1-bg b-r-4 card-body">
                    <div class="media align-items-center static-top-widget">
                        <div class="media-body p-0">
                            <span class="m-0">금일 방문자수</span>
                            <h4 class="mb-0 counter">
                            	<%= application.getAttribute("count") %>
                            </h4>
                        </div>
                        <div class="align-self-center text-center">
                        	<i data-feather="database"></i></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 방문자 수 끝 -->
        
        <!-- 유실물 관리 합계 시작 -->
        <div class="col-sm-6 col-xxl-3 col-lg-6">
            <div class="b-b-danger border-5  border-0 card o-hidden">
                <div class=" custome-2-bg  b-r-4 card-body">
                    <div class="media static-top-widget">
                        <div class="media-body p-0"><span class="m-0">유실물 관리</span>
                            <h4 class="mb-0 counter">
                                ${cnt3}
                            </h4>
                        </div>
                        <div class="align-self-center text-center">
                        	<i data-feather="shopping-bag"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 유실물 관리 합계 끝 -->
        
        <!-- 고객의 소리 합계 시작 -->
        <div class="col-sm-6 col-xxl-3 col-lg-6">
            <div class="b-b-secondary border-5 border-0  card o-hidden">
                <div class=" custome-3-bg b-r-4 card-body">
                    <div class="media static-top-widget">
                        <div class="media-body p-0"><span class="m-0">고객의 소리</span>
                            <h4 class="mb-0 counter">
								${cnt2}
                            </h4>
                        </div>
                        <div class="align-self-center text-center">
                        	<i data-feather="message-circle"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 고객의 소리 합계 끝 -->
        
        <!-- 가입한 총 회원 수 합계 시작 -->
        <div class="col-sm-6 col-xxl-3 col-lg-6">
            <div class="b-b-success border-5 border-0 card o-hidden">
                <div class=" custome-4-bg b-r-4 card-body">
                    <div class="media static-top-widget">

                        <div class="media-body p-0"><span class="m-0">가입한 회원</span>
                            <h4 class="mb-0 counter">
                            	${cnt1}
                            </h4>
                        </div>
                        <div class="align-self-center text-center"><i data-feather="user-plus"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 가입한 총 회원 수 합계 끝 -->
        
        <!-- Earning chart  star-->
        <div class="col-xl-8">
            <div class="card o-hidden ">
                <div class="card-header">

                    <div class="card-header-title">
                        <h4>월별 매출 </h4>
                    </div>
                    <div class="card-body p-0">
                        <div id="bar-chart-earning"></div>
                    </div>

                </div>
            </div>
        </div>
        <!-- Earning chart  end-->
        
        <!-- 주간, 월간, 연간 예약 내역 시작 -->
        <div class="col-xl-4">
            <div class="h-100">
                <div class="card o-hidden  ">
                	<!-- 헤더 시작 -->
                    <div class="card-header">
                        <div class="d-flex align-items-center justify-content-between">
                            <div class="card-header-title">
                                <h4>예약 현황</h4>
                            </div>
                            <div class="dropdown">
                                <button class="btn dropdown-toggle" id="dropdownMenuButton"
                                    type="button" data-bs-toggle="dropdown"
                                    aria-expanded="false">월간
                                </button>
                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton">
                                	<a class="dropdown-item" href="#">일별</a>
                                	<a class="dropdown-item" href="#">월간</a>
                                	<a class="dropdown-item" href="#">연간</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 헤더 끝 -->
                    
                    <!-- 차트 시작 -->
                    <div class="card-body ">
						<figure class="highcharts-figure">
						    <div id="container"></div>
						</figure>
                    </div>
                    <!-- 차트 끝 -->
                </div>
            </div>
        </div>
        <!-- 주간, 월간, 연간 예약 내역 끝 -->
        
        <!-- Booking history  start-->
        <div class="col-xxl-8">
            <div class="card">
                <div class="card-header">
                    <div class="card-header-title">
                        <h5>예약 내역</h5>

                    </div>


                </div>
                <div class="card-body">
                    <div class="table-responsive ">
                        <table class=" dashboard-table table border-0 ">

                            <tbody>
                                <tr>
                                    <td><img src="<c:url value='/admin/images/tours/1.jpg'/>" alt="tour 1"></td>
                                    <td><span class="fw-500"></span><span style="color: black;">제주도<br>6월 2일</span></td>
                                    <td><span>김포<br>6월 2일</span></td>
                                    <td><span><svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                                                width="24" height="24" viewBox="0 0 24 24">
                                                <title>flight_takeoff</title>
                                                <path
                                                    d="M22.078 9.656q0.141 0.609-0.164 1.125t-0.914 0.703q-5.813 1.547-9.656 2.578l-5.297 1.406-1.594 0.469-2.625-4.5 1.453-0.375 1.969 1.5 4.969-1.313-4.125-7.172 1.922-0.516 6.891 6.422 5.344-1.406q0.609-0.188 1.148 0.141t0.68 0.938zM2.484 18.984h19.031v2.016h-19.031v-2.016z">
                                                </path>
                                            </svg>15시 30분 </span>
                                    </td>
                                    <td><span></span>
                                        <span>1h 10m</span>
                                    </td>
                                    <td><span><svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                                                width="24" height="24" viewBox="0 0 24 24">
                                                <title>flight_land</title>
                                                <path
                                                    d="M14.016 14.438q-3.844-1.078-9.656-2.578l-1.594-0.469v-5.156l1.453 0.375 0.938 2.344 4.969 1.313v-8.25l1.922 0.516 2.766 9 5.297 1.406q0.609 0.188 0.914 0.727t0.164 1.148q-0.188 0.609-0.703 0.891t-1.125 0.141zM2.484 18.984h19.031v2.016h-19.031v-2.016z">
                                                </path>
                                            </svg>16시 40분</span>
                                    </td>
                                    <td><span class="badge badge-primary">Active</span>
                                    </td>
                                    <td><span>53,000원</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><img src="../admin/images/tours/2.jpg" alt="tour 2"></td>
                                    <td><span class="fw-500"></span><span style="color: black;">대구<br>6월 2일</span></td>
                                    <td><span> 김포 </span></td>
                                    <td><span><svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                                                width="24" height="24" viewBox="0 0 24 24">
                                                <title>flight_takeoff</title>
                                                <path
                                                    d="M22.078 9.656q0.141 0.609-0.164 1.125t-0.914 0.703q-5.813 1.547-9.656 2.578l-5.297 1.406-1.594 0.469-2.625-4.5 1.453-0.375 1.969 1.5 4.969-1.313-4.125-7.172 1.922-0.516 6.891 6.422 5.344-1.406q0.609-0.188 1.148 0.141t0.68 0.938zM2.484 18.984h19.031v2.016h-19.031v-2.016z">
                                                </path>
                                            </svg>15시 25분</span>
                                    </td>
                                    <td><span></span>
                                        <span>1h 00m</span>
                                    </td>
                                    <td><span><svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                                                width="24" height="24" viewBox="0 0 24 24">
                                                <title>flight_land</title>
                                                <path
                                                    d="M14.016 14.438q-3.844-1.078-9.656-2.578l-1.594-0.469v-5.156l1.453 0.375 0.938 2.344 4.969 1.313v-8.25l1.922 0.516 2.766 9 5.297 1.406q0.609 0.188 0.914 0.727t0.164 1.148q-0.188 0.609-0.703 0.891t-1.125 0.141zM2.484 18.984h19.031v2.016h-19.031v-2.016z">
                                                </path>
                                            </svg>16시 25분</span>
                                    </td>
                                    <td><span class="badge badge-secondary">Booked</span>
                                    <td><span>47,000원</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><img src="<c:url value='/admin/images/tours/1.jpg'/>" alt="tour 1"></td>
                                    <td><span class="fw-500"></span><span style="color: black;">김포<br>6월 4일</span></td>
                                    <td><span>제주도<br>6월 4일</span></td>
                                    <td><span><svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                                                width="24" height="24" viewBox="0 0 24 24">
                                                <title>flight_takeoff</title>
                                                <path
                                                    d="M22.078 9.656q0.141 0.609-0.164 1.125t-0.914 0.703q-5.813 1.547-9.656 2.578l-5.297 1.406-1.594 0.469-2.625-4.5 1.453-0.375 1.969 1.5 4.969-1.313-4.125-7.172 1.922-0.516 6.891 6.422 5.344-1.406q0.609-0.188 1.148 0.141t0.68 0.938zM2.484 18.984h19.031v2.016h-19.031v-2.016z">
                                                </path>
                                            </svg>08시 10분 </span>
                                    </td>
                                    <td><span></span>
                                        <span>1h 10m</span>
                                    </td>
                                    <td><span><svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                                                width="24" height="24" viewBox="0 0 24 24">
                                                <title>flight_land</title>
                                                <path
                                                    d="M14.016 14.438q-3.844-1.078-9.656-2.578l-1.594-0.469v-5.156l1.453 0.375 0.938 2.344 4.969 1.313v-8.25l1.922 0.516 2.766 9 5.297 1.406q0.609 0.188 0.914 0.727t0.164 1.148q-0.188 0.609-0.703 0.891t-1.125 0.141zM2.484 18.984h19.031v2.016h-19.031v-2.016z">
                                                </path>
                                            </svg>09시 20분</span>
                                    </td>
                                    <td><span class="badge badge-primary">Active</span>
                                    </td>
                                    <td><span>67,000원</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><img src="../admin/images/tours/2.jpg" alt="tour 2"></td>
                                    <td><span class="fw-500"></span><span style="color: black;">광주<br>6월 2일</span></td>
                                    <td><span> 김포 </span></td>
                                    <td><span><svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                                                width="24" height="24" viewBox="0 0 24 24">
                                                <title>flight_takeoff</title>
                                                <path
                                                    d="M22.078 9.656q0.141 0.609-0.164 1.125t-0.914 0.703q-5.813 1.547-9.656 2.578l-5.297 1.406-1.594 0.469-2.625-4.5 1.453-0.375 1.969 1.5 4.969-1.313-4.125-7.172 1.922-0.516 6.891 6.422 5.344-1.406q0.609-0.188 1.148 0.141t0.68 0.938zM2.484 18.984h19.031v2.016h-19.031v-2.016z">
                                                </path>
                                            </svg>20시 10분</span>
                                    </td>
                                    <td><span></span>
                                        <span>1h 00m</span>
                                    </td>
                                    <td><span><svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                                                width="24" height="24" viewBox="0 0 24 24">
                                                <title>flight_land</title>
                                                <path
                                                    d="M14.016 14.438q-3.844-1.078-9.656-2.578l-1.594-0.469v-5.156l1.453 0.375 0.938 2.344 4.969 1.313v-8.25l1.922 0.516 2.766 9 5.297 1.406q0.609 0.188 0.914 0.727t0.164 1.148q-0.188 0.609-0.703 0.891t-1.125 0.141zM2.484 18.984h19.031v2.016h-19.031v-2.016z">
                                                </path>
                                            </svg>21시 10분</span>
                                    </td>
                                    <td><span class="badge badge-secondary">Booked</span>
                                    <td><span>49,000원</span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- Booking history  end-->

        <!-- datepicker start -->
        <div class="col-lg-6 col-xxl-4">
            <div class="datepicker-dashboard">
                <div class="datepicker-here" data-language="en"></div>
            </div>
        </div>
        <!-- datepicker start -->


        <!-- Traficks chart start -->
        <div class="col-lg-6">
            <div class="card ">
                <div class="d-flex align-items-center justify-content-between  card-header">
                    <div class="card-header-title">
                        <h5>통계</h5>
                    </div>


                    <div class="btn-group" role="group" aria-label="Basic example">
                        <button class="btn btn-outline-light txt-dark " type="button"
                            data-bs-original-title="" title="">일</button>
                        <button class="btn btn-outline-light txt-dark" type="button"
                            data-bs-original-title="" title="">주</button>
                        <button class="btn btn-outline-light txt-dark active" type="button"
                            data-bs-original-title="" title="">월</button>
                    </div>
                </div>
                <div class="card-body">
                    <div id="traffic-chart"></div>
                </div>

            </div>

        </div>
        <!-- Traficks chart end -->
        <div class="col-xxl-6">
            <div class="card">
                <div class="card-header-title card-header">
                    <h5>공항 위치</h5>
                </div>
                <div class="card-body" id="map" style="width:500px;height:600px;">
                	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=00724106dd7f78df2178c577988b8039"></script>
					<script>
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						    mapOption = { 
						        center: new kakao.maps.LatLng(36.034681485295046, 127.87507964858708), // 지도의 중심좌표
						        level: 13 // 지도의 확대 레벨
						    };
						
						var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
						
						// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
						var mapTypeControl = new kakao.maps.MapTypeControl();
						
						// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
						// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
						map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
						
						// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
						var zoomControl = new kakao.maps.ZoomControl();
						map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
						
						// 마커가 표시될 위치입니다 
						var markerPosition  = new kakao.maps.LatLng(37.5588966804188, 126.80281133197248); //김포

						// 마커를 생성합니다
						var marker = new kakao.maps.Marker({
						    position: markerPosition
						});
						
						// 마커가 지도 위에 표시되도록 설정합니다
						marker.setMap(map);
					</script>
                	<%-- <img onclick="javascript:getLoc()" src="<c:url value='/assets/images/flights/지도.png'/>"> --%>
                    <!-- <div class="jvector-map-height" id="world-map"></div> -->
                </div>
            </div>
        </div>
        <!-- <div class="col-12">


            <div class="card">
                <div class="card-header-title card-header">
                    <h5>Tours</h5>
                </div>
                <div class="card-body">
                    <div class="dashboard-tours ratio3_2">
                        <div class="w-100 dashboard-slider">
                            <div class="category-box">
                                <div class="img-category">
                                    <div class="img-category-box">
                                        <img src="../admin/images/tours/1.jpg" alt=""
                                            class="img-fluid bg-img ">
                                    </div>
                                    <div class="top-bar">
                                        <span class="offer">offer</span>
                                        <h5><del>$320</del> $210</h5>
                                    </div>
                                    <div class="like-cls">
                                        <i class="fa fa-heart"><span class="effect"></span></i>
                                    </div>
                                </div>
                                <div class="content-category">
                                    <div class="top">
                                        <h3>hot air balloon</h3>
                                        <div class="rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                    </div>
                                    <p>Lorem ipsum dolor sit amet, consectetur est.</p>
                                    <h6>5 days | 6 nights <span> 2 person</span></h6>
                                </div>
                            </div>



                            <div class="category-box">
                                <div class="img-category">

                                    <div class="img-category-box">
                                        <img src="../admin/images/tours/2.jpg" alt=""
                                            class="img-fluid bg-img ">
                                    </div>
                                    <div class="top-bar">
                                        <span class="offer">offer</span>
                                        <h5><del>$320</del> $210</h5>
                                    </div>
                                    <div class="like-cls">
                                        <i class="fa fa-heart"><span class="effect"></span></i>
                                    </div>
                                </div>
                                <div class="content-category">
                                    <div class="top">
                                        <h3>hot air balloon</h3>
                                        <div class="rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                    </div>
                                    <p>Lorem ipsum dolor sit amet, consectetur est.</p>
                                    <h6>5 days | 6 nights <span> 2 person</span></h6>
                                </div>
                            </div>


                            <div class="category-box">
                                <div class="img-category">

                                    <div class="img-category-box">
                                        <img src="../admin/images/tours/3.jpg" alt=""
                                            class="img-fluid bg-img ">
                                    </div>
                                    <div class="top-bar">
                                        <span class="offer">offer</span>
                                        <h5><del>$320</del> $210</h5>
                                    </div>
                                    <div class="like-cls">
                                        <i class="fa fa-heart"><span class="effect"></span></i>
                                    </div>
                                </div>
                                <div class="content-category">
                                    <div class="top">
                                        <h3>hot air balloon</h3>
                                        <div class="rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                    </div>
                                    <p>Lorem ipsum dolor sit amet, consectetur est.</p>
                                    <h6>5 days | 6 nights <span> 2 person</span></h6>
                                </div>
                            </div>


                            <div class="category-box">
                                <div class="img-category">

                                    <div class="img-category-box">
                                        <img src="../admin/images/tours/4.jpg" alt=""
                                            class="img-fluid bg-img ">
                                    </div>
                                    <div class="top-bar">
                                        <span class="offer">offer</span>
                                        <h5><del>$320</del> $210</h5>
                                    </div>
                                    <div class="like-cls">
                                        <i class="fa fa-heart"><span class="effect"></span></i>
                                    </div>
                                </div>
                                <div class="content-category">
                                    <div class="top">
                                        <h3>hot air balloon</h3>
                                        <div class="rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                    </div>
                                    <p>Lorem ipsum dolor sit amet, consectetur est.</p>
                                    <h6>5 days | 6 nights <span> 2 person</span></h6>
                                </div>
                            </div>


                            <div class="category-box">
                                <div class="img-category">

                                    <div class="img-category-box">
                                        <img src="../admin/images/tours/6.jpg" alt=""
                                            class="img-fluid bg-img ">
                                    </div>
                                    <div class="top-bar">
                                        <span class="offer">offer</span>
                                        <h5><del>$320</del> $210</h5>
                                    </div>
                                    <div class="like-cls">
                                        <i class="fa fa-heart"><span class="effect"></span></i>
                                    </div>
                                </div>
                                <div class="content-category">
                                    <div class="top">
                                        <h3>hot air balloon</h3>
                                        <div class="rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                    </div>
                                    <p>Lorem ipsum dolor sit amet, consectetur est.</p>
                                    <h6>5 days | 6 nights <span> 2 person</span></h6>
                                </div>
                            </div>


                            <div class="category-box">
                                <div class="img-category">

                                    <div class="img-category-box">
                                        <img src="../admin/images/tours/5.jpg" alt=""
                                            class="img-fluid bg-img ">
                                    </div>
                                    <div class="top-bar">
                                        <span class="offer">offer</span>
                                        <h5><del>$320</del> $210</h5>
                                    </div>
                                    <div class="like-cls">
                                        <i class="fa fa-heart"><span class="effect"></span></i>
                                    </div>
                                </div>
                                <div class="content-category">
                                    <div class="top">
                                        <h3>hot air balloon</h3>
                                        <div class="rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                    </div>
                                    <p>Lorem ipsum dolor sit amet, consectetur est.</p>
                                    <h6>5 days | 6 nights <span> 2 person</span></h6>
                                </div>
                            </div>


                            <div class="category-box">
                                <div class="img-category">

                                    <div class="img-category-box">
                                        <img src="../admin/images/tours/1.jpg" alt=""
                                            class="img-fluid bg-img ">
                                    </div>
                                    <div class="top-bar">
                                        <span class="offer">offer</span>
                                        <h5><del>$320</del> $210</h5>
                                    </div>
                                    <div class="like-cls">
                                        <i class="fa fa-heart"><span class="effect"></span></i>
                                    </div>
                                </div>
                                <div class="content-category">
                                    <div class="top">
                                        <h3>hot air balloon</h3>
                                        <div class="rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                    </div>
                                    <p>Lorem ipsum dolor sit amet, consectetur est.</p>
                                    <h6>5 days | 6 nights <span> 2 person</span></h6>
                                </div>
                            </div>


                            <div class="category-box">
                                <div class="img-category">

                                    <div class="img-category-box">
                                        <img src="../admin/images/tours/3.jpg" alt=""
                                            class="img-fluid bg-img ">
                                    </div>
                                    <div class="top-bar">
                                        <span class="offer">offer</span>
                                        <h5><del>$320</del> $210</h5>
                                    </div>
                                    <div class="like-cls">
                                        <i class="fa fa-heart"><span class="effect"></span></i>
                                    </div>
                                </div>
                                <div class="content-category">
                                    <div class="top">
                                        <h3>hot air balloon</h3>
                                        <div class="rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                    </div>
                                    <p>Lorem ipsum dolor sit amet, consectetur est.</p>
                                    <h6>5 days | 6 nights <span> 2 person</span></h6>
                                </div>
                            </div>


                            <div class="category-box">
                                <div class="img-category">

                                    <div class="img-category-box">
                                        <img src="../admin/images/tours/6.jpg" alt=""
                                            class="img-fluid bg-img ">
                                    </div>
                                    <div class="top-bar">
                                        <span class="offer">offer</span>
                                        <h5><del>$320</del> $210</h5>
                                    </div>
                                    <div class="like-cls">
                                        <i class="fa fa-heart"><span class="effect"></span></i>
                                    </div>
                                </div>
                                <div class="content-category">
                                    <div class="top">
                                        <h3>hot air balloon</h3>
                                        <div class="rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                    </div>
                                    <p>Lorem ipsum dolor sit amet, consectetur est.</p>
                                    <h6>5 days | 6 nights <span> 2 person</span></h6>
                                </div>
                            </div>


                            <div class="category-box">
                                <div class="ratio_40 img-category">

                                    <div class="img-category-box">
                                        <img src="../admin/images/tours/7.jpg" alt=""
                                            class="img-fluid bg-img ">
                                    </div>
                                    <div class="top-bar">
                                        <span class="offer">offer</span>
                                        <h5><del>$320</del> $210</h5>
                                    </div>
                                    <div class="like-cls">
                                        <i class="fa fa-heart"><span class="effect"></span></i>
                                    </div>
                                </div>
                                <div class="content-category">
                                    <div class="top">
                                        <h3>hot air balloon</h3>
                                        <div class="rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                    </div>
                                    <p>Lorem ipsum dolor sit amet, consectetur est.</p>
                                    <h6>5 days | 6 nights <span> 2 person</span></h6>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div> -->
        </div>
    </div>
</div>
<!-- Container-fluid Ends-->

<div class="container-fluid">
                
<%@include file="../inc/adminBottom.jsp"%>