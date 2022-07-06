<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Cuba admin is super flexible, powerful, clean &amp; modern responsive bootstrap 5 admin template with unlimited possibilities.">
<meta name="keywords"
	content="admin template, Cuba admin template, dashboard template, flat admin template, responsive admin template, web app">
<meta name="author" content="pixelstrap">
<link rel="icon" href="../assets/images/favicon.png" type="image/x-icon">
<link rel="shortcut icon" href="../assets/images/favicon.png"
	type="image/x-icon">
<title>회원 약관</title>
<!-- Google font-->
<link
	href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200&family=Nunito:ital,wght@0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="../assets/css/font-awesome.css">
<!-- Themify icon-->
<link rel="stylesheet" type="text/css"
	href="../assets/css/vendors/themify.css">
<!-- Feather icon-->
<link rel="stylesheet" type="text/css"
	href="../assets/css/vendors/feather-icon.css">

<!-- Bootstrap css-->
<link rel="stylesheet" type="text/css"
	href="../assets/css/vendors/bootstrap.css">
<!-- App css-->
<link rel="stylesheet" type="text/css" href="../assets/css/style.css">
<!-- Responsive css-->
<link rel="stylesheet" type="text/css"
	href="../assets/css/responsive.css">


<script type="text/javascript"
	src="<c:url value='/assets/js/jquery-3.6.0.min.js'/>"></script>
<script type="text/javascript">
	$(function(){
		$("#confirm").click(function(){
			
			if(!$("#chkAgree").is(':checked')){
				alert("약관 동의 필수");
				event.preventDefault();
				return;
			}	
			location.href="<c:url value='/member/register.do'/>";
		});
		$("#back").click(function(){
			history.back();
		});
	});
</script>
</head>

<body>
	<!-- login page start-->
	<div class="container-fluid p-0">
		<div class="row m-0">
			<div class="col-12 p-0">
				<div class="login-card" style="margin-bottom: -80px;">
					<div>
						<div>
							<a class="logo" href="<c:url value='/main/main.do'/>"><img
								class="img-fluid for-light" src="../assets/images/main2.png"
								alt="looginpage"><img class="img-fluid for-dark"
								src="../assets/images/logo/logo-white.png" alt="looginpage"></a>
						</div>
						<div class="login-main" style="width: 1000px; height: 450px">
							<iframe src="<c:url value='/html/provision.html'/>"
								style="width: 100%; height: 100%"></iframe>
						</div>
					</div>
				</div>
					<div style="text-align: right;width: 1000px;margin: 0 auto">
					
						<input type="checkbox" name="chkAgree" id="chkAgree"> <label
							for="chkAgree">약관에 동의합니다.</label>
					</div>
					<div style="text-align: center">
						<button class="btn btn-solid" id="confirm">확인</button>
						<button class="btn btn-solid" type="reset" id="back">취소</button>
					
					</div>
					
			</div>
		</div>
		<!-- latest jquery-->



		<!-- Bootstrap js-->
		<script src="../assets/js/bootstrap/bootstrap.bundle.min.js"></script>
		<!-- feather icon js-->
		<script src="../assets/js/icons/feather-icon/feather.min.js"></script>
		<script src="../assets/js/icons/feather-icon/feather-icon.js"></script>
		<!-- scrollbar js-->
		<!-- Sidebar jquery-->
		<script src="../assets/js/config.js"></script>
		<!-- Plugins JS start-->
		<!-- Plugins JS Ends-->
		<!-- Theme js-->
		<script src="../assets/js/script.js"></script>
		<!-- login js-->
		<!-- Plugin used-->
	</div>
</body>

</html>