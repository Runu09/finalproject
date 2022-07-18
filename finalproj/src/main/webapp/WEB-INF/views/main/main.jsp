<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<style>
.hidden {
	position: absolute;
	visibility: hidden;
}
</style>




<!-- home section start -->
<section class="cab-section flight-section home-section p-0">
	<div class="cloud">
		<img
			src="http://themes.pixelstrap.com/rica/assets/images/flights/sky.jpg"
			alt="" class="bg-img">
	</div>

	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<div class="flight-left h-100">
					<!-- <img src="../assets/images/flights/plane-1.png"
                            class="img-fluid blur-up lazyload plane-animation" alt="">-->
				</div>
			</div>
			<div class="col-lg-6">
				<div class="cab-content">
					<div>
						<div class="top-cls" style="font-size: 20px">#On Air</div>
						<!-- <form class="radio-form">
                                <input id="radio-1" type="radio" name="exampleRadios" value="option1" checked>
                                <label for="radio-1" class="radio-label">round trip</label>
                                <input id="radio-2" type="radio" name="exampleRadios" value="option2">
                                <label for="radio-2" class="radio-label">one way</label>
                            </form> -->
						<form action="<c:url value='/booking/flight-round-trip.do'/>"
							method="get">
							<div class="form-group">
								<input type="text" class="form-control open-select"
									placeholder="출발지" id="departure" name="depLoc"> <input type="hidden" id="hiddenDep" name="departure"> <img
									src="../assets/images/icon/from.png"
									class="img-fluid blur-up lazyload" alt="">
								<div class="selector-box" id="depBox">
									<h6 class="title">출발지를 선택하세요</h6>
									<ul class="dep">
										<c:forEach items="${selectAllAirport}" var="airfort">
											<li><a href="#">
													<h5><c:out value="${airfort.ALoc}" /></h5>
													<h6><c:out value="${airfort.ALoc}" />국내공항</h6> <span><c:out value="${airfort.AName.substring(4, 7)}" /></span>
													<div class="hidden"><c:out value='${airfort.AName}' /></div>
											</a></li>
										</c:forEach>
									</ul>
									<%-- <%@ include file="../inc/selectArrival.jsp" %> --%>
								</div>
							</div>
							<div class="form-group">
								<input type="text" class="form-control open-select"
									placeholder="도착지" id="arrival" name="arrLoc"> <input
									type="hidden" id="hiddenArr" name="arrival"> <img
									src="../assets/images/icon/location.png"
									class="img-fluid blur-up lazyload" alt="">
								<div class="selector-box" id="arrBox">
									<h6 class="title">도착지를 선택하세요</h6>
									<ul class="arr">
										<c:forEach items="${selectAllAirport}" var="airfort">
											<li><a href="#">
													<h5><c:out value="${airfort.ALoc}" /></h5>
													<h6><c:out value="${airfort.ALoc}" />국내공항</h6><span><c:out value="${airfort.AName.substring(4, 7)}" /></span>
													<div class="hidden"><c:out value='${airfort.AName}' /></div>
											</a></li>
										</c:forEach>
									</ul>
									<%-- <%@ include file="../inc/selectDeparture.jsp" %> --%>
								</div>
							</div>

							<!--  <div class="form-group mb-0">
                                    <div class="row">
                                        <div class="col">
                                            <input placeholder="Depart Date" id="datepicker" />
                                        </div>
                                        <div id="dropdate" class="col">
	                                        <div role="wrapper" class="gj-datepicker gj-datepicker-bootstrap gj-unselectable input-group">
	                                            <input placeholder="Return Date" id="datepicker1" />
	                                            <span class="input-group-append" role="right-icon">
	                                            	<button class="btn btn-outline-secondary border-left-0" type="button">
	                                            		<i class="gj-icon">event</i>
	                                           		</button>
	                                           	</span>
	                                        </div>
                                        </div> -->


							<div class="form-group mb-0">
								<div class="row">
									<div class="col">
										<input placeholder="탑승일" id="datepicker2" name="datepicker" />
										<input type="hidden" id="hdDate" name="hdDate">
									</div>
									<div class="col">
										<div class="form-group">
											<input type="text" class="form-control open-select"
												id="people" name="people" placeholder="승객"> <input
												type="hidden" id="adult" name="adult"> <input
												type="hidden" id="child" name="child"> <img
												src="../assets/images/icon/user.png"
												class="img-fluid blur-up lazyload" alt="">
											<div class="selector-box-flight" id="qtyBox">
												<div class="room-cls">
													<div class="qty-box">
														<label>성인</label>
														<div class="input-group">
															<button type="button" class="btn quantity-left-minus"
																id="decAd" data-type="minus" data-field="">-</button>
															<span name="quantity" id="numberUpDown1"
																class="form-control qty-input input-number">0</span>
															<button type="button" class="btn quantity-right-plus"
																data-type="plus" data-field="" id="incAd">+</button>
														</div>
													</div>
													<div class="qty-box">
														<label>소아</label>
														<div class="input-group">
															<button type="button" class="btn quantity-left-minus"
																id="decCh" data-type="minus" data-field="">-</button>
															<span name="quantity" id="numberUpDown2"
																class="form-control qty-input input-number">0</span>
															<button type="button" class="btn quantity-right-plus"
																id="incCh" data-type="plus" data-field="">+</button>
														</div>
													</div>
												</div>
												<div class="bottom-part">
													<a href="javascript:void(0)" class="btn" id="inwonOk">확인</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<input type="submit"
								class="btn btn-rounded btn-sm color1 float-end" id="searchBtn"
								value="search now">
						</form>
						<%-- <a href="<c:url value='/booking/flight-round-trip.do'/>" class="btn btn-rounded btn-sm color1 float-end" id="searchBtn">search
                                now</a> --%>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!--  home section end -->

<%@include file="../inc/footer.jsp"%>