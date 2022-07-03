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

<script type="text/javascript" src="../resources/newni/jquery-barcode.js"></script>  

<!-- Bootstrap css -->
<link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css">

<!-- Theme css -->
<link rel="stylesheet" type="text/css" href="../assets/css/color2.css">
<link href="../assets/css/eTicket.css" rel="stylesheet" type="text/css">



<title>eTicket</title>


<meta name="robots" content="noindex,nofollow" />
<!-- <meta name="viewport" content="width=device-width; initial-scale=1.0;" /> -->


</head>
<body style="background-color: silver">
<div id="pdfDiv">

<!------------------------------------상단부-->
	<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable">
	<a id="target" style="display: none"></a>
	<tr class="visibleMobile">
		<td height="40"></td>
	</tr>
		<tr>
			<td>
				<table width="600" border="0" cellpadding="0" cellspacing="0" align="center" 
				class="fullTable" bgcolor="#ffffff" style="border-radius: 10px 10px 0 0;">
				
					<tr>
						<td>
							<table width="480" border="0" cellpadding="0" cellspacing="0"
								align="center" class="fullPadding">
								<tbody>
									<tr>
										<td>
											<table width="220" border="0" cellpadding="0" cellspacing="0" align="left" class="col">
												<tbody>
													<!-------- 로고 ---------->
													<tr>
														<td align="left"> 
															<img =  src="../assets/images/main2.png" alt="looginpage" alt="logo" border="0" style="width: 50%"/>
															<span id="title">e-티켓 확인증</span>
														</td>
													</tr>
													<!-------- 로고 ---------->
												</tbody>
											</table>
											<table width="220" border="0" cellpadding="0" cellspacing="0"
												align="right" class="col">
												<tbody>
												<!-------- 바코드 ---------->
													<tr class="visibleMobile">
														<td height="20">
														<div id="bcTarget" style="margin-left: 90px;">바코드출력</div>
														</td>
													</tr>
													<!-------- 바코드 ---------->
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
<!-- ---------------------------------------------------------- -->	
<!-- ---------------------------------------------------------- -->	
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
								<!------------- 첫번째 테이블 승객정보--------------------- -->
									<table width="480" border="0" cellpadding="0" cellspacing="0" align="center" class="fullPadding">
										<tbody>
											<tr>
												<td height="1" colspan="4" style="border-bottom: 1px solid #e4e4e4"></td>
											</tr>
												<tr>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #ff0000; line-height: 18px; vertical-align: top; padding: 4px 0; padding-left: 10px; background-color: aliceblue; color: #565656;"
														class="article"><small>승객성명</small></td>
													<td colspan="2"
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 4px 0; padding-left: 100px; background-color: aliceblue;">
														<small>좌석번호</small></td>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #1e2b33; line-height: 18px; vertical-align: top; padding: 4px 0; padding-right: 10px; background-color: aliceblue;"
														align="right"><small>예매번호</small></td>
												</tr>
												<tr>
													<td
														style="font-size: 10px; font-family: 'Open Sans', sans-serif; color: #ff0000; line-height: 18px; vertical-align: top; padding: 5px 0; padding-left: 10px; color: #565656;"
														class="article">name</td>
													<td colspan="2"
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 5px 0; padding-left: 100px;">
														<small>좌석번호</small></td>
													<td
														style="font-size: 10px; font-family: 'Open Sans', sans-serif; color: #1e2b33; line-height: 18px; vertical-align: top; padding: 5px 0; padding-right: 10px;"
														align="right">예매번호</td>
												</tr>
												<tr>
												<td height="1" colspan="4" style="border-bottom: 1px solid #e4e4e4"></td>
												</tr>
										
										</tbody>
									</table>
									<!-- 첫번째 테이블 승객정보----------------------- -->
								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
<!-- ---------------------------------------------------------- -->	
	<!-- /Header -->
	<!-- Order Details -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable">
		<tbody>
			<tr>
				<td>
					<table width="600" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable" bgcolor="#ffffff">
						<tbody>
							<tr>
							<tr class="visibleMobile">
								<td height="40"></td>
							</tr>
							<tr>
								<td>
									<table width="480" border="0" cellpadding="0" cellspacing="0" align="center" class="fullPadding">
										<tbody>
											<tr>
												<td height="1" colspan="4" style="border-bottom: 1px solid #e4e4e4"></td>
											</tr>
											<!---------- 2번째 테이블 출발/도착------------ -->
												<tr>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #ff0000; line-height: 18px; vertical-align: top; padding: 5px 0; background-color: aliceblue; padding-left: 10px; color:#565656"
														class="article"><small>출발</small></td>
													<td colspan="2"
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 5px 0; background-color: aliceblue; padding-left: 10px;">
														<small>도착</small></td>
														
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #1e2b33; line-height: 18px; vertical-align: top; padding: 5px 0; background-color: aliceblue; padding-right: 10px; 
														padding-right: 65px; " align="right"><small>편명</small></td>
													
												</tr>
												<tr>
													<td style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #ff0000; 
													line-height: 18px; vertical-align: top; padding: 5px 0; width: 200px; padding-top: 10px;" class="article" >
														<p id="t2-p1">출발1</p>
														<p id="t2-p2">출발2</p>
														<p id="t2-p3">출발3</p>
														</td>
													<td colspan="2"
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 5px 0; padding-top: 10px; ">
														<p id="t2-p1">도착1</p>
														<p id="t2-p2">도착2</p>
														<p id="t2-p3">도착3</p>
													</td>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #1e2b33; line-height: 18px; vertical-align: top; padding: 5px 0; padding-right: 50px; padding-top: 10px;"
														align="right">
															<p id="t2-p1" style="margin-right: 13px;">편명</p>
															<p id="t2-p2" style="margin-right: -4px;">Operated by EA</p>
															<p id="t2-p3"><img alt="" src="" width="80%;" style="margin-left: 25px;" id="depImg"></p>
														</td>
												</tr>
												<tr>
													<td height="1" colspan="4" style="border-bottom: 1px solid #e4e4e4"></td>
												</tr>
												<!---------- 2번째 테이블 출발/도착------------ -->
										
												<!------- 3번째 테이블 그외 정보들 ---------->
												<tr>
													<td
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #ff0000; line-height: 18px; vertical-align: top; padding: 5px 0; width: 200px; "
														class="article" >
														<p id="t3-p1">소아 인원수 : 1명</p>
														<p id="t3-p2">성인 인원수 : 2명</p>
														</td>
													<td colspan="2"
														style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #646a6e; line-height: 18px; vertical-align: top; padding: 5px 0; ">
														<p id="t3-p1">예매일자 : 1일</p>
														<p id="t3-p2">예매금액 : 11원</p>
													</td>
												</tr>
												<tr>
													<td height="1" colspan="4" style="border-bottom: 1px solid #e4e4e4"></td>
												</tr>
												<!------- 3번째 테이블 그외 정보들 ---------->
										</tbody>
									</table>
								</td>
							</tr>
							<tr>
								 <td height="20"></td> 
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	
	<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable">
		<tbody>
			<tr>
				<td>
					<table width="600" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable" bgcolor="#ffffff">
						<tbody>
							<tr>
								<td>
									<!-----안내문구------->
									<table width="480" border="0" cellpadding="0" cellspacing="0" align="center" class="fullPadding">
										<tbody>
											<tr>
												<td style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #000; line-height: 22px; vertical-align: top; text-align: left;">
													<ol style="padding: 0;line-height: 1.5;">
														<li style="font-size: 12px; ">- 스케줄 및 기종은 부득이한 사유로 사전 예고없이 변경될 수 있습니다.</li>
														
													</ol>
												</td>
												<td
													style="font-size: 12px; font-family: 'Open Sans', sans-serif; color: #000; line-height: 22px; vertical-align: top; text-align: right;">
												</td>
											</tr>
										</tbody>
									</table> 
									<!-----안내문구------->

								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	
	<!-- 공백 -->
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
						
	</table>
	<!-- 공백 -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		align="center" class="fullTable">

		<tr>
			<td>
				<table width="600" border="0" cellpadding="0" cellspacing="0" align="center" class="fullTable" bgcolor="#ffffff"
					style="border-radius: 0 0 10px 10px;">
					<tr>
						<td>
							<table width="480" border="0" cellpadding="0" cellspacing="0"align="center" class="fullPadding">
								<tbody>
									<tr>
										<td>
										<div id="div-bt">
										<a href="#" data-bs-toggle="modal" data-bs-target="#delete-account" class="btn btn-solid"
										class="noprint"  id="imgSave">이미지 저장</a>
										<a href="#" data-bs-toggle="modal" data-bs-target="#delete-account" class="btn btn-solid"
										class="noprint"  id="print">e-티켓 출력</a>
										</div>
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

	<script type="text/javascript">
		$("#imgSave").on('click', function(e) {
			html2canvas(document.querySelector("#pdfDiv")).then(canvas => {
			    var el = document.getElementById("target");
				el.href = canvas.toDataURL("image/png");
				el.download = getUUID()+'.png';
				el.click();
			});
		});
	
		$("#print").click(function(){
             window.print();     
		});
		
		//바코드
		$("#bcTarget").barcode("${memberNum}", "codabar",{barWidth:1, barHeight:30});
		console.log("${arrInfo}");
		
		function getUUID() { // UUID v4 generator in JavaScript (RFC4122 compliant)
			  return 'xxxxxxxxxxxx4xxxyxxxxxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
			    var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 3 | 8);
			    return v.toString(16);
			  });
			}
	
	</script>
</body>
</html>