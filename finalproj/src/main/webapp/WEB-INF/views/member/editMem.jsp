<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>editMem.jsp</title>
</head>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript"
	src="<c:url value='/assets/js/jquery-3.6.0.min.js'/>"></script>
<script type="text/javascript"
	src='<c:url value="/assets/js/member.js"/>'></script>
<script type="text/javascript">
	function execDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				var addr = '';
				var extraAddr = '';

				if (data.userSelectedType === 'R') {
					addr = data.roadAddress;
				} else {
					addr = data.jibunAddress;
				}

				document.getElementById('postcode').value = data.zonecode;
				document.getElementById("address").value = addr;
				document.getElementById("detailAddress").focus();
			}
		}).open();
	}

	$(function() {
		$('form[name=memEdit]').submit(function() {
					if ($("#memPwd").val().length < 1) {
						alert("비밀번호를 입력하세요");
						$("#memPwd").focus();
						event.preventDefault();
					} else if (!validate_tel($('#mTel2').val())
							|| !validate_tel($('#mTel3').val())) {
						alert("전화번호는 숫자만 가능합니다");
						$("#mTel2").focus();
						event.preventDefault();
					}
		});
	});
</script>
<style>
.form-control {
	width: 300px;
}

#mTel1, #mTel2, #mTel3 {
	width: 150px;
	margin-right: 10px;
}

#mEmail2 {
	width: 265px;
	margin-left: 20px;
}

#mEmail3{
	width: 265px;
	margin-left: 10px;
}
#mEmail1 {
	width: 180px;
}

.col-1 {
    margin-left: 7px;
    width: 0px;
}
.error{
	color: red;
}
</style>

<body>
<!-- section start-->
<section class="small-section dashboard-section bg-inner" data-sticky_parent>
	<div class="container">
		<div class="row">
		<%@include file="../mypage/mypageMenu.jsp"%>
			<div class="col-lg-9">
				<div class="product_img_scroll" data-sticky_column>
					<div class="faq-content tab-content" id="top-tabContent">
						<div class="dashboard-box">
							<div class="dashboard-title">
								<h4>edit your profile</h4>
							</div><br>
						<!-- 회원정보 수정 -->
							<form name="memEdit" method="post" action="<c:url value='/member/editMem.do'/>">
								<div class="dashboard-detail">
									<ul>
										<li>
											<div class="details">
												<div class="left">
													<h6>아이디</h6>
												</div>
												<div class="right">			
												 <input class="form-control" type="userId" id="memId" name="memId"
												 	 value="${sessionScope.memId }" placeholder="${sessionScope.memId }" readonly="readonly">
												</div>
											</div>
										</li>
										<li>
											<div class="details">
												<div class="left">
													<h6>이름</h6>
												</div>
												<div class="right">
												 	<input class="form-control" type="text" name="memName"
															placeholder="${sessionScope.memName }" 
															readonly="readonly" value="${vo.memName }">
												</div>
											</div>
										</li>
										<li>
											<div class="details">
												<div class="left">
													<h6>비밀번호</h6>
												</div>
												<div class="right">
													<input class="form-control" type="password" name="memPwd"
														id="memPwd" required="" placeholder="password"><span class="error1"></span><br>
												</div>
											</div>
										</li>
										<li>
											<div class="details">
												<div class="left">
													<h6>생년월일</h6>
												</div>
												<div class="right">
													<input class="form-control" type="text" name="mBirthday"
														placeholder="${vo.MBirthday }" readonly="readonly">
												</div>
											</div>
										</li>
										<li>
											<div class="details">
												<div class="left">
													<h6>우편번호</h6>
												</div>
												<div class="right">
													<input class="form-control" type="text"
														readonly="readonly" name="mZipcode" placeholder="${vo.MZipcode }"
														style="width: 151px; position: absolute;" id="postcode"
														value="${vo.MZipcode }">
													
													<input class="btn btn-solid" type="button"
														value="우편번호 찾기" onclick="execDaumPostcode()"
														style="position: relative; left: 164px; height: 40px;">
												</div>
											</div>
										</li>
										<li>
											<div class="details">
												<div class="left">
													<h6>주소</h6>
												</div>
												<div class="right">
													 <input	class="form-control" type="text" placeholder="${vo.MAdd1 }"
														title="주소" id="address" name="mAdd1" value="${vo.MAdd1 }" readonly>
												</div>
											</div>
										</li>
										<li>
											<div class="details">
												<div class="left">
													<h6>상세주소</h6>
												</div>
												<div class="right">
													<input class="form-control" type="text" name="mAdd2"
														title="상세주소" id="detailAddress" value="${vo.MAdd2 }">
												</div>
											</div>
										</li>
										<li>
											<div class="details">
												<div class="left">
													<h6>핸드폰번호</h6>
												</div>
												<div class="right">
													<select id="mTel1" class="form-control" style="text-align: center;" name="mTel1">
														<option value="010" 
														<c:if test="${vo.MTel1 =='010' }">
														 selected="selected" 
														 </c:if>
														 >010</option>
														<option value="070"
														<c:if test="${vo.MTel1 =='070' }">
														 selected="selected" 
														 </c:if>
														>070</option>
													</select>
														
													<input id="mTel2" class="form-control" type="text" name="mTel2" value="${vo.MTel2 }">
															
													<input id="mTel3" class="form-control" type="text" name="mTel3" value="${vo.MTel3 }">
												</div>
											</div>
										</li>
										<li>
											<div class="details">
												<div class="left">
													<h6>이메일</h6>
												</div>
												<div class="right">
												<!-- mEmail2 직접입력에 대한 처리 -->
													<c:set var="etcYn" value=""/>
													<c:choose>
														<c:when test="${vo.MEmail2 =='naver.com' 
																	|| vo.MEmail2 =='hanmail.net'
																	|| vo.MEmail2 =='nate.com'
																	|| vo.MEmail2 =='gmail.com'
																	|| empty voMEmail2 }">
															<c:set var="etcYn" value="N"/>
														</c:when>
														<c:otherwise>
																<c:set var="etcYn" value="Y"/>
														</c:otherwise>
													</c:choose>
													<input class="form-control" type="text" name="mEmail1" id="mEmail1" value="${vo.MEmail1 }">
														
													<div class="col-1">@</div>
													
													<select class="form-control" name="mEmail2" id="mEmail2">
														<option value="naver.com"
															<c:if test="${vo.MEmail2=='naver.com' }">
																selected="selected"
															</c:if>
														>naver.com</option>
														<option value="hanmail.net"
															<c:if test="${vo.MEmail2=='hanmail.net' }">
																selected="selected"
															</c:if>
														>hanmail.net</option>
														<option value="nate.com"
															<c:if test="${vo.MEmail2=='nate.com' }">
																selected="selected"
															</c:if>
														>nate.com</option>
														<option value="gmail.com"
															<c:if test="${vo.MEmail2=='gmail.com' }">
																selected="selected"
															</c:if>
															>gmail.com</option>
														<option value="etc"
															<c:if test="${etcYn=='Y' }">
																selected="selected"
															</c:if>
														>직접입력</option>
													</select>
													
													<input class="form-control" type="text" name="mEmail3" id="mEmail3"
														<c:if test="${etcYn =='N' }">
															style="visibility:hidden"
														</c:if>
														<c:if test="${etcYn =='Y' }">
															value="${vo.MEmail2 }"
														</c:if>
													>
												</div>
											</div>
										</li>
									</ul>
								</div>
								<div id=btEdit>
									<input class="btn btn-solid" type="submit" id="submitEdit"
										value="회원정보수정" style="height: 40px;">
								</div>
							</form><br> 
							</div>
							<!-- 회원정보 수정 끝-->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- section end-->
</body>
</html>
<%@include file="../inc/footer.jsp"%>