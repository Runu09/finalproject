<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>

<style>

.icon_wrap.type01{
	padding: 10px 0;
	border: 1px solid #ddd;
}

.icon_wrap {
    position: relative;
}

.mar_b40 {
    margin-bottom: 10px !important;
}

.icon_wrap > ol {
    display: table;
    width: 100%;
}

.icon_wrap > ol > li:first-child {
    border: none;
}

.icon_wrap.col5 > ol > li {
    width: 20%;
}
.icon_wrap > ol > li {
    display: table-cell;
    float: inherit;
    border-left: 1px solid #ddd;
}
.icon_wrap > ol > li {
    padding: 0 10px;
}
.icon_wrap > ol > li, .icon_wrap > dl, .icon_wrap > div {
    position: relative;
    float: left;
    text-align: center;
    box-sizing: border-box;
}

.icon_wrap.col5 > ol > li {
    width: 20%;
}

.icon_wrap.col4 > ol > li {
    width: 25%;
}

.icon_wrap.col3 > ol > li {
    width: 33.3%;
}

.icon_wrap > ol > li {
    display: table-cell;
    float: inherit;
    border-left: 1px solid #ddd;
}

.icon_wrap > ol > li {
    padding: 0 10px;
}

.icon_wrap > ol > li, .icon_wrap > dl, .icon_wrap > div {
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

.icon_wrap > ol > li .label {
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

.icon_wrap > ol > li > .txt {
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

.card-body > ul > li {
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
			<h2>이용 안내</h2>
		</div>
	</div>
	<div class="title-breadcrumb">OnAir</div>
</section>
<!-- breadcrumb end -->


<!-- section start-->
<section class="small-section bg-inner" data-sticky_parent>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="pro_sticky_info" data-sticky_column
                style="position: sticky; top: 50px; right: 300px;">
                    <div class="faq-tab" style="cursor: url('https://blogfiles.pstatic.net/MjAyMjA2MTVfNjQg/MDAxNjU1Mjk5MTcyNTEz.PEYJTXGViRiZgMc2Rp1yeiPDgawUifeVyh32wK3X5Xsg.cVoF7aZKk78pbhdR9YfRjz_0Iefi-hULJoflvp_J3icg.PNG.browse1009/cursor.png'), auto;">
                        <ul class="nav nav-tabs" id="top-tab" role="tablist">
                            <li class="nav-item">
                            	<a data-bs-toggle="tab" class="nav-link active" href="#planeReservation">항공권 예약</a>
                            </li>
                            <li class="nav-item">
                            	<a data-bs-toggle="tab" class="nav-link" href="#planeChange">항공권 변경</a>
                            </li>
                            <li class="nav-item">
                            	<a data-bs-toggle="tab" class="nav-link" href="#planeCancel">항공권 취소&환불</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="product_img_scroll" data-sticky_column>
                    <div class="faq-content tab-content" id="top-tabContent">
                        <div class="tab-pane fade show active" id="planeReservation">
                            <div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            온라인 항공권 예약
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        <div class="icon_wrap type01 col5 mar_b40"> 
											<ol> 
												<li> 
													<span class="label">01</span> 
													<span class="icoset_m booking ico_info_01">
														<img alt="여정선택" src="../assets/images/여정선택.png">
													</span> 
													<p class="txt">여정 선택</p> 
												</li> 
												<li> 
													<span class="label">02</span> 
													<span class="icoset_m booking ico_info_02">
														<img alt="항공편 선택" src="../assets/images/항공편 선택.png">
													</span> 
													<p class="txt">항공편 선택</p> 
												</li> 
												<li> 
													<span class="label">03</span> 
													<span class="icoset_m booking ico_info_03">
														<img alt="탑승정보 입력" src="../assets/images/탑승정보 입력.png">
													</span> 
													<p class="txt">탑승정보 입력</p> 
												</li> 
												<li> 
													<span class="label">04</span> 
													<span class="icoset_m booking ico_info_04">
														<img alt="좌석배정/결제" src="../assets/images/좌석배정&결제.png">
													</span> 
													<p class="txt">좌석배정/결제</p> 
												</li> 
												<li> 
													<span class="label">05</span> 
													<span class="icoset_m booking ico_info_05">
														<img alt="예약완료" src="../assets/images/예약완료.png">
													</span> 
													<p class="txt">예약완료</p> 
												</li> 
											</ol>
										</div>
                                    </div>
                                </div>
                                <hr size="5"><br>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            국내선 항공권 예약
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        <ul style="list-style-type:disc;"> 
											<li>※&nbsp; 국제선 항공권 온라인 예약은 조회일로부터 최대 361일, 최소 항공편 출발 2시간 전까지 예약이 가능합니다.</li> 
											<li>※&nbsp; 구매하신 항공권의 유효기간은 운임조건에 따라 다르오니 예약 시 운임조건을 꼭 확인하시기 바랍니다.</li> 
											<li>※&nbsp; 국제선 예약 시 이름이 여권과 동일하지 않을 경우 출발지/도착지 공항에서 탑승/입국이 거절될 수 있고 아시아나항공에서는<br>&nbsp;&nbsp;&nbsp;&nbsp; 이에 대한 책임을 지지 않습니다.</li> 
											<li>※&nbsp; 결제정보(카드 소유자 성명 등)는 반드시 영문으로 입력하여야 하며, 탑승하는 본인 명의의 카드만 사용할 수 있으며,<br>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;원칙적으로 타인의 카드는 사용할 수 없습니다.<br>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;공항 탑승 수속 시 탑승자 성명과 카드 명의가 상이할 경우 카드 소지 여부를 확인할 수 있습니다.<br>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;카드 확인이 불가할 경우 당사 신용거래조건 및 국제운송약관 제3조에 의거 탑승을 거부할 수 있으므로 각별히 주의해 주시기 바랍니다.<br>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;당사는 상기 사유로 인하여 탑승이 거부되는 경우 그로 인한 책임을 부담하지 않습니다.</li> 
										</ul>
                                    </div>
                                </div>
                                <hr><br>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            탑승인원 안내
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                    	<ul style="list-style-type:disc;"> 
                                        	<li>※&nbsp; 홈페이지를 통한 예약은 성인과 소아, 유아를 포함하여 최대 9명까지 가능합니다.</li>
                                        </ul>
                                    </div>
                                </div>
                                <hr><br>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            서비스 안내
                                        </h5>
                                    </div>
                                    <div class="card-body">
	                                    <table>
	                                        <colgroup>
												<col style="width: 300px;"> 
												<col style="width: 300px;"> 
											</colgroup>
											<thead> 
												<tr>
													<th>연락처</th> 
													<th>업무시간 (현지 시간 기준)</th> 
												</tr> 
											</thead>
											<tbody> 
												<tr>
													<td>010-1234-5678</td> 
													<td>주중 09:30 ~ 18:00 <br>
													 주말/공휴일 14:00 ~ 18:00</td> 
												</tr> 
											</tbody>
	                                    </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="planeChange">
                            <div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            항공권 온라인 변경예약조회
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        <div class="icon_wrap type01 col4 mar_b40"> 
											<ol> 
												<li> 
													<span class="label">01</span> 
													<span class="icoset_m booking ico_info_06">
														<img alt="예약조회" src="../assets/images/예약조회.png">
													</span> 
													<p class="txt">예약 조회</p> 
												</li> 
												<li> 
													<span class="label">02</span> 
													<span class="icoset_m booking ico_info_07">
														<img alt="변경여정 선택" src="../assets/images/예약변경.png">
													</span> 
													<p class="txt">변경할 여정 선택</p> 
												</li> 
												<li> 
													<span class="label">03</span> 
													<span class="icoset_m booking ico_info_08">
														<img alt="변경 후 항공편/운임 선택및 확인/결제" src="../assets/images/좌석배정&결제.png">
													</span> 
													<p class="txt">변경된 항공편 선택 <br>및 결제</p> 
												</li> 
												<li> 
													<span class="label">04</span> 
													<span class="icoset_m booking ico_info_09">
														<img alt="변경완료" src="../assets/images/예약완료.png">
													</span> 
													<p class="txt">변경완료</p> 
												</li> 
											</ol>
										</div>
                                    </div>
                                </div>
                                <hr size="5"><br>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            예약 변경
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        <ul style="list-style-type:disc;"> 
                                        	<li>※&nbsp; 예약변경에 따른 차액 발생 시 추가 결제 및 환불 절차가 진행됩니다.</li>
                                        	<li>※&nbsp; 홈페이지에서 구매하신 항공권의 여정 변경, 취소/환불은 반드시 홈페이지에서만 가능하며,<br>
                                        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;할인 항공권의 운임 규정 중 여정 변경, 취소/환불이 불가할 수 있으므로<br>
                                        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;구매하신 항공권의 운임 규정을 확인하시기 바랍니다.</li>
                                        </ul>
                                    </div>
                                </div>
                                <hr><br>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            예약 변경 시 유의사항
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        <ul style="list-style-type:disc;"> 
                                        	<li>※&nbsp; 동일 예약번호 내 일부 인원만 변경을 원할 시 예약센터로 연락해주시기 바랍니다.</li>
                                        	<li>※&nbsp; 예약변경 시 사전에 예약하신 좌석 등 부가서비스는 자동으로 취소되오니 변경 완료 후 다시 신청하여 주시기 바랍니다.</li>
                                        	<li>※&nbsp; 최초 항공권 예약 시 할인 쿠폰을 사용한 경우, 할인 받으신 금액이 추가 운임에 부가됩니다.</li>
                                        </ul>
                                    </div>
                                </div>
                                <hr><br>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            서비스 안내
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        <table>
	                                        <colgroup>
												<col style="width: 300px;"> 
												<col style="width: 300px;"> 
											</colgroup>
											<thead> 
												<tr>
													<th>연락처</th> 
													<th>업무시간 (현지 시간 기준)</th> 
												</tr> 
											</thead>
											<tbody> 
												<tr>
													<td>010-1234-5678</td> 
													<td>주중 09:30 ~ 18:00 <br>
													 주말/공휴일 14:00 ~ 18:00</td> 
												</tr> 
											</tbody>
	                                    </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="planeCancel">
                            <div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            항공권 온라인 취소/환불예약조회
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        <div class="icon_wrap type01 col3 mar_b40"> 
											<ol> 
												<li> 
													<span class="label">01</span> 
													<span class="icoset_m booking ico_info_01">
														<img alt="예약조회" src="../assets/images/예약조회.png">
													</span> 
													<p class="txt">예약 조회</p> 
												</li> 
												<li> 
													<span class="label">02</span> 
													<span class="icoset_m booking ico_info_02">
														<img alt="취소환불" src="../assets/images/취소환불.png">
													</span> 
													<p class="txt">예약취소/환불 <br>및 환불신청(접수)</p> 
												</li> 
												<li> 
													<span class="label">03</span> 
													<span class="icoset_m booking ico_info_09">
														<img alt="취소/환불완료" src="../assets/images/예약완료.png">
													</span> 
													<p class="txt">취소/환불완료</p> 
												</li>
											</ol>
										</div>
                                    </div>
                                </div>
                                <hr size="5"><br>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            항공권 취소/환불 기간
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        <ul style="list-style-type:disc;"> 
                                        	<li>※&nbsp; 환불은 항공권의 유효기간 만료일 이전에 신청하여 주시기 바랍니다.</li>
                                        </ul>
                                    </div>
                                </div>
                                <hr><br>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            항공기 결항에 따른 취소/환불
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        <ul style="list-style-type:disc;">
                                        	<li>※&nbsp; 기상이나 항공사 사정으로 결항되어 미 탑승한 항공권은 자동으로 취소/환불되지 않습니다.<br>
                                        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이 경우 환불수수료를 면제해드리고 있으나, 홈페이지에서 취소/환불하실 경우 결항 사유와 상관없이 환불수수료가 공제되오니<br>
                                        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;반드시 예약센터나 공항 카운터로 신청하여 주시기 바랍니다.</li>
                                        </ul>
                                    </div>
                                </div>
                                <hr><br>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            부분 사용 항공권의 취소/환불
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        <ul style="list-style-type:disc;"> 
                                        	<li>※&nbsp; 부분 환불 가능 여부는 운임에 따라 상이하므로 운임규정을 반드시 확인 하시기 바랍니다.</li>
                                        </ul>
                                    </div>
                                </div>
                                <hr><br>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            항공권 환불 신청 접수
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        <ul style="list-style-type:disc;"> 
                                        	<li>※&nbsp; 동일 예약번호 내 일부 인원만 환불을 원할 시 예약센터로 연락해 주시기 바랍니다.</li>
                                        	<li>※&nbsp; 환불 신청 완료 후 예약 취소되며 예약 취소 후 예약 복구는 불가하오니 신중히 신청하여 주시기 바랍니다.</li>
                                        	<li>※&nbsp; 환불신청 후 영업일 기준 5~7일에 환불 처리됩니다.</li>
                                        	<li>※&nbsp; 자세한 문의는 지점 혹은 예약센터로 문의하여 주시기 바랍니다. </li>
                                        </ul>
                                    </div>
                                </div>
                                <hr><br>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>
                                            서비스 안내
                                        </h5>
                                    </div>
                                    <div class="card-body">
                                        <table>
	                                        <colgroup>
												<col style="width: 300px;"> 
												<col style="width: 300px;"> 
											</colgroup>
											<thead> 
												<tr>
													<th>연락처</th> 
													<th>업무시간 (현지 시간 기준)</th> 
												</tr> 
											</thead>
											<tbody> 
												<tr>
													<td>010-1234-5678</td> 
													<td>주중 09:30 ~ 18:00 <br>
													 주말/공휴일 14:00 ~ 18:00</td> 
												</tr> 
											</tbody>
	                                    </table>
                                    </div>
                                </div>
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
