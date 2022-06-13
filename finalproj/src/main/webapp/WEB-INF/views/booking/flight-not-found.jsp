<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>

<!-- breadcrumb start -->
<section class="breadcrumb-section small-sec pt-0">
	<img src="../assets/images/flights/flight-breadcrumb2.jpg"
		class="bg-img img-fluid blur-up lazyload" alt="">
</section>
<!-- breadcrumb end -->


<!-- search section start -->
<div class="bg-inner small-section pb-0">
	<div class="container">
		<div class="flight-search">
			<div class="responsive-detail">
				<div class="destination">
					<span>dubai</span> <span><i
						class="fas fa-long-arrow-alt-right"></i></span> <span>paris</span>
				</div>
				<div class="details">
					<span>tue, 19-Aug-2019</span> <span class="divider">|</span> <span>2
						Adults</span>
				</div>
				<div class="modify-search">
					<a href="javascript:void(0)" class="btn btn-solid color1">
						modify search</a>
				</div>
			</div>
			<div class="flight-search-detail">
				<form class="row m-0">
					<div class="col-lg-2">
						<div class="form-group">
							<label>from</label> <input type="text"
								class="form-control open-select" id="exampleInputEmail1"
								value="dubai(DXB)" placeholder="from"> <img
								src="../assets/images/icon/from.png"
								class="img-fluid blur-up lazyload" alt="">
						</div>
					</div>
					<div class="col-lg-2">
						<div class="form-group">
							<label>to</label> <input type="text"
								class="form-control open-select" value="paris(PAR)"
								placeholder="to"> <img
								src="../assets/images/icon/location.png"
								class="img-fluid blur-up lazyload" alt="">
						</div>
					</div>
					<div class="col-lg-2">
						<div class="form-group">
							<label>departure date</label> <input placeholder="Depart Date"
								value="10/01/2019" id="datepicker" />
						</div>
					</div>
					<div class="col-lg-2">
						<div class="form-group">
							<label>return date</label> <input placeholder="Return Date"
								id="datepicker1" />
						</div>
					</div>
					<div class="col-lg-2">
						<div class="form-group">
							<label>traveller & class</label> <input type="text"
								class="form-control  open-select" value="1 traveller"
								placeholder="to"> <img
								src="../assets/images/icon/user.png"
								class="img-fluid blur-up lazyload" alt="">
							<div class="selector-box-flight">
								<div class="room-cls">
									<div class="qty-box">
										<label>adult</label>
										<div class="input-group">
											<button type="button" class="btn quantity-left-minus"
												data-type="minus" data-field="">-</button>
											<input type="text" name="quantity"
												class="form-control qty-input input-number" value="1">
											<button type="button" class="btn quantity-right-plus"
												data-type="plus" data-field="">+</button>
										</div>
									</div>
									<div class="qty-box">
										<label>children</label>
										<div class="input-group">
											<button type="button" class="btn quantity-left-minus"
												data-type="minus" data-field="">-</button>
											<input type="text" name="quantity"
												class="form-control qty-input input-number" value="1">
											<button type="button" class="btn quantity-right-plus"
												data-type="plus" data-field="">+</button>
										</div>
									</div>
								</div>
								<div class="flight-class">
									<div class="form-check">
										<input class="form-check-input radio_animated" type="radio"
											name="exampleRadios" id="exampleRadios1" value="option1"
											checked> <label class="form-check-label"
											for="exampleRadios1"> economy </label>
									</div>
									<div class="form-check">
										<input class="form-check-input radio_animated" type="radio"
											name="exampleRadios" id="exampleRadios2" value="option2">
										<label class="form-check-label" for="exampleRadios2">
											premium </label>
									</div>
									<div class="form-check">
										<input class="form-check-input radio_animated" type="radio"
											name="exampleRadios" id="exampleRadios3" value="option3">
										<label class="form-check-label" for="exampleRadios3">
											business </label>
									</div>
								</div>
								<div class="bottom-part">
									<a href="javascript:void(0)" class="btn">apply</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-2">
						<div class="search-btn">
							<a href="#" class="btn btn-solid color1">search</a>
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
<section class="bg-inner small-section success-section">
	<div class="container">
		<div class="row success-detail mt-0">
			<div class="col">
				<img src="../assets/images/flights/plane.png"
					class="img-fluid blur-up lazyload" alt="">
				<h2>oops ! no flight found</h2>
				<p>no flights were found for this route and date combination.
					modify your search and try again</p>
				<button type="submit" class="btn  btn-solid color1">search
					again</button>
			</div>
		</div>
	</div>
</section>
<!-- section End -->

<%@include file="../inc/footer.jsp"%>