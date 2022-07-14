<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="icon" href="../assets/images/favicon.png" type="image/x-icon" />
<title>500</title>

<!--Google font-->
<link
	href="https://fonts.googleapis.com/css?family=Nunito:300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Dancing+Script&display=swap"
	rel="stylesheet">

<!-- Bootstrap css -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/bootstrap.css">

<!-- Theme css -->
<link rel="stylesheet" type="text/css" href="../assets/css/color1.css">
<script type="text/javascript" src="../assets/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function() {
$('#btBack').click(function(){
	history.back();
});

});
</script>


</head>

<body class="bg-inner" style="text-align: center; margin-top: 150px">
	<!-- section start -->
	<!-- <section class="bg-inner success-section"> -->
	<div class="container">
		<div class="row success-detail mt-0">
			<div class="col">
				<img src="../assets/images/icon/failure-icon.png"
					class="img-fluid lazyload" alt="">
				<h2 style="margin: 20px 0">System Error</h2>
				<h5 style="text-transform: none; padding: 20px 0">서비스 이용에 불편을 드려 죄송합니다.<br>
				시스템 에러가 발생하여 페이지를 표시할 수 없습니다.
				<br>관리자에게 문의하시거나 잠시 후 다시 시도하세요.</h5>
				<button class="btn btn-solid color1" id="btBack">뒤로가기</button>
			</div>
		</div>
	</div>
	<!-- </section>
     -->
	<!-- section End -->
</body>
</html>