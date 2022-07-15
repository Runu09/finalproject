<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="shortcut icon" href="../assets/images/favicon.png"
	type="image/x-icon">
<link
	href="https://fonts.googleapis.com/css2?family=
	Nunito+Sans:wght@200&family=Nunito:ital,wght@0,200;
	0,300;0,400;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,600;1,700;
	1,800;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../assets/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="../assets/css/vendors/themify.css">
<link rel="stylesheet" type="text/css" href="../assets/css/vendors/feather-icon.css">
<link rel="stylesheet" type="text/css" href="../assets/css/vendors/scrollbar.css">
<link rel="stylesheet" type="text/css" href="../assets/css/vendors/animate.css">
<link rel="stylesheet" type="text/css" href="../assets/css/vendors/chartist.css">
<link rel="stylesheet" type="text/css" href="../assets/css/vendors/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../assets/css/vendors/bootstrap-tagsinput.css">
<link rel="stylesheet" type="text/css" href="../assets/css/style.css">
<link rel="stylesheet" type="text/css" href="../assets/css/responsive.css">

<%@include file="../inc/top.jsp"%>
<script type="text/javascript">
	$(function() {
		$('#frmWrite').submit(function() {
			
			var chk=CKEDITOR.instances['editor1'].getData();
			
			if ($.trim($("#mbTitle").val()).length == 0) {
				alert("제목을 입력하세요");
				$("#mbTitle").focus();
				event.preventDefault();
				return;
				
			}else if (chk==''||chk.length==0){
				
				alert("내용을 입력하세요");
				$("#editor1").focus();
				event.preventDefault();
				return;
			}
			location.href = "<c:url value='/notice/notice.do'/>";
		});
		
		$('#btCancel').click(function() {
			location.href = "<c:url value='/admin/adminMain'/>";
		});

	});
</script>

<body>


<!-- breadcrumb start -->
<section class="breadcrumb-section no-bg pt-0" id="block"
	style="width: 100%;">
	<div class="breadcrumb-content overlay-black">
		<div>
			<h2>공지사항 등록</h2>
		</div>
	</div>
	<div class="title-breadcrumb">OnAir</div>
</section>
<!-- breadcrumb end -->



<div>
	<div class="noticecenter"
		style="margin-right: 100px; margin-left: 100px; margin-top: 100px">
		<div class="tap-top">
			<i data-feather="chevrons-up"></i>
		</div>
		
		<!-- 공지사항 작성 시작-->
		<form name="frmWrite" method="post" enctype="multipart/form-data"
			id="frmWrite" action="<c:url value='/notice/noticeWrite.do'/>">
			<div class="page-wrapper compact-wrapper modern-type"
				id="pageWrapper">
				<div class="container-fluid">
					<div class="row">
						<div class="col-12">
							<div class="row">
								<div class="col-sm-12">
									<div class="card">
										<div class="card-body">
											<div class="mb-3">
												<label class="form-label-title">제목</label> 
												<input class="form-control" type="text" placeholder="제목을 입력하세요"
													name="mbTitle" id="mbTitle">
											</div>
											<label class="form-label-title ">내용</label>
											<textarea id="editor1" cols="30" rows="10" name="mbContent"></textarea>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--공지사항 작성 끝-->


				<!--첨부파일 위치 시작-->
				<div class="container-fluid">
					<div class="col-12">
						<div class="row">
							<div class="col-sm-12">
									<!-- <div class="card-header">
										<h5>첨부파일</h5>
									</div> -->
									<div class="card-footer text-end">
										<button class="btn btn-primary me-3" type="submit">등록</button>
										<input type="button" class="btn btn-outline-primary"
											id="btCancel" value="취소" />
									</div>
									<!-- <div class="card-body">
										<div class="animate-chk">
											<div class="mb-3">
												<input type="file" id="upfile" name="upfile" />
											</div>
										</div>
									</div> -->
							</div>
						</div>
					</div>
				</div>
				<!--첨부파일 위치 끝-->
			</div>
		</form>
	</div>
</div>

<!--ckEditor js start-->
<script src="../assets/js/ckeditor/ckeditor.js"></script>
<script src="../assets/js/ckeditor/styles.js"></script>
<script src="../assets/js/ckeditor/ckeditor.custom.js"></script>
<!--ckEditor js end-->


<%@include file="../inc/footer.jsp"%>