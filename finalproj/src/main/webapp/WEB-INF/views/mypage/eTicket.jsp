<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/es6-promise@4/dist/es6-promise.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/es6-promise@4/dist/es6-promise.auto.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js"></script>
<!-- <script type="text/javascript" src="../resources/newni/jquery-1.3.2.min.js"></script> -->  
<script type="text/javascript" src="../resources/newni/jquery-barcode.js"></script>  
<title>eTicket</title>
<style>
#mySidenav a {
	position: absolute;
	left: -80px;
	transition: 0.3s;
	padding: 15px;
	width: 100px;
	text-decoration: none;
	font-size: 15px;
	color: white;
	border-radius: 0 5px 5px 0;
}

#mySidenav a:hover {
	left: 0;
}

#imgSave {
	top: 535px;
	background-color: #2196F3;
}

#pdfSave {
	top: 595px;
	background-color: #f44336;
}

#print {
	top: 655px;
	background-color: #555
}

.btn-group {
	bottom: 150px;
	position: absolute;
	left: 300px;
}

.btn-group button {
	background-color: #4CAF50; /* Green background */
	border: 1px solid green; /* Green border */
	color: white; /* White text */
	padding: 10px 24px; /* Some padding */
	cursor: pointer; /* Pointer/hand icon */
	float: left; /* Float the buttons side by side */
}

/* Clear floats (clearfix hack) */
.btn-group:after {
	content: "";
	clear: both;
	display: table;
}

.btn-group button:not (:last-child ) {
	border-right: none; /* Prevent double borders */
}

/* Add a background color on hover */
.btn-group button:hover {
	background-color: #3e8e41;
}

@media print {
	.noprint {
		display: none;
	}
}
</style>
<meta name="robots" content="noindex,nofollow" />
<!-- <meta name="viewport" content="width=device-width; initial-scale=1.0;" /> -->


</head>
<body style="background-color: silver">

<div id="pdfDi">
<!--------------------------- -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable">
	<a id="target" style="display: none"></a>
		<tr>
			<td height="20"></td>
		</tr>
		<tr>
			<td>
				<table width="600" border="0" cellpadding="0" cellspacing="0"
					align="center" class="fullTable" bgcolor="#ffffff"
					style="border-radius: 10px 10px 0 0;">
					<tr class="hiddenMobile">
						<td height="30"></td>
					</tr>
					<tr class="visibleMobile">
						<td height="20"></td>
					</tr>

					<tr>
						<td>
							<table width="480" border="0" cellpadding="0" cellspacing="0"
								align="center" class="fullPadding">
								<tbody>
									<tr>
										<td>
											<table width="220" border="0" cellpadding="0" cellspacing="0"
												align="left" class="col">
												<tbody>
													<tr>
														<td align="left"><img 
															src="../resources/newni/logo.png"
															alt="logo" border="0" style="width: 50%"/><span style="font-size: 15px;letter-spacing: -2px;color: #565656;">e-티켓 확인증</span></td>
													</tr>
													<tr class="hiddenMobile">
														<td height="40"></td>
													</tr>
													<tr class="visibleMobile">
													</tr>
												</tbody>
											</table>
											<table width="220" border="0" cellpadding="0" cellspacing="0"
												align="right" class="col">
												<tbody>
													<tr class="visibleMobile">
														<td height="20"><div id="bcTarget" style="margin-left: 90px;">바코드출력</div></td>
													</tr>
												</tbody>
											</table>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	
	<!-------------------------------------------------------------  -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable">
		<tbody>
			<tr>
				<td>
					<table width="600" border="0" cellpadding="0" cellspacing="0"
						align="center" class="fullTable" bgcolor="#ffffff">
						<tbody>
							<tr>
							<tr class="hiddenMobile">
							</tr>
							<tr class="visibleMobile">
							</tr>
							<tr>
								<td>
									<table width="480" border="0" cellpadding="0" cellspacing="0"
										align="center" class="fullPadding">
										<tbody>
										<tr>
												<td height="1" colspan="4"
													style="border-bottom: 1px solid #e4e4e4"></td>
											</tr>
												<tr>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #ff0000; line-height: 18px; vertical-align: top; padding: 4px 0; padding-left: 10px; background-color: aliceblue; color: #565656;"
														class="article"><small>승객성명</small></td>
													<td colspan="2"
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 4px 0; padding-left: 100px; background-color: aliceblue;"><small>항공권번호</small></td>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #1e2b33; line-height: 18px; vertical-align: top; padding: 4px 0; padding-right: 10px; background-color: aliceblue;"
														align="right"><small>예약번호</small></td>
												</tr>
<!-- 											<tr>
												<td height="1" colspan="4"
													style="border-bottom: 1px solid #e4e4e4"></td>
											</tr>
 -->												<tr>
													<td
														style="font-size: 10px; font-family: 'Open Sans', sans-serif; color: #ff0000; line-height: 18px; vertical-align: top; padding: 5px 0; padding-left: 10px; color: #565656;"
														class="article">${depInfo.name}</td>
													<td colspan="2"
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 5px 0; padding-left: 100px;"><small>${depInfo.flightBNum}<c:if test="${kind eq 1 }">/${arrInfo.flightBNum}</c:if></small></td>
													<td
														style="font-size: 10px; font-family: 'Open Sans', sans-serif; color: #1e2b33; line-height: 18px; vertical-align: top; padding: 5px 0; padding-right: 10px;"
														align="right">${depInfo.bookingNum}</td>
												</tr>
													<tr>
												<td height="1" colspan="4"
													style="border-bottom: 1px solid #e4e4e4"></td>
											</tr>
										
										</tbody>
									</table>
								</td>
							</tr>
							<tr>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	<!-- /Header -->
	<!-- Order Details -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable">
		<tbody>
			<tr>
				<td>
					<table width="600" border="0" cellpadding="0" cellspacing="0"
						align="center" class="fullTable" bgcolor="#ffffff">
						<tbody>
							<tr>
							<tr class="hiddenMobile">
								<!-- <td height="60"></td> -->
							</tr>
							<tr class="visibleMobile">
								<td height="40"></td>
							</tr>
							<tr>
								<td>
									<table width="480" border="0" cellpadding="0" cellspacing="0"
										align="center" class="fullPadding">
										<tbody>
										<tr>
												<td height="1" colspan="4"
													style="border-bottom: 1px solid #e4e4e4"></td>
											</tr>
												<tr>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #ff0000; line-height: 18px; vertical-align: top; padding: 5px 0; background-color: aliceblue; padding-left: 10px; color:#565656"
														class="article"><small>출발</small></td>
													<td colspan="2"
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 5px 0; background-color: aliceblue; padding-left: 10px;"><small>도착</small></td>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #1e2b33; line-height: 18px; vertical-align: top; padding: 5px 0; background-color: aliceblue; padding-right: 10px; padding-right: 65px; width: 85px;"
														align="right"><small style="margin-right: 30px">편명</small></td>
												</tr>
												<tr>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #ff0000; line-height: 18px; vertical-align: top; padding: 5px 0; width: 200px; padding-top: 10px;"
														class="article" >
														<p style="margin: 0; color: #00518b; font-size: 14px; font-weight: 1000; margin-left: 10px;">${depInfo.depCityCode}</p>
														<p style="margin: 0;font-size: 10px;font-weight: bold;color: #565656;letter-spacing: -0.5px; margin-left: 10px;">${depInfo.depAirportNm} (${depInfo.depCityEng})</p>
														<p style="margin: 0;margin-left: 10px;font-weight: 1000;color: #1f1f1f;font-size: 12px;">${depInfo.depPlandTime} ${depTime}</p>
														</td>
													<td colspan="2"
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 5px 0; padding-top: 10px; ">
														<p style="margin: 0; color: #00518b; font-size: 14px; font-weight: 1000; margin-left: 10px;">${depInfo.arrCityCode}</p>
														<p style="margin: 0;font-size: 10px;font-weight: bold;color: #565656;letter-spacing: -0.5px; margin-left: 10px;">${depInfo.arrAirportNm} (${depInfo.arrCityEng})</p>
														<p style="margin: 0;margin-left: 10px;font-weight: 1000;color: #1f1f1f;font-size: 12px;">${depInfo.arrPlandTime} ${arrTime}</p>
													</td>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #1e2b33; line-height: 18px; vertical-align: top; padding: 5px 0; padding-right: 50px; padding-top: 10px;"
														align="right">
															<p style="margin: 0; color: #00518b; font-size: 14px; font-weight: 1000; margin-right: 13px;">${depInfo.vihicleId}</p>
															<p style="margin: 0;font-size: 10px;font-weight: bold;color: #565656;letter-spacing: -0.5px;margin-right: -4px;">Operated by EA</p>
															<p style="margin: 0;margin-left: 10px;font-weight: 1000;color: #1f1f1f;font-size: 12px;"><img alt="" src="" width="80%;" style="margin-left: 25px;" id="depImg"></p>
														</td>
												</tr>
													<tr>
												<td height="1" colspan="4"
													style="border-bottom: 1px solid #e4e4e4"></td>
											</tr>
											<tr>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #ff0000; line-height: 18px; vertical-align: top; padding: 5px 0; width: 200px; "
														class="article" >
														<p style="margin: 0; color: #565656; font-size: 10px; margin-left: 10px;">예약등급 : 일반석</p>
														<p style="margin: 0;margin-left: 10px;color: #565656;font-size: 10px;">비행시간 : ${depInfo.flightTime }분</p>
														</td>
													<td colspan="2"
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 5px 0; ">
														<p style="margin: 0; color: #565656; font-size: 10px; margin-left: 10px;">좌석번호 : ${depInfo.seatName}</p>
														<p style="margin: 0;margin-left: 10px;color: #565656;font-size: 10px;">항공권 유효기간 : 3개월</p>
													</td>
												</tr>
													<tr>
												<td height="1" colspan="4"
													style="border-bottom: 1px solid #e4e4e4"></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr>
								<!-- <td height="20"></td> -->
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	<c:if test="${kind eq 1 }">
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable">
		<tbody>
			<tr>
				<td>
					<table width="600" border="0" cellpadding="0" cellspacing="0"
						align="center" class="fullTable" bgcolor="#ffffff">
						<tbody>
							<tr>
							<tr class="hiddenMobile">
								<!-- <td height="60"></td> -->
							</tr>
							<tr class="visibleMobile">
							</tr>
							<tr>
								<td>
									<table width="480" border="0" cellpadding="0" cellspacing="0"
										align="center" class="fullPadding">
										<tbody>
												<tr>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #ff0000; line-height: 18px; vertical-align: top; padding: 5px 0; background-color: aliceblue; padding-left: 10px; color:#565656"
														class="article"><small>출발</small></td>
													<td colspan="2"
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 5px 0; background-color: aliceblue; padding-left: 10px;"><small>도착</small></td>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #1e2b33; line-height: 18px; vertical-align: top; padding: 5px 0; background-color: aliceblue; padding-right: 10px; padding-right: 65px; width: 85px;"
														align="right"><small style="margin-right: 30px">편명</small></td>
												</tr>
												<tr>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #ff0000; line-height: 18px; vertical-align: top; padding: 5px 0; width: 200px; padding-top: 10px;"
														class="article" >
														<p style="margin: 0; color: #00518b; font-size: 14px; font-weight: 1000; margin-left: 10px;">${arrInfo.depCityCode}</p>
														<p style="margin: 0;font-size: 10px;font-weight: bold;color: #565656;letter-spacing: -0.5px; margin-left: 10px;">${arrInfo.depAirportNm} (${arrInfo.depCityEng})</p>
														<p style="margin: 0;margin-left: 10px;font-weight: 1000;color: #1f1f1f;font-size: 12px;">${arrInfo.depPlandTime} ${depTime2}</p>
														</td>
													<td colspan="2"
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 5px 0;  padding-top: 10px;">
														<p style="margin: 0; color: #00518b; font-size: 14px; font-weight: 1000; margin-left: 10px;">${arrInfo.arrCityCode}</p>
														<p style="margin: 0;font-size: 10px;font-weight: bold;color: #565656;letter-spacing: -0.5px; margin-left: 10px;">${arrInfo.arrAirportNm} (${arrInfo.arrCityEng})</p>
														<p style="margin: 0;margin-left: 10px;font-weight: 1000;color: #1f1f1f;font-size: 12px;">${arrInfo.arrPlandTime} ${arrTime2}</p>
													</td>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #1e2b33; line-height: 18px; vertical-align: top; padding: 5px 0; padding-right: 50px; padding-top: 10px;"
														align="right">
															<p style="margin: 0; color: #00518b; font-size: 14px; font-weight: 1000; margin-right: 13px;">${arrInfo.vihicleId}</p>
															<p style="margin: 0;font-size: 10px;font-weight: bold;color: #565656;letter-spacing: -0.5px;margin-right: -4px;">Operated by EA</p>
															<p style="margin: 0;margin-left: 10px;font-weight: 1000;color: #1f1f1f;font-size: 12px;"><img alt="" src="" width="80%;" style="margin-left: 25px;" id="arrImg"></p>
														</td>
												</tr>
													<tr>
												<td height="1" colspan="4"
													style="border-bottom: 1px solid #e4e4e4"></td>
											</tr>
											<tr>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #ff0000; line-height: 18px; vertical-align: top; padding: 5px 0; width: 200px;"
														class="article" >
														<p style="margin: 0; color: #565656; font-size: 10px; margin-left: 10px;">예약등급 : 일반석</p>
														<p style="margin: 0;margin-left: 10px;color: #565656;font-size: 10px;">비행시간 : ${arrInfo.flightTime}분</p>
														</td>
													<td colspan="2"
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 5px 0; ">
														<p style="margin: 0; color: #565656; font-size: 10px; margin-left: 10px;">좌석번호 : ${arrInfo.seatName}</p>
														<p style="margin: 0;margin-left: 10px;color: #565656;font-size: 10px;">항공권 유효기간 : 3개월</p>
													</td>
												</tr>
													<tr>
												<td height="1" colspan="4"
													style="border-bottom: 1px solid #e4e4e4"></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<tr>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	</c:if>
	<!-- /Order Details -->
	<!-- Total -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable">
		<tbody>
			<tr>
				<td>
					<table width="600" border="0" cellpadding="0" cellspacing="0"
						align="center" class="fullTable" bgcolor="#ffffff">
						<tbody>
							<tr>
								<td>
									<!-- Table Total -->
									<table width="480" border="0" cellpadding="0" cellspacing="0"
										align="center" class="fullPadding">
										<tbody>
											<tr>
												<td
													style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #000; line-height: 22px; vertical-align: top; text-align: left;">
													<ol style="padding: 0;font-size: 7px;line-height: 1.5;list-style: inside;    color: #565656;">
														<li>스케줄 및 기종은 부득이한 사유로 사전 예고없이 변경될 수 있습니다.</li>
														<li>할인 또는 무임 항공권의 경우 예약 등급에 따라 마일리지 적립률이 상이하거나 마일리지가 제공되지 않습니다.</li>
													</ol>
												</td>
												<td
													style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #000; line-height: 22px; vertical-align: top; text-align: right;">
												</td>
											</tr>
										</tbody>
									</table> <!-- /Table Total -->

								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	<!-- /Total -->
	<!-- Information -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable">
		<tbody>
			<tr>
				<td>
					<table width="600" border="0" cellpadding="0" cellspacing="0"
						align="center" class="fullTable" bgcolor="#ffffff">
						<tbody>
							<tr>
							<tr class="hiddenMobile">
							</tr>
							<tr class="visibleMobile">
								<td height="40"></td>
							</tr>
							<tr>
								<td>
								</td>
							</tr>
	</table>
	<!-- /Information -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable">

		<tr>
			<td>
				<table width="600" border="0" cellpadding="0" cellspacing="0"
					align="center" class="fullTable" bgcolor="#ffffff"
					style="border-radius: 0 0 10px 10px;">
					<tr>
						<td>
							<table width="480" border="0" cellpadding="0" cellspacing="0"
								align="center" class="fullPadding">
								<tbody>
									<tr>
										<td
											style="font-size: 12px; color: #5b5b5b; font-family: 'Open Sans', sans-serif; line-height: 18px; vertical-align: top; text-align: left;">
											On Air
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
					<tr class="spacer">
						<td height="50"></td>
					</tr>

				</table>
			</td>
		</tr>
		<tr>
			<td height="20"></td>
		</tr>
	</table>
	</td>
	</tr>
	</tbody>
	</table>
	</div>
	<div id="mySidenav" class="sidenav">
	  <a href="#" id="imgSave" class="noprint">이미지로 저장</a>
	  <a href="#" id="pdfSave" class="noprint">PDF로 저장</a>
	  <a href="#" id="print" class="noprint">e-티켓 출력</a>
	</div>
	<script type="text/javascript">
	
		var doc = new jsPDF();
		var pdfHandlers = {
			'#editor' : function (element, renderer) {
			return true;
			}	
		};
		$("#imgSave").on('click', function(e) {
			html2canvas(document.querySelector("#pdfDiv")).then(canvas => {
			    var el = document.getElementById("target");
				el.href = canvas.toDataURL("image/png");
				el.download = getUUID()+'.png';
				el.click();
			});
		});
		$("#pdfSave").click(function(){
			html2canvas(document.querySelector("#pdfDiv")).then(canvas => {
			    var el = document.getElementById("target");
				var imgData = canvas.toDataURL("image/png");
				var doc = new jsPDF('p','mm','b5');
				doc.addImage(imgData, 'png', 0,0);
				doc.save( getUUID()+'.pdf');
			});
		});
		$("#print").click(function(){
             window.print();     
		});
		$("#bcTarget").barcode("${memberNum}", "codabar",{barWidth:1, barHeight:30});
		console.log("${arrInfo}");
		function getUUID() { // UUID v4 generator in JavaScript (RFC4122 compliant)
			  return 'xxxxxxxxxxxx4xxxyxxxxxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
			    var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 3 | 8);
			    return v.toString(16);
			  });
			}
		// 항공사 이미지
		switch("${depInfo.vihicleId}".substring(0,2)){
		case "OZ" :
			$("#depImg").attr("src","../resources/newni/asiana.png");
			break;
		case "BX" :
			$("#depImg").attr("src","../resources/newni/airBusan.png");
			break;
		case "RS" :
			$("#depImg").attr("src","../resources/newni/airSeoul.png");
			break;
		case "TW" :
			$("#depImg").attr("src","../resources/newni/tWay.png");
			break;
		case "7C" :
			$("#depImg").attr("src","../resources/newni/jejuAir.png");
			break;
		case "HG" :
			$("#depImg").attr("src","../resources/newni/hiAir.png");
			break;
		case "ZE" :
			$("#depImg").attr("src","../resources/newni/eStar.png");
			break;
		case "KE" :
			$("#depImg").attr("src","../resources/newni/koreanAir.png");
			break;
		case "FG" :
			$("#depImg").attr("src","../resources/newni/flyGangwon.png");
			break;
		case "KW" :
			$("#depImg").attr("src","../resources/newni/koreaExpressAir.png");
			break;
		}
		
		switch("${arrInfo.vihicleId}".substring(0,2)){
		case "OZ" :
			$("#arrImg").attr("src","../resources/newni/asiana.png");
			break;
		case "BX" :
			$("#arrImg").attr("src","../resources/newni/airBusan.png");
			break;
		case "RS" :
			$("#arrImg").attr("src","../resources/newni/airSeoul.png");
			break;
		case "TW" :
			$("#arrImg").attr("src","../resources/newni/tWay.png");
			break;
		case "7C" :
			$("#arrImg").attr("src","../resources/newni/jejuAir.png");
			break;
		case "HG" :
			$("#arrImg").attr("src","../resources/newni/hiAir.png");
			break;
		case "ZE" :
			$("#arrImg").attr("src","../resources/newni/eStar.png");
			break;
		case "KE" :
			$("#arrImg").attr("src","../resources/newni/koreanAir.png");
			break;
		case "FG" :
			$("#arrImg").attr("src","../resources/newni/flyGangwon.png");
			break;
		case "KW" :
			$("#arrImg").attr("src","../resources/newni/koreaExpressAir.png");
			break;
		}	
	</script>
</body>
</html>