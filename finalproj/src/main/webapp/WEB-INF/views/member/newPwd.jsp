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
<title>비밀번호 재설정</title>

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
	
		$('#btOk').click(function() {
			if ($('#pwd1').val() == $('#pwd2').val()) {
				$.ajax({
					url : "<c:url value='/member/changePwd.do'/>",
					data : $('#changePwd').serializeArray(),
					type : 'post',
					dataType : 'text',
					success : function(res) {
						if(res=="0"){
							alert('비밀번호 변경 실패');
						}else{
							alert('비밀번호 변경 성공');
							self.close();
						}
					},
					error : function(xhr, status, error) {
						alert('error: ' + error);
					}
				});
				event.preventDefault();
			} else {
				alert('비밀번호가 일치하지 않습니다.');
				$("#pwd2").focus();
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
				<h3>비밀번호 재설정</h3>
						<form method="post" name="changePwd"
							action="<c:url value='/member/changePwd.do'/>" id="changePwd">
				
				<input type="hidden" name="memId" value=${memId }>
				<p style="color: black;margin-bottom: 30px">비밀번호를 변경해 주세요.<br>
다른 아이디나 사이트에서 사용한 적 없는 안전한 비밀번호로 변경해 주세요.</p>
				<div class="row" style="margin: 0 auto">

					<!-- <div class="form-group col-md-2" style="margin-left: -12px">
						아이디</div> -->
					<div class="form-group col-md-6">
						<input type="password" class="form-control" id="pwd1"
							placeholder="새 비밀번호" required="">
					</div>
					<div class="col-md-3"></div>
					
					<div class="form-group col-md-6">
						<input type="password" class="form-control" id="pwd2" name="memPwd"
							placeholder="새 비밀번호 확인" required="" style="margin-bottom: 20px">
					</div>
					
					
					<div class="form-group col-md-2" style="margin-left: -12px">

					</div>
					
				
					<div class="form-group col-md-12" style="text-align: center">
						<button class="btn btn-solid" id="btOk">확인</button>
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
