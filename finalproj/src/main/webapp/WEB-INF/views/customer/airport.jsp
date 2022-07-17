<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>

<style>
.icon_wrap.type01 {
	padding: 10px 0;
	border: 1px solid #ddd;
}

.icon_wrap {
	position: relative;
}

.mar_b40 {
	margin-bottom: 10px !important;
}

.icon_wrap>ol {
	display: table;
	width: 100%;
}

.icon_wrap>ol>li:first-child {
	border: none;
}

.icon_wrap.col5>ol>li {
	width: 20%;
}

.icon_wrap>ol>li {
	display: table-cell;
	float: inherit;
	border-left: 1px solid #ddd;
}

.icon_wrap>ol>li {
	padding: 0 10px;
}

.icon_wrap>ol>li, .icon_wrap>dl, .icon_wrap>div {
	position: relative;
	float: left;
	text-align: center;
	box-sizing: border-box;
}

.icon_wrap.col5>ol>li {
	width: 20%;
}

.icon_wrap.col4>ol>li {
	width: 25%;
}

.icon_wrap.col3>ol>li {
	width: 33.3%;
}

.icon_wrap>ol>li {
	display: table-cell;
	float: inherit;
	border-left: 1px solid #ddd;
}

.icon_wrap>ol>li {
	padding: 0 10px;
}

.icon_wrap>ol>li, .icon_wrap>dl, .icon_wrap>div {
	position: relative;
	float: left;
	text-align: center;
	box-sizing: border-box;
}

ol {
	display: block;
	list-style-type: decimal;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	padding-inline-start: 40px;
}

.icon_wrap>ol>li .label {
	display: inline-block;
	position: absolute;
	top: 0;
	left: 20px;
	width: 47px;
	height: 47px;
	border-radius: 50%;
	text-align: center;
	color: #555;
	font-size: 18px;
	font-weight: bold;
	font-family: 'latofont';
	line-height: 47px;
	background: #f0f0f0;
}

.icon_wrap.type01 ol li .icoset_m {
	margin: 30px 0 5px;
}

.icoset_m {
	width: 84px;
	height: 76px;
}

.icoset_m, .icoset_s {
	display: inline-block;
	content: '';
	background-repeat: no-repeat;
}

.icon_wrap>ol>li>.txt {
	font-size: 18px;
	line-height: 1.3;
	color: #222;
	text-align: center;
}

.icoset_m.booking.ico_info_01 {
	background-position: 0 -140px;
}

.icoset_m.booking.ico_info_02 {
	background-position: -84px -140px;
}

.icoset_m.booking.ico_info_03 {
	background-position: -168px -140px;
}

.icoset_m.booking.ico_info_04 {
	background-position: -252px -140px;
}

.icoset_m.booking.ico_info_05 {
	background-position: -336px -140px;
}

.icoset_m.booking.ico_info_06 {
	background-position: 0 -278px;
}

.icoset_m.booking.ico_info_07 {
	background-position: -84px -278px;
}

.icoset_m.booking.ico_info_08 {
	background-position: -168px -278px;
}

.icoset_m.booking.ico_info_09 {
	background-position: -252px -278px;
}

.card-body>ul>li {
	display: inline-block;
	font-size: 14px;
	letter-spacing: 0.03em;
	padding-bottom: 10px;
}

table {
	width: 100%;
	border: 2px solid #444444;
	border-collapse: collapse;
}

th, td {
	border: 1px solid #444444;
	padding: 7px;
	text-align: center;
}

th {
	background-color: #dcdcde;
}
</style>

<body>

	<!-- breadcrumb start -->
	<section class="breadcrumb-section no-bg pt-0" id="block"
		style="width: 100%;">
		<div class="breadcrumb-content overlay-black">
			<div>
				<h2>공항 안내</h2>
			</div>
		</div>
		<div class="title-breadcrumb">OnAir</div>
	</section>
	<!-- breadcrumb end -->


	<!-- section start-->
	<section class="small-section bg-inner" data-sticky_parent>
		<div class="container">
			<div class="row">

				<div class="col-lg-12">
					<div class="product_img_scroll" data-sticky_column>
						<div class="faq-content tab-content" id="top-tabContent">
							<div class="tab-pane fade show active" id="planeReservation">
								<div>
									<div class="card">
										<div class="card-header">
											<h2 style="text-align: center">전국 공항 위치</h2>
										</div>
										<hr>
									</div>
									<br>
									<div class="card">

										<div class="card-body" style="margin: 0 auto">
											<div id="map1" style="width: 500px; height: 600px;"></div>
											<script type="text/javascript"
												src="//dapi.kakao.com/v2/maps/sdk.js?appkey=00724106dd7f78df2178c577988b8039"></script>
											<script>
												var container = document
														.getElementById('map1');
												var options = {
													center : new kakao.maps.LatLng(
															36.034681485295046,
															127.87507964858708),
													level : 13
												};

												var map = new kakao.maps.Map(
														container, options);

												// 무안, 광주, 군산, 여수, 원주, 양양, 제주
												var markerPositions = [
														new kakao.maps.LatLng(
																36.034681485295046,
																127.87507964858708),
														new kakao.maps.LatLng(
																35.1401731422491,
																126.81043818074467),
														new kakao.maps.LatLng(
																35.92600368254394,
																126.61567260598301),//군산
														new kakao.maps.LatLng(
																34.839963090949446,
																127.61392320392365),//여수
														new kakao.maps.LatLng(
																37.45920162946342,
																127.97710689920744),//원주
														new kakao.maps.LatLng(
																38.058728790593946,
																128.66281100723862),//양양
														new kakao.maps.LatLng(
																33.507075298671616,
																126.49275611075839),//제주
											//김해, 사천, 울산, 인천, 김포, 포항, 대구, 청주
														new kakao.maps.LatLng(
																35.173157026949795,
																128.94669259897987),//김해
														new kakao.maps.LatLng(
																35.09223037529649,
																128.0865657245903),//사천
														new kakao.maps.LatLng(
																35.59283365482653,
																129.35588314447716),//울산
														new kakao.maps.LatLng(
																37.449446593373146,
																126.45040864741331),//인천
														new kakao.maps.LatLng(
																37.5588966804188,
																126.80281133197248),//김포
														new kakao.maps.LatLng(
																35.984262028055234,
																129.43407285497307),//포항
														new kakao.maps.LatLng(
																35.89983892150234,
																128.63782503522603),//대구
														new kakao.maps.LatLng(//청주
																36.72201708139164,
																127.49584609990285)

												];

												for (var i = 0; i < markerPositions.length; i++) {
													var marker = new kakao.maps.Marker(
															{
																position : markerPositions[i]
															});
													marker.setMap(map);
												}
											</script>

										</div>
									</div>
								</div>
								<br>
								<hr>
								<!-- <div class="card">
									<div class="card-header" style="font-size: 20px">인천국제공항</div><br>
									<div class="card-body">
										<table>
											<colgroup>
												<col style="width: 300px;">
												<col style="width: 300px;">
											</colgroup>
											<thead>
												<tr>
													<th>연락처</th>
													<th>웹사이트</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1577-2600</td>
													<td><a href="https://www.airport.kr">www.airport.kr</a></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div> -->
							</div>
						</div>


					</div>
				</div>
			</div>
		</div>
		</div>
	</section>
	<!-- section end-->

	<%@include file="../inc/footer.jsp"%>