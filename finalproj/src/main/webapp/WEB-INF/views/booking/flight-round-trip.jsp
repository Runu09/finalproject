<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<script type="text/javascript">
	function pageFunc(curPage){
		$('input[name=currentPage]').val(curPage);
		$('form[name=frmPage]').submit();
	}
	
</script>
<style>
	.hidden{
	  position: absolute;
	  visibility: hidden;
	}
</style>

<!-- 페이징 처리를 위한 form 시작-->
<form name="frmPage" method="post">
	<input type="hidden" name="currentPage"> 
</form>
<!-- 페이징 처리 form 끝 -->

<!-- breadcrumb start -->
<section class="breadcrumb-section small-sec pt-0">
	<img src="http://themes.pixelstrap.com/rica/assets/images/flights/flight-breadcrumb2.jpg"
		class="bg-img img-fluid blur-up lazyload" alt="">
</section>
<!-- breadcrumb end -->


<!-- search section start -->
    <div class="bg-inner small-section pb-0">
        <div class="container">
            <div class="flight-search">
                <div class="responsive-detail">
                    <div class="destination">
                        <span>${depLoc }</span>
                        <span><i class="fas fa-long-arrow-alt-right"></i></span>
                        <span>${arrLoc }</span>
                    </div>
                    <div class="details">
                        <span>${date }</span>
                        <span class="divider">|</span>
                        <span>${people }</span>
                    </div>
                    <div class="modify-search">
                        <a href="javascript:void(0)" class="btn btn-solid color1"> 상세검색</a>
                    </div>
                </div>
                <div class="flight-search-detail" >
                    <form class="row m-0" name="form" id="form" action="<c:url value='/booking/flight-round-trip.do' />" method="get">
                        <div class="col-lg-2">
                            <div class="form-group">
                                <label>출발지</label>
                                <input type="text" class="form-control open-select"
                                    value="${depLoc }" placeholder="from" id="departure" name="depLoc">
                                <input type="hidden" id="hiddenDep" name="departure" value="${dep }">
                                <img src="../assets/images/icon/from.png" class="img-fluid blur-up lazyload" alt="">
                                <div class="selector-box" id="depBox">
                                	<ul class="dep">
                                         <c:forEach items="${selectAllAirport}" var="airfort">
										    <li>
										        <a href="#">
										            <h5><c:out value="${airfort.ALoc}"/></h5>
										            <h6><c:out value="${airfort.ALoc}"/> 국내공항</h6>
										            <span><c:out value="${airfort.AName.substring(4, 7)}"/></span>
										            <div class="hidden"><c:out value='${airfort.AName}'/></div>
										        </a>
										    </li>
										</c:forEach>
									</ul>
							        <%-- <%@ include file="../inc/selectArrival.jsp" %> --%>                                   
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                            	<label>도착지</label>
                                <input type="text" class="form-control open-select" value="${arrLoc}" placeholder="to" id="arrival" name="arrLoc">
                                <input type="hidden" id="hiddenArr" name="arrival" value="${arr }">
                                <img src="../assets/images/icon/location.png" class="img-fluid blur-up lazyload" alt="">
                                <div class="selector-box" id="arrBox">
                                	<ul class="arr">
                                         <c:forEach items="${selectAllAirport}" var="airfort">
										    <li>
										        <a href="#">
										            <h5><c:out value="${airfort.ALoc}"/></h5>
										            <h6><c:out value="${airfort.ALoc}"/> 국내공항</h6>
										            <span><c:out value="${airfort.AName.substring(4, 7)}"/></span>
										            <div class="hidden"><c:out value='${airfort.AName}'/></div>
										        </a>
										    </li>
										</c:forEach>
									</ul>
                                    <%-- <%@ include file="../inc/selectDeparture.jsp" %> --%>
                                </div>
                        	</div>           
                        </div>
                        <div class="col-lg-2">
                            <div class="form-group">
                                <label>탑승일</label>
                                <input placeholder="Depart Date" id="datepicker" name="datepicker" value="${date }"/>
                                <input type="hidden" id="hdDate" name="hdDate" value="${hdDate }">
                            </div>
                        </div>
                        
                        <div class="col-lg-2">
                            <div class="form-group">
                                <label>승객 선택</label>
                                <input type="text" class="form-control open-select" id="people" name="people" placeholder="to" value="${people }">
                                <c:if test='${adult=="" || empty adult}'>
                            		<input type="hidden" value=0 id="adult" name="adult">
                            	</c:if>
                                <c:if test='${adult!="" || not empty adult}'>
                            		<input type="hidden" value="${adult}" placeholder="to" id="adult" name="adult">
                            	</c:if>
                            	
                            	<c:if test='${child=="" || empty child}'>
                            		<input type="hidden" value=0 id="child" name="child">
                            	</c:if>
                                <c:if test='${child!="" || not empty child}'>
                            		<input type="hidden" value="${child}" id="child" name="child">
                            	</c:if>
                                <img src="../assets/images/icon/user.png" class="img-fluid blur-up lazyload" alt="">
                                <div class="selector-box-flight" id="qtyBox">
                                    <div class="room-cls">
                                        <div class="qty-box">
	                                        <label>성인</label>
	                                        <div class="input-group">
	                                            <button type="button" class="btn quantity-left-minus" id="decAd" 
	                                                data-type="minus" data-field=""> - </button>
	                                            <c:if test='${adult=="" || empty adult}'>
				                            		<span name="quantity"  id="numberUpDown1" class="form-control qty-input input-number">0</span>
				                            	</c:if>
				                                <c:if test='${adult!="" || not empty adult}'>
				                            		<span name="quantity"  id="numberUpDown1" class="form-control qty-input input-number">${adult }</span>
				                            	</c:if>
	                                            
	                                            <button type="button" class="btn quantity-right-plus"
	                                                data-type="plus" data-field="" id="incAd">+</button>
	                                        </div>
	                                    </div>
	                                    <div class="qty-box" >
	                                        <label>소아</label>
	                                        <div class="input-group" >
	                                            <button type="button" class="btn quantity-left-minus" id="decCh"
	                                                data-type="minus" data-field=""> - </button>
	                                            <c:if test='${child=="" || empty child}'>
				                            		<span name="quantity"  id="numberUpDown2" class="form-control qty-input input-number">0</span>
				                            	</c:if>
				                                <c:if test='${child!="" || not empty child}'>
				                            		<span name="quantity"  id="numberUpDown2"class="form-control qty-input input-number">${child }</span>
				                            	</c:if>
	                                            <button type="button" class="btn quantity-right-plus" id="incCh"
	                                                data-type="plus" data-field=""> + </button>
	                                        </div>
	                                    </div>
                                    </div>
                                    
                                    <div class="bottom-part">
                                        <a href="javascript:void(0)" class="btn" id="inwonOk">확인</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="search-btn">
                            	<input type="submit" class="btn btn-solid color1" id="reservationsubmit" value="검색">
                            </div>
                        </div>
                        <div class="responsive-close">
                            <i class="far fa-times-circle"></i>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- search section end -->


<!-- section start -->
<section class="pt-0 bg-inner small-section loader-section">
	<!-- pre-loader start -->
        <div class="loader-wrapper inner-loader">
            <div class="loader">
                <div class="animation">
                    <svg class="animation__cloud--back" viewBox="0 0 45 18" version="1.1"
                        xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="45px" height="18px">
                        <path
                            d="M 58.88372802734375 825.155517578125 C 16.61685562133789 826.1433715820312 57.925209045410156 781.6769409179688 58.883731842041016 781.3507080078125 C 106.25779724121094 731.152099609375 169.17739868164062 692.9862670898438 226.64694213867188 694.6730346679688 C 227.2968292236328 557.091552734375 389.74322509765625 563.0558471679688 425.166748046875 635.9559326171875 C 534.7359619140625 431.2034912109375 793.6226196289062 599.6361694335938 715.956298828125 741.27392578125 C 820.5570068359375 803.94287109375 789.773193359375 826.9736328125 767.21728515625 825.1555786132812 C 394.85125732421875 825.5911865234375 359.5561218261719 823.805908203125 58.88372802734375 825.155517578125 Z"
                            transform="matrix(0.0573558509349823, 0, 0, 0.056244850158691406, -1.3596858978271484, -29.666284561157227)" />
                    </svg>
                    <svg class="animation__cloud--middle" viewBox="0 0 45 18" version="1.1"
                        xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="45px" height="18px">
                        <path
                            d="M 58.88372802734375 825.155517578125 C 16.61685562133789 826.1433715820312 57.925209045410156 781.6769409179688 58.883731842041016 781.3507080078125 C 106.25779724121094 731.152099609375 169.17739868164062 692.9862670898438 226.64694213867188 694.6730346679688 C 227.2968292236328 557.091552734375 389.74322509765625 563.0558471679688 425.166748046875 635.9559326171875 C 534.7359619140625 431.2034912109375 793.6226196289062 599.6361694335938 715.956298828125 741.27392578125 C 820.5570068359375 803.94287109375 789.773193359375 826.9736328125 767.21728515625 825.1555786132812 C 394.85125732421875 825.5911865234375 359.5561218261719 823.805908203125 58.88372802734375 825.155517578125 Z"
                            transform="matrix(0.0573558509349823, 0, 0, 0.056244850158691406, -1.3596858978271484, -29.666284561157227)" />
                    </svg>
                    <div class="animation__plane--shadow"></div>
                    <svg class="animation__plane" data-name="svgi-plane" viewBox="0 0 135.67 49.55">
                        <path fill="#fff" stroke="#464646" stroke-linejoin="round" d="M74.663 45.572h-9.106z"
                            class="svgi-plane--stripe3" />
                        <path fill="#fff" stroke="#464646" stroke-linejoin="round" stroke-width="1"
                            d="M.75 26.719h23.309z" class="svgi-plane--stripe1" />
                        <path fill="#fff" stroke="#464646" stroke-linejoin="round" stroke-width="1"
                            d="M11.23 31.82h22.654z" class="svgi-plane--stripe2" />
                        <path fill="#fff" stroke="#464646" stroke-linejoin="round" stroke-width="1"
                            d="m 53.47597,24.263013 h 68.97869 c 6.17785,0 12.47074,6.758518 12.40872,8.67006 -0.05,1.537903 -5.43763,7.036166 -11.72452,7.056809 l -59.599872,0.201269 c -9.092727,0.03097 -23.597077,-5.992662 -22.178652,-11.794378 1.160348,-4.74789 7.862358,-4.13376 12.115634,-4.13376 z" />
                        <path fill="#fff" stroke="#464646" stroke-linejoin="round" stroke-width="1"
                            d="M 45.243501,24.351777 37.946312,0.952937 h 7.185155 c 15.37061,20.184725 28.402518,23.28324 28.402518,23.28324 0,0 -27.106129,-0.178562 -28.290484,0.1156 z" />
                        <path fill="#fff" stroke="#464646" stroke-linejoin="round" stroke-width="1"
                            d="m 42.699738,18.984597 h 10.627187 c 5.753726,0 5.364609,7.799958 0,7.799958 H 42.998828 c -4.96749,0 -5.574672,-7.799958 -0.29909,-7.799958 z m 33.139939,16.164502 h 29.656893 c 6.62199,0 6.49395,6.577892 0,6.577892 H 75.940707 c -8.658596,0 -8.499549,-6.35598 -0.10103,-6.577892 z m 9.693907,6.664592 h 8.86866 c 4.439332,0 4.309293,7.066099 0,7.066099 h -8.756626 z" />
                        <path fill="#fff" stroke="#464646" stroke-linejoin="round" stroke-width="1"
                            d="m 85.55159,42.447431 c 0,0 -5.282585,0.456211 -6.372912,3.263659 1.335401,2.378073 6.397919,2.528767 6.397919,2.528767 z" />
                        <path fill="#fff" stroke="#464646" stroke-linejoin="round" stroke-width="1"
                            d="m 133.68903,31.07417 h -7.01411 c -1.26938,0 -2.89286,-1.005314 -3.21496,-3.216179 h 7.50225 z" />
                        <ellipse cx="113.564" cy="29.448534" fill="#fff" stroke="#464646" stroke-linecap="square"
                            stroke-linejoin="round" stroke-width="1" rx="1.3354006" ry="1.6400863" />
                        <ellipse cx="107.56219" cy="29.448534" fill="#fff" stroke="#464646" stroke-linecap="square"
                            stroke-linejoin="round" stroke-width="1" rx="1.3354006" ry="1.6400863" />
                        <ellipse cx="101.56039" cy="29.448534" fill="#fff" stroke="#464646" stroke-linecap="square"
                            stroke-linejoin="round" stroke-width="1" rx="1.3354006" ry="1.6400863" />
                        <ellipse cx="95.558594" cy="29.448534" fill="#fff" stroke="#464646" stroke-linecap="square"
                            stroke-linejoin="round" stroke-width="1" rx="1.3354006" ry="1.6400863" />
                        <ellipse cx="89.556793" cy="29.448534" fill="#fff" stroke="#464646" stroke-linecap="square"
                            stroke-linejoin="round" stroke-width="1" rx="1.3354006" ry="1.6400863" />
                        <ellipse cx="83.554993" cy="29.448534" fill="#fff" stroke="#464646" stroke-linecap="square"
                            stroke-linejoin="round" stroke-width="1" rx="1.3354006" ry="1.6400863" />
                        <ellipse cx="77.553192" cy="29.448534" fill="#fff" stroke="#464646" stroke-linecap="square"
                            stroke-linejoin="round" stroke-width="1" rx="1.3354006" ry="1.6400863" />
                        <ellipse cx="71.551392" cy="29.448534" fill="#fff" stroke="#464646" stroke-linecap="square"
                            stroke-linejoin="round" stroke-width="1" rx="1.3354006" ry="1.6400863" />
                        <ellipse cx="65.549591" cy="29.448534" fill="#fff" stroke="#464646" stroke-linecap="square"
                            stroke-linejoin="round" stroke-width="1" rx="1.3354006" ry="1.6400863" /></svg>
                    <svg class="animation__cloud--front" viewBox="0 0 45 18" version="1.1"
                        xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="45px" height="18px">
                        <path
                            d="M 58.88372802734375 825.155517578125 C 16.61685562133789 826.1433715820312 57.925209045410156 781.6769409179688 58.883731842041016 781.3507080078125 C 106.25779724121094 731.152099609375 169.17739868164062 692.9862670898438 226.64694213867188 694.6730346679688 C 227.2968292236328 557.091552734375 389.74322509765625 563.0558471679688 425.166748046875 635.9559326171875 C 534.7359619140625 431.2034912109375 793.6226196289062 599.6361694335938 715.956298828125 741.27392578125 C 820.5570068359375 803.94287109375 789.773193359375 826.9736328125 767.21728515625 825.1555786132812 C 394.85125732421875 825.5911865234375 359.5561218261719 823.805908203125 58.88372802734375 825.155517578125 Z"
                            transform="matrix(0.0573558509349823, 0, 0, 0.056244850158691406, -1.3596858978271484, -29.666284561157227)" />
                    </svg>
                </div>
            </div>
        </div>
        <!-- pre-loader end -->
        <div class="container">
            <div class="row">
                <div class="col-lg-9 ratio3_2">
                    <a href="javascript:void(0)" class="mobile-filter border-top-0">
                        <h5>최근 검색 조건</h5>
                        <img src="../assets/images/icon/adjust.png" class="img-fluid blur-up lazyload" alt="">
                    </a>
                    <div class="flight-detail-sec">
                        <div class="title-bar">
                            <div class="row">
                                <div class="col-2">
                                    <p>항공사</p>
                                </div>
                                <div class="col-5">
                                    <p>출발지 & 도착지</p>
                                </div>
                                <div class="col-2">
                                    <p>가격</p>
                                </div>
                            </div>
                        </div>
                        <c:if test="${empty selectAllScheduleApi }">
                        	<section class="bg-inner small-section success-section">
								<div class="container">
									<div class="row success-detail mt-0">
										<div class="col">
											<img src="../assets/images/flights/plane.png"
												class="img-fluid blur-up lazyload" alt="">
											<h2>항공편을 찾을 수 없습니다.</h2>
											<p>검색결과에 맞는 항공편을 찾을 수 없습니다. 
												다시 검색해주세요.</p>
										</div>
									</div>
								</div>
							</section>
						</c:if>
						<c:if test="${!empty selectAllScheduleApi }">
	                        <c:forEach items="${selectAllScheduleApi}" var="schedule">
	                        <div class="detail-bar">
	                            <div class="detail-wrap wow fadeInUp">
	                                <div class="row">
	                                    <div class="col-md-2">
	                                        <div class="logo-sec">
	                                        	<c:choose>
	                                        		<c:when test="${schedule.alName eq '아시아나항공'}">
	                                        			<img src="<c:url value='/assets/images/flights/airlines/아시아나항공.png'/>" 
	                                        				class="img-fluid blur-up lazyload" alt="" style="width: 60px; height: 60px">
	                                        		</c:when>
	                                        		<c:when test="${schedule.alName eq '에어부산'}">
	                                        			<img src="<c:url value='/assets/images/flights/airlines/에어부산.png'/>" 
	                                        				class="img-fluid blur-up lazyload" alt="" style="width: 60px; height: 60px">
	                                        		</c:when>
	                                        		<c:when test="${schedule.alName eq '에어서울'}">
	                                        			<img src="<c:url value='/assets/images/flights/airlines/에어서울.jpg'/>" 
	                                        				class="img-fluid blur-up lazyload" alt="" style="width: 60px; height: 60px">
	                                        		</c:when>
	                                        		<c:when test="${schedule.alName eq '이스타항공'}">
	                                        			<img src="<c:url value='/assets/images/flights/airlines/이스타항공.png'/>" 
	                                        				class="img-fluid blur-up lazyload" alt="" style="width: 60px; height: 60px">
	                                        		</c:when>
	                                        		<c:when test="${schedule.alName eq '플라이강원'}">
	                                        			<img src="<c:url value='/assets/images/flights/airlines/플라이강원.png'/>" 
	                                        				class="img-fluid blur-up lazyload" alt="" style="width: 60px; height: 60px">
	                                        		</c:when>
	                                        		<c:when test="${schedule.alName eq '하이에어'}">
	                                        			<img src="<c:url value='/assets/images/flights/airlines/하이에어.png'/>" 
	                                        				class="img-fluid blur-up lazyload" alt="" style="width: 60px; height: 60px">
	                                        		</c:when>
	                                        		<c:when test="${schedule.alName eq '제주항공'}">
	                                        			<img src="<c:url value='/assets/images/flights/airlines/제주항공.png'/>" 
	                                        				class="img-fluid blur-up lazyload" alt="" style="width: 60px; height: 60px">
	                                        		</c:when>
	                                        		<c:when test="${schedule.alName eq '진에어'}">
	                                        			<img src="<c:url value='/assets/images/flights/airlines/진에어.png'/>" 
	                                        				class="img-fluid blur-up lazyload" alt="" style="width: 60px; height: 60px">
	                                        		</c:when>
	                                        		<c:when test="${schedule.alName eq '대한항공'}">
	                                        			<img src="<c:url value='/assets/images/flights/airlines/대한항공.png'/>" 
	                                        				class="img-fluid blur-up lazyload" alt="" style="width: 60px; height: 60px">
	                                        		</c:when>
	                                        		<c:when test="${schedule.alName eq '티웨이항공'}">
	                                        			<img src="<c:url value='/assets/images/flights/airlines/티웨이항공.png'/>" 
	                                        				class="img-fluid blur-up lazyload" alt="" style="width: 60px; height: 60px">
	                                        		</c:when>
	                                        	</c:choose>
	                                        	
	                                            <span class="title"><c:out value='${schedule.alName}'/></span>
	                                        </div>
	                                    </div>
	                                    <div class="col-md-5">
	                                        <div class="airport-part">
	                                            <div class="airport-name">
	                                                <h4><c:out value='${schedule.SStarttime.substring(8, 10)}'/>: <c:out value='${schedule.SStarttime.substring(10, 12)}'/></h4>
	                                                <h6><c:out value='${schedule.ADepnm}'/></h6>
	                                            </div>
	                                            <div class="airport-progress">
	                                                <i class="fas fa-plane-departure float-start"></i>
	                                                <i class="fas fa-plane-arrival float-end"></i>
	                                                <div class="stop">
	                                                    <c:out value='${schedule.SArrtime.substring(8, 10)*60+schedule.SArrtime.substring(10, 12)-(schedule.SStarttime.substring(8, 10)*60+schedule.SStarttime.substring(10, 12))}'/>분
	                                                </div>
	                                            </div>
	                                            <div class="airport-name arrival">
	                                            	<h4><c:out value='${schedule.SArrtime.substring(8, 10)}'/>: <c:out value='${schedule.SArrtime.substring(10, 12)}'/></h4>
	                                                <h6><c:out value='${schedule.AArrnm}'/></h6>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="col-md-2">
	                                        <div class="price">
	                                            <div>
	                                                <h4><c:out value='${schedule.SPrice}'/>원</h4>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="col-md-3">
	                                        <div class="book-flight">
	                                        	<!-- <button type="submit" class="btn btn-solid color1 " id="btBook">book now</button> -->
	                                            <a href="<c:url value='/booking/flight-booking.do?sNo=${schedule.SNo }&adult=${adult }&child=${child }'/>" class="btn btn-solid color1 ">book now</a>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        </c:forEach>
                        </c:if>
                    </div>
                    <nav aria-label="Page navigation example" class="pagination-section mt-0">
						<ul class="pagination">
							<c:if test="${pagingInfo.firstPage>1 }">
								<li class="page-item"><a class="page-link"
									onclick="pageFunc(${pagingInfo.firstPage-1})" href="#"
									aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
										<span class="sr-only">이전</span>
								</a></li>
							</c:if>
		
							<c:forEach var="i" begin="${pagingInfo.firstPage }"
								end="${pagingInfo.lastPage }">
								<c:if test="${i==pagingInfo.currentPage }">
		
									<li class="page-item active"><a class="page-link">${i }</a></li>
								</c:if>
		
								<c:if test="${i!=pagingInfo.currentPage }">
									<li class="page-item"><a class="page-link" href="#"
										onclick="pageFunc(${i})">${i }</a></li>
								</c:if>
							</c:forEach>
		
							<c:if test="${pagingInfo.lastPage<pagingInfo.totalPage }">
								<li class="page-item"><a class="page-link" href="#"
									onclick="pageFunc(${pagingInfo.lastPage+1})" aria-label="Next">
										<span aria-hidden="true">&raquo;</span> <span class="sr-only">다음</span>
								</a></li>
							</c:if>
						</ul>
					</nav>
                </div>
                <div class="col-lg-3">
                    <div class="left-sidebar">
                        <div class="back-btn">
                            back
                        </div>
                        <div class="search-bar">
                            <input type="text" placeholder="Search here..">
                            <i class="fas fa-search"></i>
                        </div>
                        <div class="middle-part collection-collapse-block open">
                            <a href="javascript:void(0)" class="section-title collapse-block-title">
                                <h5>검색 조건</h5>
                                <img src="../assets/images/icon/adjust.png" class="img-fluid blur-up lazyload" alt="">
                            </a>
                            <div class="collection-collapse-block-content ">
                                <div class="filter-block">
                                    <div class="collection-collapse-block open">
                                        <h6 class="collapse-block-title">항공사</h6>
                                        <div class="collection-collapse-block-content">
                                            <div class="collection-brand-filter">
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="wifi">
                                                    <label class="form-check-label" for="wifi">대한항공(KAL)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="spa">
                                                    <label class="form-check-label" for="spa">아시아나항공(AAR)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="pet">
                                                    <label class="form-check-label" for="pet">에어로케이(EOK)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="parking">
                                                    <label class="form-check-label" for="parking">에어부산(ABL)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="swimming">
                                                    <label class="form-check-label" for="swimming">에어서울(ASV)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="chinese">
                                                    <label class="form-check-label" for="chinese">제주항공(JJA)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="restaurant">
                                                    <label class="form-check-label" for="restaurant">진에어(JJA)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="restaurant">
                                                    <label class="form-check-label" for="restaurant">티웨이항공(TWB)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="restaurant">
                                                    <label class="form-check-label" for="restaurant">플라이강원(FGW)</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="filter-block">
                                    <div class="collection-collapse-block open">
                                        <h6 class="collapse-block-title">출발 시간</h6>
                                        <div class="collection-collapse-block-content">
                                            <div class="collection-brand-filter">
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="suomi">
                                                    <label class="form-check-label" for="suomi"><img
                                                            src="../assets/images/icon/time/sunrise.png"
                                                            class="img-fluid blur-up lazyload me-1" alt=""> 아침 (6am
                                                        to 12pm)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="english">
                                                    <label class="form-check-label" for="english"><img
                                                            src="../assets/images/icon/time/sun.png"
                                                            class="img-fluid blur-up lazyload me-1" alt=""> 점심 (12pm
                                                        to 6pm)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="sign">
                                                    <label class="form-check-label" for="sign"><img
                                                            src="../assets/images/icon/time/night.png"
                                                            class="img-fluid blur-up lazyload me-1" alt=""> 저녁
                                                        (after 6pm)</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="filter-block">
                                    <div class="collection-collapse-block open">
                                        <h6 class="collapse-block-title">도착시간</h6>
                                        <div class="collection-collapse-block-content">
                                            <div class="collection-brand-filter">
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="morning">
                                                    <label class="form-check-label" for="morning"><img
                                                            src="../assets/images/icon/time/sunrise.png"
                                                            class="img-fluid blur-up lazyload me-1" alt=""> 아침 (6am
                                                        to 12pm)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="noon">
                                                    <label class="form-check-label" for="noon"><img
                                                            src="../assets/images/icon/time/sun.png"
                                                            class="img-fluid blur-up lazyload me-1" alt=""> 점심 (12pm
                                                        to 6pm)</label>
                                                </div>
                                                <div class="form-check collection-filter-checkbox">
                                                    <input type="checkbox" class="form-check-input" id="evening">
                                                    <label class="form-check-label" for="evening"><img
                                                            src="../assets/images/icon/time/night.png"
                                                            class="img-fluid blur-up lazyload me-1" alt=""> 저녁
                                                        (after 6pm)</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="bottom-info">
                            <h5><span>i</span> need help</h5>
                            <h4>010 - 1234 - 5678</h4>
                            <h6>Monday to Friday 9.00am - 7.30pm</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- section End -->

<%@include file="../inc/footer.jsp"%>
