<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<title>OnAir</title>


<!--Google font-->
<link
	href="https://fonts.googleapis.com/css?family=Nunito:300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:400,500,600,700,800,900&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Vampiro+One&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Dancing+Script&display=swap"
	rel="stylesheet">

<!-- Icons -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="../assets/css/animate.css">

<!-- Date-time picker css -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/datepicker.min.css">

<!-- fare calender -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/fare-calender.css">

<!--Slick slider css-->
<link rel="stylesheet" type="text/css" href="../assets/css/slick.css">
<link rel="stylesheet" type="text/css"
	href="../assets/css/slick-theme.css">

<!-- price range css -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/price-range.css">

<!-- Themify icon -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/magnific-popup.css">
<link rel="stylesheet" type="text/css"
	href="../assets/css/themify-icons.css">

<!-- Bootstrap css -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/bootstrap.css">

<!-- Theme css -->
<link rel="stylesheet" type="text/css" href="../assets/css/color1.css">
<link rel="stylesheet" type="text/css" href="../assets/css/color2.css">

<!-- Animation -->
<link rel="stylesheet" type="text/css" href="../assets/css/animate.css">
<link rel="stylesheet" type="text/css"
	href="../assets/css/themify-icons.css">

<!-- Date-time picker css -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/datepicker.min.css">

<!-- price range css -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/price-range.css">


<style type="text/css">
body {
	cursor: url('../assets/images/cursor.cur'), auto;
}
</style>


<!-- latest jquery-->
<script type="text/javascript" src="../assets/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
function content(i,no, read){
	
	if(read.length==0){
		
	$.ajax({
		url : "<c:url value='/note/read.do'/>",
		data : 'nmNo='+no,
		type : 'get',
		dataType : 'text',
		success : function(res) {
			if(res!='0')
			$('#content'+i).removeAttr('hidden');
		},
		error : function(xhr, status, error) {
			alert('error: ' + error);
		}
	});
	event.preventDefault();
	}else{
		$('#content'+i).removeAttr('hidden');
	}
};
</script>

</head>
<body style="background-color: #f9f9f9">
	<section class="pt-0 bg-inner small-section loader-section">

		<div class="container">
			<div class="flight-detail-sec full_width-detail">
				<h1>
					쪽지함 <span style="font-size: 16px">읽지 않은 쪽지 : ${totalRecord}개</span>
				</h1>
				<div class="detail-bar">
					<div class="detail-wrap wow"
						style="background-color: black; color: white">
						<div class="row">
							<div class="col-md-2">
								<div class="price">
									<h5>번호</h5>
								</div>
							</div>
							<div class="col-md-6">
								<div class="logo-sec">
									<h5>제목</h5>
								</div>
							</div>

							<div class="col-md-4">
								<div class="price">
									<h5>날짜</h5>
								</div>
							</div>
						</div>


					</div>
				</div>
			</div>
			<div class="flight-detail-sec full_width-detail">

				<div class="detail-bar">

					<c:if test="${empty list }">


						<div class="detail-wrap wow">
							<div class="row">

								<h5 style="text-align: center">받은 쪽지가 없습니다.</h5>
							</div>

						</div>
					</c:if>

					<c:if test="${!empty list }">
							<c:set var="i" value="1" />
						<c:forEach var="vo" items="${list }">
							<div class="detail-wrap wow">
								<div class="row">
									<div class="col-md-2">
										<div class="price">
											<h5>${i}</h5>
											
										</div>
									
									</div>
									
									<div class="col-md-6">
										<div class="logo-sec">
											<a href="#"
												onClick="javascript:content(${i}, ${vo.nmNo }, '${vo.nmCheckread }');">
												<h5
													<c:if test="${!empty vo.nmCheckread}">
						style="color:gray"
					</c:if>>${vo.NTitle}</h5>
											</a>
										</div>
									</div>

									<div class="col-md-4">
										<div class="price">
											<fmt:formatDate value="${vo.NTime}" pattern="yyyy-MM-dd" />
										</div>
									</div>


								</div>

							</div>
							<div class="detail-wrap" hidden="hidden"
								style="margin: 0px; padding-left: 40px; background: #fff"
								id="content${i }">내용 : ${vo.NContent }</div>
							<c:set var="i" value="${i+1 }" />
						</c:forEach>
					</c:if>
				</div>
			</div>

		</div>

	</section>
</body>
</html>