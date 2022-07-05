<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>쪽지 상세보기</title>
<!-- Google font-->
<link
	href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200&family=Nunito:ital,wght@0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">

<!-- FontAsowme css start  -->
<link rel="stylesheet" type="text/css"
	href="../admin/css/font-awesome.css">


<!-- Bootstrap css-->
<link rel="stylesheet" type="text/css"
	href="../admin/css/vendors/bootstrap.css">
<script src="<c:url value='/assets/js/jquery-3.6.0.min.js'/>"></script>
<script type="text/javascript">
	$(function() {
		$('#btClose').click(function() {

			self.close();
		});
	});
</script>
</head>
<body>
	<h1 style="text-align: center; margin-top: 10px">쪽지 상세보기</h1>
	<hr>
	<div style="height: 200px;margin: 0 10px">${str }</div>
	<hr>
	<div style="text-align: center;">
		<button class="btn btn-primary me-3" id="btClose"
			style="background-color: #4291b8; border-color: #4291b8; width: 84px; height: 40px; margin-left: 10px; font-size: 16px;">닫기</button>
	</div>
</body>
</html>