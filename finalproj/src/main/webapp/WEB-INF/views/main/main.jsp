<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>


<body>

 <!-- home section start -->
    <section class="cab-section flight-section home-section p-0">
        <div class="cloud">
            <img src="http://themes.pixelstrap.com/rica/assets/images/flights/sky.jpg" alt="" class="bg-img">
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="flight-left h-100">
                        <!-- <img src="../assets/images/flights/plane-1.png"
                            class="img-fluid blur-up lazyload plane-animation" alt=""> -->
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="cab-content">
                        <div>
                            <div class="top-cls">
                                #On Air
                            </div>
                            <!-- <form class="radio-form">
                                <input id="radio-1" type="radio" name="exampleRadios" value="option1" checked>
                                <label for="radio-1" class="radio-label">round trip</label>
                                <input id="radio-2" type="radio" name="exampleRadios" value="option2">
                                <label for="radio-2" class="radio-label">one way</label>
                            </form> -->
                            <form>
                                <div class="form-group">
                                    <input type="text" class="form-control open-select" placeholder="from">
                                    <img src="../assets/images/icon/from.png" class="img-fluid blur-up lazyload" alt="">
                                    <div class="selector-box">
                                        <h6 class="title">popular cities</h6>
                                        <ul>
                                            <li>
                                                <a href="#">
                                                    <h5>paris, france</h5>
                                                    <h6>Charles de Gaulle Airport</h6>
                                                    <span>par</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>Dubai, UAE</h5>
                                                    <h6>Dubai International Airport</h6>
                                                    <span>DXB</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>london</h5>
                                                    <h6>Heathrow</h6>
                                                    <span>LHR</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>singapore, singapore</h5>
                                                    <h6>changi Airport</h6>
                                                    <span>par</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>vancouver, canada</h5>
                                                    <h6>vancouver International Airport</h6>
                                                    <span>par</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>sydney, australia</h5>
                                                    <h6>rose bay SPB</h6>
                                                    <span>rse</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>kuala lumpur, malaysia</h5>
                                                    <h6>sentral</h6>
                                                    <span>xkl</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control open-select" placeholder="to">
                                    <img src="../assets/images/icon/location.png" class="img-fluid blur-up lazyload"
                                        alt="">
                                    <div class="selector-box">
                                        <h6 class="title">popular cities</h6>
                                        <ul>
                                            <li>
                                                <a href="#">
                                                    <h5>paris, france</h5>
                                                    <h6>Charles de Gaulle Airport</h6>
                                                    <span>par</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>Dubai, UAE</h5>
                                                    <h6>Dubai International Airport</h6>
                                                    <span>DXB</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>london</h5>
                                                    <h6>Heathrow</h6>
                                                    <span>LHR</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>singapore, singapore</h5>
                                                    <h6>changi Airport</h6>
                                                    <span>par</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>vancouver, canada</h5>
                                                    <h6>vancouver International Airport</h6>
                                                    <span>par</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>sydney, australia</h5>
                                                    <h6>rose bay SPB</h6>
                                                    <span>rse</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <h5>kuala lumpur, malaysia</h5>
                                                    <h6>sentral</h6>
                                                    <span>xkl</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="form-group mb-0">
                                    <div class="row">
                                        <!-- <div class="col">
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
                                        
                                        
                                        <div class="col">
											<div role="wrapper" class="gj-datepicker gj-datepicker-bootstrap gj-unselectable input-group">
												<input placeholder="Depart Date" id="datepicker" data-type="datepicker" data-guid="9b9d95f6-d979-d693-d495-d0b9858d19f6" data-datepicker="true" class="form-control" role="input">
												<span class="input-group-append" role="right-icon">
													<button class="btn btn-outline-secondary border-left-0" type="button">
													<i class="gj-icon">
														<svg xmlns="http://www.w3.org/2000/svg" 
															width="16" height="16" fill="currentColor" 
															class="bi bi-calendar-fill" viewBox="0 0 16 16">
															<path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V5h16V4H0V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5z"/>
														</svg>
													</i>
												</button>
												</span>
											</div>
										</div>
										
										<div id="dropdate" class="col">
											<div role="wrapper" class="gj-datepicker gj-datepicker-bootstrap gj-unselectable input-group">
												<input placeholder="Return Date" id="datepicker1" data-type="datepicker" data-guid="dafd10db-4303-53ee-162a-ac110ba8aafe" data-datepicker="true" class="form-control" role="input">
												<span class="input-group-append" role="right-icon">
													<button class="btn btn-outline-secondary border-left-0" type="button">
													<i class="gj-icon">
														<svg xmlns="http://www.w3.org/2000/svg" 
															width="16" height="16" fill="currentColor" 
															class="bi bi-calendar-fill" viewBox="0 0 16 16">
															<path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V5h16V4H0V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5z"/>
														</svg>
													</i>
													</button>
												</span>
											</div>
										</div>
                                        
                                        
                                        <div class="col">
                                            <div class="form-group">
                                                <input type="text" class="form-control open-select"
                                                    placeholder="traveller">
                                                <img src="../assets/images/icon/user.png"
                                                    class="img-fluid blur-up lazyload" alt="">
                                                <div class="selector-box-flight">
                                                    <div class="room-cls">
                                                        <div class="qty-box">
                                                            <label>adult</label>
                                                            <div class="input-group">
                                                                <button type="button" class="btn quantity-left-minus"
                                                                    data-type="minus" data-field=""> - </button>
                                                                <input type="text" name="quantity"
                                                                    class="form-control qty-input input-number"
                                                                    value="1">
                                                                <button type="button" class="btn quantity-right-plus"
                                                                    data-type="plus" data-field="">+</button>
                                                            </div>
                                                        </div>
                                                        <div class="qty-box">
                                                            <label>children</label>
                                                            <div class="input-group">
                                                                <button type="button" class="btn quantity-left-minus"
                                                                    data-type="minus" data-field=""> - </button>
                                                                <input type="text" name="quantity"
                                                                    class="form-control qty-input input-number"
                                                                    value="1">
                                                                <button type="button" class="btn quantity-right-plus"
                                                                    data-type="plus" data-field=""> + </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="bottom-part">
                                                        <a href="javascript:void(0)" class="btn">apply</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <a href="<c:url value='/booking/flight-round-trip.do'/>" class="btn btn-rounded btn-sm color1 float-end">search
                                now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--  home section end -->


    


<%@include file="../inc/footer.jsp"%>