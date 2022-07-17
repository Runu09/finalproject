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


//월별 회원가입 인원 수 그래프
$(function() {
	const chart = Highcharts.chart('container', {
	    title: {
	        text: '월별 회원가입 인원 수'
	    },
	    xAxis: {
	        categories: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
	    },
	    series: [{
	        type: 'column',
	        colorByPoint: true,
	        data: [${monthNoticeCountArr[1]}, 
	        	${monthNoticeCountArr[2]}, 
	        	${monthNoticeCountArr[3]}, 
	        	${monthNoticeCountArr[4]},
	        	${monthNoticeCountArr[5]},
	        	${monthNoticeCountArr[6]},
	        	${monthNoticeCountArr[7]},
	        	${monthNoticeCountArr[8]},
	        	${monthNoticeCountArr[9]},
	        	${monthNoticeCountArr[10]},
	        	${monthNoticeCountArr[11]},
	        	${monthNoticeCountArr[12]}],
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


//월별 예약 내역 그래프
$(function() {
	const chart = Highcharts.chart('container1', {
	    title: {
	        text: '월별 예약 현황'
	    },
	    xAxis: {
	        categories: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
	    },
	    series: [{
	        type: 'column',
	        colorByPoint: true,
	        data: [${reservationCountArr[1]}, 
	        	${reservationCountArr[2]}, 
	        	${reservationCountArr[3]}, 
	        	${reservationCountArr[4]},
	        	${reservationCountArr[5]},
	        	${reservationCountArr[6]},
	        	${reservationCountArr[7]},
	        	${reservationCountArr[8]},
	        	${reservationCountArr[9]},
	        	${reservationCountArr[10]},
	        	${reservationCountArr[11]},
	        	${reservationCountArr[12]}],
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
        
        <!-- 월별 예약 내역 시작 -->
        <div class="col-xl-6">
            <div class="h-100">
                <div class="card o-hidden  ">
                	<!-- 헤더 시작 -->
                    <div class="card-header">
                        <div class="d-flex align-items-center justify-content-between">
                            <div class="card-header-title">
                                <h4>예약 현황</h4>
                            </div>
                        </div>
                    </div>
                    <!-- 헤더 끝 -->
                    
                    <!-- 차트 시작 -->
                    <div class="card-body ">
						<figure class="highcharts-figure">
						    <div id="container1"></div>
						</figure>
                    </div>
                    <!-- 차트 끝 -->
                </div>
            </div>
        </div>
        <!-- 월별 예약 내역 끝 -->
        
        <!-- 회원가입 인원 시작 -->
        <div class="col-xl-6">
            <div class="h-100">
                <div class="card o-hidden  ">
                	<!-- 헤더 시작 -->
                    <div class="card-header">
                        <div class="d-flex align-items-center justify-content-between">
                            <div class="card-header-title">
                                <h4>회원가입 인원</h4>
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
        <!-- 회원가입 인원 끝 -->
        
        <!-- 달력 시작 -->
        <div class="col-lg-6 col-xxl-4" style="width: 50%;">
            <div class="datepicker-dashboard">
                <div class="datepicker-here" data-language="en"></div>
            </div>
        </div>
        <!-- 달력 끝 -->
        
        <!-- 공항 위치 시작 -->
        <div class="col-xxl-6">
            <div class="card">
                <div class="card-header-title card-header">
                    <h5>공항 위치</h5>
                </div>
                <div class="card-body" id="map" style="width:756x;height:600px;">
                	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=00724106dd7f78df2178c577988b8039"></script>
					<script>
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						    mapOption = { 
						        center: new kakao.maps.LatLng(35.8741903385511, 127.906975200866), // 지도의 중심좌표
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
						
						// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
						var positions = [
						    {
						        content: '<div>김포공항</div>', 
						        latlng: new kakao.maps.LatLng(37.5588966804188, 126.80281133197248)
						    },
						    {
						        content: '<div>인천공항</div>', 
						        latlng: new kakao.maps.LatLng(37.449446593373146, 126.45040864741331)
						    },
						    {
						        content: '<div>울산공항</div>', 
						        latlng: new kakao.maps.LatLng(35.59283365482653, 129.35588314447716)
						    },
						    {
						        content: '<div>사천공항</div>',
						        latlng: new kakao.maps.LatLng(35.09223037529649, 128.0865657245903)
						    },
						    {
						        content: '<div>김해공항</div>',
						        latlng: new kakao.maps.LatLng(35.173157026949795, 128.94669259897987)
						    },
						    {
						        content: '<div>포항공항</div>',
						        latlng: new kakao.maps.LatLng(35.984262028055234, 129.43407285497307)
						    },
						    {
						        content: '<div>대구공항</div>',
						        latlng: new kakao.maps.LatLng(35.89983892150234, 128.63782503522603)
						    },
						    {
						        content: '<div>청주공항</div>',
						        latlng: new kakao.maps.LatLng(36.72201708139164, 127.49584609990285)
						    },
						    {
						        content: '<div>군산공항</div>',
						        latlng: new kakao.maps.LatLng(35.92600368254394, 126.61567260598301)
						    },
						    {
						        content: '<div>여수공항</div>',
						        latlng: new kakao.maps.LatLng(34.839963090949446, 127.61392320392365)
						    },
						    {
						        content: '<div>원주공항</div>',
						        latlng: new kakao.maps.LatLng(37.45920162946342, 127.97710689920744)
						    },
						    {
						        content: '<div>양양공항</div>',
						        latlng: new kakao.maps.LatLng(38.058728790593946, 128.66281100723862)
						    },
						    {
						        content: '<div>제주공항</div>',
						        latlng: new kakao.maps.LatLng(33.507075298671616, 126.49275611075839)
						    },
						    {
						        content: '<div>무안공항</div>',
						        latlng: new kakao.maps.LatLng(34.99494236341108, 126.38785940163078)
						    },
						    {
						        content: '<div>광주공항</div>',
						        latlng: new kakao.maps.LatLng(35.1401731422491, 126.81043818074467)
						    }
						];
						
						for (var i = 0; i < positions.length; i ++) {
						    // 마커를 생성합니다
						    var marker = new kakao.maps.Marker({
						        map: map, // 마커를 표시할 지도
						        position: positions[i].latlng // 마커의 위치
						    });

						    // 마커에 표시할 인포윈도우를 생성합니다 
						    var infowindow = new kakao.maps.InfoWindow({
						        content: positions[i].content // 인포윈도우에 표시할 내용
						    });

						    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
						    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
						    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
						    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
						    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
						}

						// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
						function makeOverListener(map, marker, infowindow) {
						    return function() {
						        infowindow.open(map, marker);
						    };
						}

						// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
						function makeOutListener(infowindow) {
						    return function() {
						        infowindow.close();
						    };
						}
					</script>
                	<%-- <img onclick="javascript:getLoc()" src="<c:url value='/assets/images/flights/지도.png'/>"> --%>
                    <!-- <div class="jvector-map-height" id="world-map"></div> -->
                </div>
            </div>
        </div>
        <!-- 공항 위치 끝 -->
        
        
        
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