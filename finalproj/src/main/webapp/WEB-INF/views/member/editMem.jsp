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
		$('#btEdit').click(
				function() {
					if ($("#pwd").val().length < 1) {
						alert("비밀번호를 입력하세요");
						$("#pwd").focus();
						event.preventDefault();
					} else if ($("#pwd").val() != $("#memPwd").val()) {
						alert("비밀번호가 일치하지 않습니다.");
						$("#pwd").focus();
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
</style>

<body>
<!-- section start-->
<section class="small-section dashboard-section bg-inner" data-sticky_parent>
	<div class="container">
		<div class="row">
		<%@include file="../inc/mypageMenu.jsp"%>
			<div class="col-lg-9">
				<div class="product_img_scroll" data-sticky_column>
					<div class="faq-content tab-content" id="top-tabContent">
						<!-- 회원정보 수정 -->
						<div class="dashboard-box">
							<div class="dashboard-title">
								<h4>edit your profile</h4>
							</div><br>
							<form class="memEdit" method="post" action="<c:url value='/member/memEdit.do'/>">
								<div class="dashboard-detail">
									<ul>
										<li>
											<div class="details">
												<div class="left">
													<h6>아이디</h6>
												</div>
												<div class="right">
												 <input class="form-control" type="userId" name="memId"
														placeholder="${sessionScope.memId }" readonly="readonly">
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
															placeholder="${sessionScope.memName }" readonly="readonly">
												</div>
											</div>
										</li>
										<li>
											<div class="details">
												<div class="left">
													<h6>비밀번호</h6>
												</div>
												<div class="right">
													<input class="form-control" type="password" name="pwd"
														id="pwd" placeholder="password"><br>
													<!-- 비번확인용 -->
													<input class="form-control" type="hidden" name="memPwd"
														id="memPwd">
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
														placeholder="생년월일" readonly="readonly">
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
														readonly="readonly" name="mZipcode" placeholder="우편번호"
														style="width: 151px; position: absolute;" id="postcode">
													
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
													 <input	class="form-control" type="text" placeholder="주소"
														id="address" name="mAdd1">
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
														placeholder="상세주소" id="detailAddress">
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
														<option value="010">010</option>
														<option value="070">070</option>
													</select>
														
													<input id="mTel2" class="form-control" type="text" name="mTel2">
															
													<input id="mTel3" class="form-control" type="text" name="mTel3">
												</div>
											</div>
										</li>
										<li>
											<div class="details">
												<div class="left">
													<h6>이메일</h6>
												</div>
												<div class="right">
													<input class="form-control" type="text" name="mEmail1" id="mEmail1">
														
													<div class="col-1">@</div>
													
													<select class="form-control" name="mEmail2" id="mEmail2">
														<option value="naver.com">naver.com</option>
														<option value="hanmail.net">hanmail.net</option>
														<option value="nate.com">nate.com</option>
														<option value="gmail.com">gmail.com</option>
														<option value="etc">직접입력</option>
													</select>
													
													<input class="form-control" style="visibility: hidden"
																type="text" name="mEmail3" id="mEmail3">
												</div>
											</div>
										</li>
									</ul>
								</div>
							</form><br> 
								<input class="btn btn-solid" type="button" id="btEdit"
									value="회원정보수정" onclick="#"
								style="height: 40px;">
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