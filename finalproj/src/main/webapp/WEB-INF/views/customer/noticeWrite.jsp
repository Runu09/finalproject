<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/top.jsp"%>

<script type="text/javascript" src="../assets/js/ckeditor/ckeditor.js"></script>
<script src="../assets/js/ckeditor/styles.js"></script>
<script src="../assets/js/ckeditor/ckeditor.custom.js"></script>

<style>
.col-lg-10 {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 auto;
    flex: 0 0 auto;
    width: 100%;
    margin-bottom: 2rem;
}

.noticeSearch {
    width: 20%;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #212529;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border-radius: 0.25rem;
}

.container {
	text-align: center;
}

.titlediv {
	text-align:center;
}
</style>

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


<!-- section start-->
<section class="small-section bg-inner" data-sticky_parent>
    <div class="container">
        <div class="row">
            <div class="col-lg-10">
                <div class="product_img_scroll" data-sticky_column>
                    <div class="faq-content tab-content" id="top-tabContent">
                    	<div class="card">
	                        <div class="container">
		                        <div class="content" style="width: 70%">
		                        	<div class="card-header">
										<div class="row justify-content-md-center">
											<div class="col-sm-9">
												<div class="titlediv">
													<label for="title" style="margin-right: 10px; font-weight: bold; font-size:20px">제목(Title)</label>
				        							<input type="text" class="title" placeholder="제목을 입력하세요.">
												</div>
											</div>
										</div>
									</div>
									<div class="card-body">
										<div class="row justify-content-md-center">
											<div class="col_c" style="margin-bottom: 30px; border: 1px;">
												<div><!-- class="input-group" -->
													<textarea class="form-control" id="p_content"></textarea>
													<script type="text/javascript">
														CKEDITOR.replace('p_content', {height: 300});
													</script>
												</div>
											</div>
										</div>
									</div>
									<div class="row justify-content-md-center">
										<div class="input-group mb-3">             
											<div class="custom-file">
												<input type="file" class="form-control-file" id="exampleFormControlFile1">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row justify-content-md-center">        
							<button type="submit" class="btn btn-outline-secondary" style="width: 20%; font-weight: bold">등   록</button>        
						</div>  
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- section end-->


<%@include file="../inc/footer.jsp"%>