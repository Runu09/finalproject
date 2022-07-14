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
<title>아이디 찾기</title>

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
		$('#btClose').click(function(){
			self.close();
		});
		
		$('#btOk').click(function() {
		
				$.ajax({
					url : "<c:url value='/member/infoId.do'/>",
					data : {
						name : $('#name').val(),
						email : $('#email').val()
					},
					type : 'get',
					dataType : 'text',
					success : function(res) {
						if (res.length > 0) {
							$('#showid').text(res);
							$('#noId').attr('hidden','hidden');
							$('#show').removeAttr('hidden');
						} else {
							$('#show').attr('hidden','hidden');
							$('#noId').removeAttr('hidden');
						}
					},
					error : function(xhr, status, error) {
						alert('error: ' + error);
					}
				});
				event.preventDefault(); 

		});
	});
</script>


</head>

<body>



	<!-- get in touch section start -->
	<section class="small-section">
		<div class="container">


			<div class="get-in-touch">
				<h3 style="margin-bottom: 20px">아이디 찾기</h3>
				<div class="row" style="margin: 0 auto">

					<div class="form-group col-md-2" style="margin-left: -12px">
						이름</div>
					<div class="form-group col-md-6">
						<input type="text" class="form-control" id="name"
							placeholder="이름 입력" required="">
					</div>
					<div class="col-md-3"></div>
					<div class="form-group col-md-2" style="margin-left: -12px">
						이메일 주소</div>

					<div class="form-group col-md-6">
						<%-- <form method="post" name="frmId"
							action="<c:url value='/email/sendEmail.do'/>" id="frmId">
 --%>
							<input type="text" class="form-control" id="email"
								placeholder="이메일 주소 입력" name="email" required=""
								style="text-transform: none;">
								
					</div>
				
					<div class="form-group col-md-2" style="margin-left: -12px">

					</div>
					
					<div class="form-group col-md-12" style="text-align: center">
						<button class="btn btn-solid" id="btOk">확인</button>
						<button class="btn btn-solid" 
						style="color:red;background-color: white;border-color: red;margin-left:10px" id="btClose">닫기</button>
					</div>
				</div>
				<div class="container"
					style="text-align: center; font-size: 16px; margin-top: 10px"
					hidden="hidden" id="show">
					고객님의 정보와 일치하는 아이디는 [<span id="showid"
						style="font-weight: bold; font-size: 20px; padding: 0px 10px"></span>]
					입니다.
				</div>
				<div class="container"
					style="text-align: center; font-size: 16px; margin-top: 10px; color:red"
					hidden="hidden" id="noId">고객님의 정보와 일치하는 아이디가 없습니다.</div>
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
