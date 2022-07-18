<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="rica">
<meta name="keywords" content="rica">
<meta name="author" content="rica">
<link rel="icon" href="../assets/images/favicon.png" type="image/x-icon" />
<title>비밀번호 찾기</title>

<!--Google font-->
<link
	href="https://fonts.googleapis.com/css?family=Nunito:300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Dancing+Script&display=swap"
	rel="stylesheet">

<!-- Icons -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/font-awesome.css">

<!-- Animation -->
<link rel="stylesheet" type="text/css" href="../assets/css/animate.css">

<!--Slick slider css-->
<link rel="stylesheet" type="text/css" href="../assets/css/slick.css">
<link rel="stylesheet" type="text/css"
	href="../assets/css/slick-theme.css">

<!-- Bootstrap css -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/bootstrap.css">

<!-- Theme css -->
<link rel="stylesheet" type="text/css" href="../assets/css/color1.css">

<script type="text/javascript" src="../assets/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function() {

		$('#btClose').click(function() {
			self.close();
		});
		$('#btAuth')
				.click(
						function() {
							var email = $('#email').val();
							if ($.trim($('#memId').val()) == "") {
								alert("아이디를 입력하세요");
								$("#memId").focus();
								event.preventDefault();
								return;
							} else if ($.trim($('#email').val()) == "") {
								alert("이메일을 입력하세요");
								$("#email").focus();
								event.preventDefault();
								return;
							}
							$
									.ajax({
										url : "<c:url value='/email/sendEmail.do'/>",
										data : {
											memId : $('#memId').val(),
											email : $('#email').val()
										},
										type : 'post',
										dataType : 'json',
										success : function(res) {
											alert("인증번호를 발송했습니다.\n인증번호가 오지 않으면 입력하신 정보와 회원정보가 일치하는지 확인해 주세요.");
											$('#btAuth').attr('disabled', true);
											$('#confirmKey').attr('disabled',
													false);
											$('#chkAuth').val(res);

										},
										error : function(xhr, status, error) {
											alert('아이디를 확인해주세요');
										}
									});
							event.preventDefault();

						});

		$('#btOk').click(function() {
			if ($.trim($('#memId').val()) == "") {
				alert("아이디를 입력하세요");
				$("#memId").focus();
				event.preventDefault();
			} else if ($.trim($('#email').val()) == "") {
				alert("이메일을 입력하세요");
				$("#email").focus();
				event.preventDefault();
			} else if ($.trim($('#confirmKey').val()) == "") {
				alert("인증번호를 입력하세요")
				$("#confirmKey").focus();
				event.preventDefault();
			}

			else if ($('#confirmKey').val() == $('#chkAuth').val()) {
				$('#pid').val($('#memId').val());
				/* location.href = "<c:url value='/member/newPwd.do'/>"; */
			} else {
				alert('인증번호가 일치하지 않습니다.');
				event.preventDefault();
				return;
			}
		});
	});
</script>


</head>

<body>

	<section class="small-section">
		<div class="container">


			<div class="get-in-touch">
				<h3>비밀번호 찾기</h3>
				<p style="color: black">본인확인 이메일 주소와 입력한 이메일 주소가 같아야, 인증번호를 받을 수
					있습니다.</p>
				<div class="row" style="margin: 0 auto">

					<div class="form-group col-md-2" style="margin-left: -12px">
						아이디</div>
					<div class="form-group col-md-6">
						<form method="post" name="frmPwd"
							action="<c:url value='/member/sendEmail.do'/>" id="frmPwd">
							<input type="text" class="form-control" id="memId"
								placeholder="아이디 입력" required="" style="text-transform: none;">
					</div>
					<div class="col-md-3"></div>
					<div class="form-group col-md-2" style="margin-left: -12px">
						이메일 주소</div>

					<div class="form-group col-md-6">
						<%-- <form method="post" name="frmPwd"
							action="<c:url value='/member/sendEmail.do'/>" id="frmPwd"> --%>

						<input type="text" class="form-control" id="email"
							placeholder="이메일 주소 입력" name="email" required=""
							style="text-transform: none;">
					</div>
					<div class="form-group col-md-3">
						<button class="btn btn-solid" type="submit" id="btAuth">인증번호
							받기</button>
					</div>
					</form>
					<div class="form-group col-md-2" style="margin-left: -12px">

					</div>
					<div class="form-group col-md-6">
						<input type="text" class="form-control" id="confirmKey"
							placeholder="인증번호 6자리 숫자 입력" required="" disabled="disabled">
					</div>
					<div class="form-group col-md-3">
						<input type="hidden" value="${res}" id="chkAuth">
					</div>
					<form method="post" name="frmNew" id="frmNew"
						action="<c:url value='/member/newPwd.do'/>">
						<input type="hidden" name="pid" id="pid">
						<div class="form-group col-md-12" style="text-align: center">
							<button class="btn btn-solid" type="submit" id="btOk">다음</button>
							<button class="btn btn-solid"
								style="color: red; background-color: white; border-color: red; margin-left: 10px"
								id="btClose">닫기</button>
						</div>
					</form>
				</div>

			</div>
		</div>
	</section>
	<!-- get in touch section end -->





	<!-- tap to top -->
	<div class="tap-top">
		<div>
			<i class="fas fa-angle-up"></i>
		</div>
	</div>
	<!-- tap to top end -->


	<!-- slick js-->
	<script src="../assets/js/slick.js"></script>

	<!-- Bootstrap js-->
	<script src="../assets/js/bootstrap.bundle.min.js"></script>

	<!-- lazyload js-->
	<script src="../assets/js/lazysizes.min.js"></script>

	<!-- Theme js-->
	<script src="../assets/js/script.js"></script>


</body>

</html>
