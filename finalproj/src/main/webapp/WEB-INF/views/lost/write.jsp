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
<link rel="stylesheet" type="text/css"
	href="../assets/css/font-awesome.css">

<!-- Themify icon -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/vendors/themify.css">
<!-- Feather icon -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/vendors/feather-icon.css">
<!-- Plugins css start -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/vendors/scrollbar.css">
<link rel="stylesheet" type="text/css"
	href="../assets/css/vendors/animate.css">
<link rel="stylesheet" type="text/css"
	href="../assets/css/vendors/chartist.css">
<!-- Plugins css Ends -->
<!-- Bootstrap css -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/vendors/bootstrap.css">

<!-- Bootstrap-tag input css
 -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/vendors/bootstrap-tagsinput.css">
<!-- App css
 -->
<link rel="stylesheet" type="text/css" href="../assets/css/style.css">
<!-- Responsive css
 -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/responsive.css">

<%@include file="../inc/top.jsp"%>
<script type="text/javascript">
	$(function() {
		
		$('#frmWrite').submit(function() {
			
			var chk=CKEDITOR.instances['editor1'].getData();
			
			if ($.trim($("#bTitle").val()).length == 0) {
				alert("제목을 입력하세요");
				$("#bTitle").focus();
				event.preventDefault();
				return;
				
			}else if (chk==''||chk.length==0){
				
				alert("내용을 입력하세요");
				$("#editor1").focus();
				event.preventDefault();
				return;
			}
			location.href = "<c:url value='/lost/write.do'/>";
		});
		$('#btCancel').click(function() {
			location.href = "<c:url value='/lost/list.do'/>";
		});

	}); //ready()
</script>

<!-- breadcrumb start -->
<section class="breadcrumb-section no-bg pt-0" id="block"
	style="width: 100%;">
	<div class="breadcrumb-content overlay-black">
		<div>
			<h2>유실물 조회</h2>
		</div>
	</div>
	<div class="title-breadcrumb">OnAir</div>
</section>
<!-- breadcrumb end -->

<div>
	<div class="lostcenter"
		style="margin-right: 100px; margin-left: 100px; margin-top: 100px">
		<!-- tap on top starts-->
		<div class="tap-top">
			<i data-feather="chevrons-up"></i>
		</div>
		<!-- tap on tap ends-->
		<!-- page-wrapper Start-->

		<form name="frmWrite" method="post" enctype="multipart/form-data"
			id="frmWrite" action="<c:url value='/lost/write.do'/>">
			<div class="page-wrapper compact-wrapper modern-type"
				id="pageWrapper">
				<!-- Container-fluid starts-->
				<div class="container-fluid">
					<div class="row">

						<div class="col-12">
							<div class="row">
								<div class="col-sm-12">
									<div class="card">
										<div class="card-header">
											<h5>유실물 등록</h5>

											<p style="margin-top: 10px">유실물 등록 양식입니다. (*) 표시는 필수 입력
												항목입니다.</p>

										</div>
										<div class="card-body">
											<!-- <form class="theme-form mega-form"> -->
											<div class="mb-3">
												<label class="form-label-title">제목 (*)</label> <input
													class="form-control" type="text" placeholder="제목을 입력하세요"
													name="bTitle" id="bTitle">
											</div>


											<label class="form-label-title ">내용 (*)</label>
											<textarea id="editor1" cols="30" rows="10" name="bContent"></textarea>
											<!-- </form> -->

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Container-fluid Ends-->


				<!--room detail start-->
				<div class="container-fluid">
					<div class="col-12">
						<div class="row">
							<div class="col-sm-12">
								<div class="card">
									<div class="card-header">
										<h5>첨부파일</h5>
									</div>
									<div class="card-body">
										<!-- <form class="theme-form mega-form"> -->
										<div class="animate-chk">

											<div class="mb-3">
												<input type="file" id="upfile" name="upfile" />

											</div>

											<div class="card-footer text-end">
												<button class="btn btn-primary me-3" type="submit">등록</button>
												<input type="button" class="btn btn-outline-primary"
													id="btCancel" value="취소" />
											</div>

										</div>
									</div>

								</div>
							</div>

						</div>
						<!--room detail end-->

					</div>
				</div>
		</form>
	</div>
</div>

<!-- feather icon js-->
<!-- <script src="../assets/js/icons/feather-icon/feather.min.js"></script>
<script src="../assets/js/icons/feather-icon/feather-icon.js"></script>
 -->
<!-- scrollbar js-->
<!-- <script src="../assets/js/scrollbar/simplebar.js"></script>
<script src="../assets/js/scrollbar/custom.js"></script>
 -->
<!-- Plugins JS start-->
<!-- <script src="../assets/js/sidebar-menu.js"></script>
<script src="../assets/js/chart/knob/knob.min.js"></script>
 -->
<!-- <script src="../assets/js/notify/bootstrap-notify.min.js"></script>
 -->

<!-- <script src="../assets/js/notify/index.js"></script>
<script src="../assets/js/datepicker/date-time-picker/moment.min.js"></script>
<script
	src="../assets/js/datepicker/date-time-picker/tempusdominus-bootstrap-4.min.js"></script>
<script
	src="../assets/js/datepicker/date-time-picker/datetimepicker.custom.js"></script>
<script src="../assets/js/typeahead/handlebars.js"></script>
<script src="../assets/js/typeahead/typeahead.bundle.js"></script>
<script src="../assets/js/typeahead/typeahead.custom.js"></script>
<script src="../assets/js/typeahead-search/handlebars.js"></script>
<script src="../assets/js/typeahead-search/typeahead-custom.js"></script>
 -->
<!-- Plugins JS Ends-->

<!--ckEditor js start-->
<script src="../assets/js/ckeditor/ckeditor.js"></script>
<script src="../assets/js/ckeditor/styles.js"></script>
<script src="../assets/js/ckeditor/ckeditor.custom.js"></script>
<!--ckEditor js end-->

<!-- bootstrap tag-input JS start-->
<!-- <script src="../assets/js/bootstrap-tagsinput.min.js"></script>
 -->

<%@include file="../inc/footer.jsp"%>
