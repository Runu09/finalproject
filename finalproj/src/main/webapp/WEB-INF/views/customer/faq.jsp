<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../inc/top.jsp"%>

<style>
<style type ="text /css ">body {
	display: block;
	margin: 8px;
}

.card-body {
	border: 0;
	line-height: 1.3;
	text-decoration: none;
	font-size: 100%;
	list-style: none;
}

h3 {
	display: block;
	position: relative;
	margin: 2px 0 0 0;
	border-top: 2px solid #c8c9ce;
	background: #ffffff;
	background-color: #f9f9f9;
	color: #010101;
	font-size: 15px;
	width: 100%;
	height: 41px;
	padding: 25px 0px 36px 16px;
	font-weight: bold;
}

p {
	margin-top: 10px;
	margin-left: 10px;
	color: black;
}

.card-header {
	margin-bottom: 10px;
}
</style>
<script type="text/javascript">
	$(function() {
		$('p').hide();

		$('h3').each(function(idx, item) {
			$('h3:eq(' + idx + ')').click(function() {
				$('p:eq(' + idx + ')').slideToggle(500);
			});
		});
	});
</script>
<body>

		<!-- breadcrumb start -->
		<section class="breadcrumb-section no-bg pt-0" id="block"
			style="width: 100%;">
			<div class="breadcrumb-content overlay-black">
				<div>
					<h2>FAQ</h2>
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
                    <div class="pro_sticky_info" data-sticky_column>
                        <div class="faq-tab">
                            <ul class="nav nav-tabs" id="top-tab" role="tablist">
                                <li class="nav-item"><a data-bs-toggle="tab" class="nav-link active" href="#general">항공권 예매</a></li>
                                <li class="nav-item"><a data-bs-toggle="tab" class="nav-link" href="#about">취소 및 변경</a></li>
                                <li class="nav-item"><a data-bs-toggle="tab" class="nav-link" href="#pricing">사이트 이용</a>
                                </li>
                                <li class="nav-item"><a data-bs-toggle="tab" class="nav-link" href="#booking">기타</a>
                                </li>
                        
                            </ul>
                        </div>
              
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="product_img_scroll" data-sticky_column>
                        <!-- FAQ 본문 -->
                        <div class="faq-content tab-content" id="top-tabContent">
                        
                            <div class="tab-pane fade show active" id="general">
                                <div>
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>
                                               항공권 예매
                                            </h5>
                                        </div>
                                        <div class="card-body">
											<h3>온에어 홈페이지에서 소아 혼자만의 항공권을 구매할 수 있나요?</h3>
											<div>
												<p>
												전체 구간에서 소아와 함께 여행하는 동반 성인이 있는 경우에만 소아 단독 예약 및 항공권 구매를 할 수 있으며, 아래의 조건을 충족해야 합니다.<br><br>
												- 동반하는 성인과 같은 여정, 같은 날짜, 같은 항공편, 같은 시간 이용<br><br>
												- 동반하는 성인과 같은 탑승 클래스 이용<br><br>
												- 동반하는 성인의 예약번호와 항공권 번호 소지<br><br>
												혼자 여행하는 어린이 고객을 위한 ‘비동반 소아(Unaccompanied Minor) 서비스’는 별도의 예약 및 구매 절차가 필요하므로 홈페이지에서<br><br>
												항공권 예약 및 구매를 할 수 없습니다. 자세한 사항은 서비스 센터로 문의해 주세요.<br>
												</p>
											</div>
											<h3>탑승할 항공편에 미리 좌석을 선택할 수 있나요?</h3>
											<div>
												<p>
													네, 가능합니다. 온에어 홈페이지, 서비스 센터, 지점, 공항 및 여행사를 통하여 '좌석 배정'을 할 수
													있습니다.<br> <br> 일반석 승객 : 항공권 구매 이후 가능 (출발 361일 전부터
													출발 48시간 전까지)<br> <br> ※ 기종 변경 시 사전 선택한 좌석과 다른
													좌석으로 배정될 수 있습니다.<br>
												</p>
											</div>
											<h3>온라인에서 예약과 발권은 언제부터 할 수 있나요?</h3>
											<div>
												<p>
													국내선은 항공편 출발 361일 전부터 40분 전까지, 국제선은 항공편 출발 361일 전부터 70분 전까지
													온라인 예약 및 발권을 할 수 있습니다.<br>
												</p>
											</div>
											<h3>홈페이지에서 예약만 하고 나중에 항공권을 구매 할 수 있나요?</h3>
											<div>
												<p>
													홈페이지에서 예약을 할 때는 예약과 동시에 항공권을 구매하셔야 합니다.<br>
												</p>
											</div>
											<h3>홈페이지에서 다른 사람의 항공권을 예약할 수 있나요?</h3>
											<div>
												<p>
													홈페이지에서 회원 본인 이외 다른 사람의 항공권도 예약할 수 있습니다. <br> <br>
													단, 예약 시 실제 탑승할 승객의 성명을 정확히 입력해 주세요.<br>
												</p>
											</div>

											<h3>탑승할 항공편에 미리 좌석을 선택할 수 있나요?</h3>
											<div>
												<p>
													네, 가능합니다. 온에어 홈페이지, 서비스 센터, 지점, 공항 및 여행사를 통하여 '좌석 배정'을 할 수
													있습니다.<br> <br> 일반석 승객 : 항공권 구매 이후 가능 (출발 361일 전부터
													출발 48시간 전까지)<br> <br> ※ 기종 변경 시 사전 선택한 좌석과 다른
													좌석으로 배정될 수 있습니다.<br>
												</p>
											</div>
										</div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="tab-pane fade" id="about">
                                <div>
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>
                                              취소 및 변경
                                            </h5>
                                        </div>
                                          <div class="card-body">
											<h3>국내선 항공권은 구매 후 온라인에서 변경할 수 있나요?</h3>
											<div>
												<p>
													홈페이지에서 구매한 왕복/편도 항공권은 홈페이지에서 변경할 수 있습니다.<br> <br>
													단, 다구간 또는 좌석 승급된 여정 등의 일부 항공권의 경우 홈페이지에서 변경이 불가할 수 있으니 서비스
													센터로 문의해 주세요.<br>

												</p>
											</div>
											<h3>태풍, 지진 등 천재지변이나 스케줄 변경으로 인한 항공기 지연 또는 결항 시 항공권 변경(취소)는 어떻게 하나요?</h3>
											<div>
												<p>
													천재지변(태풍, 지진, 폭우, 폭설 등)이나 스케줄 변경으로 인해 항공편이 지연 또는 결항 시 문자, 이메일 등을 통해 고객 안내를 실시하고 있습니다.<br><br> 
													지연 또는 결항 사항을 안내 받으신 경우에는 수수료 없이 항공권 1회 변경(변경 가능기한 국내선/국제선 +/- 1일 이내) 또는 환불이 가능합니다.<br><br>
													단, 변경가능한 일정은 지연시간에 따라 달라지며 운임차액이 발생될 수 있습니다. <br>
												</p>
											</div>
											<h3>항공권 예약시 탑승자 성명을 잘못 입력했는데 수정이 가능한가요?</h3>
											<div>
												<p>
													구매하신 항공권은 유가증권과 동일하게 취급되고 있기 때문에 항공권을 예약하실 때 입력하신 탑승자 성명을 이후에 변경하는 것은 어렵습니다. <br><br>
													따라서 탑승자를 변경하거나 가족 또는 지인 등 다른 사람에게 양도 하실 수 없습니다. <br><br>
													탑승자 명 변경이 필요하실 때에는 기존에 구매하신 항공권을 취소하신 뒤에 실제로 탑승하시는 분의 성명으로 새롭게 구매해 주셔야 합니다. <br><br>
													취소 및 재구매 과정에서는 예약등급과 잔여날짜에 따라 취소 수수료와 운임차액이 발생할 수 있습니다. <br><br>
													따라서 최초에 항공권을 예약하실 때에는 탑승자 성명을 정확하게 입력하여 주시기 바랍니다.<br>
												</p>
											</div>
											<h3>카드(신용/체크)로 구매했다가 취소하는 경우 환불은 어떻게 이루어지나요?</h3>
											<div>
												<p>
													카드(신용/체크)로 구매한 항공권을 취소하시면, 환불처리 후 취소 내역이 카드사로 접수되며 영업일 기준 5~7일(해외카드 3~4주)후에 카드사를 통해<br><br>
													환불내역 확인이 가능합니다. <br><br> 
													※ 고객의 카드 결제 날짜와 결제 시점에 따라 해당 월에는 결제가 되고 그 다음 달에 환불이 진행될 수도 있습니다. <br>
												</p>
											</div>
											<h3>실시간 계좌이체로 결제했다가 취소하는 경우 환불은 어떻게 이루어지나요?</h3>
											<div>
												<p>		
													환불 신청을 하시면 처리 완료 후 영업일 기준 2~3일 이내에  실시간 계좌이체 시 이용하신 고객님 통장으로 수수료 제외 금액이 환불됩니다.<br><br>
													※ 실시간 계좌이체의 서비스 이용 가능시간은 각 금융기관의 사정에 따라 다소 변동될 수 있으며,<br><br>
													매일 23:30 ~ 익일 01:30 에는 시스템 작업으로 인하여 계좌이체 서비스가 일시적으로 중단됩니다.<br>
												</p>
											</div>

											<h3>항공권 구매 후 결제방법 , 결제카드, 할부개월을 변경할 수 있나요?</h3>
											<div>
												<p>
													항공권 구매를 일단 완료한 뒤에는 결제방법, 결제카드, 할부개월을  변경하실 수 없습니다.<br><br> 
													변경(결제방법, 결제카드, 할부개월)하고자 하는 경우에는 기존 예약을 취소한 다음 변경을 원하는 결제방법으로<br><br>
													다시 예약하셔야 하며, 예약을 취소하실 때에는 위약금 규정에 따라 수수료가 발생할 수 있는 사항을 반드시 고려하여 주시기 바랍니다.<br>
												</p>
											</div>
										</div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="tab-pane fade" id="pricing">
                                <div>
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>
                                               사이트 이용
                                            </h5>
                                        </div>
                                          <div class="card-body">
											<h3>온에어 이용 시 불편사항은 어디에 문의해야 하나요?</h3>
											<div>
												<p>
													- 홈페이지 내 '고객의 소리' 게시판<br><br>
													- 고객센터 이메일 (Onair4@Naver.Com)<br><br>
													- 고객센터 010-1234-5678 (운영시간 11:00~15:00 주/공휴일 휴무)<br>
												</p>
											</div>
											<h3>온에어는 어떤 사이트인가요?</h3>
											<div>
												<p>
													온에어는 항공권 예매 전문 사이트입니다. <br><br>
													복잡한 어려운 항공권 예매를 편리하게 할 수 있도록 서비스를 제공하고 있습니다.<br>
												</p>
											</div>
											<h3>온에어 회원가입은 어떻게 하나요?</h3>
											<div>
												<p>
													PC를 이용하여 온에어 신규회원가입할 경우 화면 하단의 회원가입 부분클릭 후 필수입력사항을 기입해주시면 됩니다.<br>
												</p>
											</div>
											<h3>온에어 회원아이디 변경이 가능한가요?</h3>
											<div>
												<p>
													회원아이디는 변경이 불가능하므로, 변경을 원하실 경우 탈퇴 후 재가입 하셔야 합니다.<br>
												</p>
											</div>
											<h3>온에어 회원탈퇴는 어떻게 하나요?</h3>
											<div>
												<p>
													회원탈퇴는 (홈페이지> 마이페이지> 회원탈퇴) 좌측 하단 '회원탈퇴'에서 진행 가능합니다.<br><br>
													회원탈퇴 여부를 묻는 팝업은 1회 표출되며, 선택을 하실 경우 즉시 회원 탈퇴되어 원복은<br><br>
													불가능하므로 신중하게 선택해 주시기 바랍니다.<br>
												</p>
											</div>
											<h3>온에어를 통한 항공권 예매는 온라인에서만 가능한가요?</h3>
											<div>
												<p>
													현재 온라인 웹사이트를 통해서만 예매 가능합니다.<br><br>
													- 기타 전화주문, 이메일 주문은 불가능하니 이용에 참고해 주시기 바랍니다. <br>
												</p>
											</div>
										</div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="tab-pane fade" id="booking">
                                <div>
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>
                                               기타
                                            </h5>
                                        </div>
                                          <div class="card-body">
											<h3>국내선의 성수기는 언제인가요?</h3>
											<div>
												<p>
													- 1~3월 : 1/1, 1/28~2/3, 2/25~3/1<br><br>
													- 4~6월 : 5/4~5/9, 6/4~6/7<br><br>
													- 7~9월 : 7/23~8/21, 9/8~9/13<br><br>
													- 10~12월 : 10/1~10/4, 12/30~12/31<br>
												</p>
											</div>
											<h3>반려동물과 같이 여행할 수 있나요?</h3>
											<div>
												<p>
													항공사마다 애완 동물 동반에 관한 규정이 다릅니다. <br><br>
													애완 동물 동반과 관련하여 문의 사항이 있거나 요구 사항을 확인하려면 예약하고자 하는 항공사나 여행사에 직접 연락해 보는 것이 좋습니다.<br>
												</p>
											</div>
											<h3>임산부도 비행기를 탈 수 있나요?</h3>
											<div>
												<p>
													임신 32주 미만은 의사로부터 항공여행 금지를 권고받지 않았다면 일반인과 다름없이 비행기를 탑승하고 여행하실 수 있습니다.<br><br>
													임신 32주 이상~37주 미만은 항공여행 적합여부와 예상분만일이 기재되어 있는 의사소견서를 지참해주셔야 탑승이 가능하며,<br><br>
													탑승일 기준 7일 이내 발급된 서류여야 합니다.<br><br>
													임신 37주 이상은 임산부와 태아의 건강을 위해 비행기 탑승이 제한되고 있으니 양해를 부탁드립니다.<br>
												</p>
											</div>
											<h3>개인 정보는 안전한가요?</h3>
											<div>
												<p>
													법적인 의무가 발생하는 경우나 개인 정보 취급 방침에 따른 경우가 아닌 이상, <br><br>
													온에어는 고객분들의 소중한 개인 정보, 위치 정보, 쿠키, IP 정보 등을 타인에게 제공 또는 판매하지 않습니다.<br>
												</p>
											</div>
											<h3>온에어에 판매사로 참여하는 방법은 무엇인가요?</h3>
											<div>
												<p>
													온에어는 직접 항공권을 발권할 수 있는 시스템과 고객관리서비스를 운영하고, 항공편 스케줄, 요금, 예약 정보 등의 데이터를 실시간으로 통신할 수 있는<br><br>
													기술적인 요건을 갖춘 업체에 한하여 제휴를 진행할 수 있습니다.<br>
												</p>
											</div>
											<h3>온에어에 광고를 집행하는 방법은 무엇인가요?</h3>
											<div>
												<p>
													온에어 광고정책에 따라 일부 업종(여행사, 항공사 등)은 광고집행에 제한이 있을 수 있습니다.<br><br>
													광고 관련 자세한 내용은 아래의 이메일 주소로 문의해주세요.<br><br>
													- 온에어 이메일 (Onair4@Naver.Com)<br>
												</p>
											</div>
										</div>
                                    </div>
                                </div>
                            </div>
                        </div>
						<!-- FAQ 본문 끝 -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- section end-->
	<%@include file="../inc/footer.jsp"%>