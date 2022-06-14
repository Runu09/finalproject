<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>

<script type="text/javascript">
	$(function(){	
		$('p').hide();
	
		$('h3').each(function(idx, item){
			$('h3:eq('+idx+')').click(function(){
					$('p:eq('+idx+')').slideToggle(500); 
			});
		});
		
		$(function(){
			$('.row').tabs();
		});
	});
</script>
<style>
<
style type ="text /css ">body {
	display: block;
	margin: 8px;
}

#accordion {
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
								<li class="nav-item"><a data-bs-toggle="tab"
									class="nav-link" href="#tabs-2">항공권 예매</a></li>
								<li class="nav-item"><a data-bs-toggle="tab"
									class="nav-link" href="#항공권 변경">취소 및 변경</a></li>
								<li class="nav-item"><a data-bs-toggle="tab"
									class="nav-link" href="#항공권 취소&환불">서비스 안내</a></li>
								<li class="nav-item"><a data-bs-toggle="tab"
									class="nav-link" href="#운임 안내">기타</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-9">

					<div class="faq-content tab-content" id="top-tabContent">
						<div class="tab-pane fade show active">
							<div>
								<div class="card">

									<div id="tabs-1">
										<div class="card-header">
											<h5>항공권 예매</h5>
										</div>
										<!-- FAQ 시작 -->
										<div id="accordion">
											<h3>국내선 항공권은 구매 후 온라인에서 변경할 수 있나요?</h3>
											<div>
												<p>
													홈페이지에서 구매한 왕복/편도 항공권은 홈페이지에서 변경할 수 있습니다.<br> <br>
													단, 다구간 또는 좌석 승급된 여정 등의 일부 항공권의 경우 홈페이지에서 변경이 불가할 수 있으니 서비스
													센터로 문의해 주세요.<br>

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
										</div>
										<h3>탑승할 항공편에 미리 좌석을 선택할 수 있나요?</h3>
										<div>
											<p>
												네, 가능합니다. 온에어 홈페이지, 서비스 센터, 지점, 공항 및 여행사를 통하여 '좌석 배정'을 할 수
												있습니다.<br> <br> 일반석 승객 : 항공권 구매 이후 가능 (출발 361일 전부터
												출발 48시간 전까지)<br> <br> ※ 기종 변경 시 사전 선택한 좌석과 다른 좌석으로
												배정될 수 있습니다.<br>
											</p>
										</div>
									</div>
									<!-- FAQ 끝 -->
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