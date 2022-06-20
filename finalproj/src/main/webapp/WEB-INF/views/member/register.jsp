<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="shortcut icon" href="../assets/images/favicon.png" type="image/x-icon">
    <title>회원가입</title>
    <!-- Google font-->
    <link
        href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200&family=Nunito:ital,wght@0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../assets/css/font-awesome.css">
    <!-- Themify icon-->
    <link rel="stylesheet" type="text/css" href="../assets/css/vendors/themify.css">
    <!-- Feather icon-->
    <link rel="stylesheet" type="text/css" href="../assets/css/vendors/feather-icon.css">
    <!-- Plugins css start-->
    <!-- Plugins css Ends-->
    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/vendors/bootstrap.css">
    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
    <!-- Responsive css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/responsive.css">
    
   <!--  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript">
	    function execDaumPostcode() {
		    daum.postcode.load(function(){
		        new daum.Postcode({
		            oncomplete: function(data) {
		              // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
		              $("#postcode").val(data.zonecode);
		              $("#address").val(data.roadAddress);
		            }
		        }).open();
		    });
		}
    </script> -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	    function execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                var addr = '';
	                var extraAddr = '';
	
	                if (data.userSelectedType === 'R') {
	                    addr = data.roadAddress;
	                } else {
	                    addr = data.jibunAddress;
	                }
	
	                document.getElementById('postcode').value = data.zonecode;
	                document.getElementById("address").value = addr;
	                document.getElementById("detailAddress").focus();
	            }
	        }).open();
	    }
	    
	    $(function(){
	    	$('form[name=theme-form]').submit(function(){
	    		if($.trim($('#name').val()) == ""){
	    			alert("이름을 입력해주세요.");
	    			$('#name').focus();
	    			event.preventDefault();		  
	    		}else if(!validate_userid($("#userid").val())) {
	    			alert("아이디는 영문, 숫자, _(밑줄문자)만 가능합니다");
	    			$("#userid").focus();
	    			event.preventDefault();
	    	 	}else if($("#pwd").val().length<1) {
	    		    alert("비밀번호를 입력하세요");
	    		    $("#pwd").focus();
	    		    event.preventDefault();
	    		}else if($("#pwd").val()!=$("#pwd2").val()) {
	    		    alert("비밀번호가 일치하지 않습니다.");
	    		    $("#pwd2").focus();
	    		    event.preventDefault();
	    		}else if(!validate_tel($('#hp2').val()) || 
	    				!validate_tel($('#hp3').val())){
	    			alert("전화번호는 숫자만 가능합니다");
	    			$("#hp2").focus();
	    			event.preventDefault();
	    		}else if($('#chkId').val()!='Y'){
	    			alert("아이디 중복확인해야 합니다");
	    			$("#btnChkId").focus();
	    			event.preventDefault();			
	    		}
	    	});
	    	
	    	
	    });
	</script>
</head>

<body>
    <!-- login page start-->
    <div class="container-fluid p-0">
		<div class="row m-0">
			<div class="col-12 p-0">
				<div class="login-card">
					<div>
						<div>
							<a class="logo" href="<c:url value='/main/main.do'/>"><img
								class="img-fluid for-light" src="../assets/images/main2.png"
								alt="looginpage"><img class="img-fluid for-dark"
								src="../assets/images/logo/logo-white.png" alt="looginpage"></a>
						</div>
						<div class="login-main">
							<form class="theme-form" method="post" action="<c:url value='/member/register.do'/>">
								<h4>회원가입</h4>
								<label class="col-form-label form-label-title">아이디</label>
								<div class="form-group">
									<input id="userid" class="form-control" type="userId" required=""
										placeholder="아이디" name="memId" style="width: 50%; position: absolute;">
									<input id="chkId" class="btn btn-primary btn-block" type="button"
										value="중복확인" style=" position: relative; left: 200px; height: 37px;">
								</div>
								<div class="form-group">
									<label class="col-form-label form-label-title ">비밀번호</label>
									<div class="form-input position-relative">
										<input id="pwd" class="form-control" type="password"  name="memPwd" required="" placeholder="*********">
											<!-- name="login[password]" --> 
											
										<div class="show-hide">
											<span class="show"></span>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-form-label form-label-title ">비밀번호 확인</label>
									<div class="form-input position-relative">
										<input id="pwd2" class="form-control" type="password"
											name="login[password]" required="" placeholder="*********">
									</div>
								</div>
								<div class="form-group">
									<label class="col-form-label form-label-title ">이름</label> <input
										id="name" class="form-control" type="text" required="" placeholder="이름"  name="memName" >
								</div>
								<div class="form-group">
									<label class="col-form-label form-label-title ">생년월일</label> <input
										class="form-control" type="text" required="" name="mBirthday"
										placeholder="8자리입력(YYYYMMDD)">
								</div>
								
								<label class="col-form-label form-label-title">우편번호</label>
								<div class="form-group">
									<input class="form-control" type="text" required="" name="mZipcode"
										placeholder="우편번호" style="width: 50%; position: absolute;" id="postcode">
									<button type="button" class="btn btn-primary btn-block" onclick="execDaumPostcode()">우편번호 찾기</button>
									<input class="btn btn-primary btn-block" type="button"
										value="우편번호 찾기" onclick="execDaumPostcode()" style=" position: relative; left: 50px; height: 45px;">
								</div>
								
								
								<div class="form-group">
									<label class="col-form-label form-label-title">주소</label>
									<input class="form-control" type="text" required="" placeholder="주소" id="address" name="mAdd1">
								</div>
								<div class="form-group">
									<label class="col-form-label form-label-title ">상세주소</label> <input
										class="form-control" type="text" name="mAdd2"
										placeholder="상세주소" id="detailAddress">
								</div>
								<div class="form-group">
									<label class="col-form-label form-label-title  pt-0">핸드폰번호</label>
									<div class="row g-2">
										<div class="col-4">
											<select class="form-control" style="text-align: center;" name="mTel1">
												<option value="010">010</option>
												<option value="070">070</option>
											</select>
										</div>
										<div class="col-4">
											<input id="hp2" class="form-control" type="text" required="" name="mTel2"
												placeholder="">
										</div>
										<div class="col-4">
											<input id="hp3" class="form-control" type="text" required="" name="mTel3"
												placeholder="">
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-form-label form-label-title  pt-0">이메일</label>
									<div class="row g-2">
										<div class="col-4">
											<input class="form-control" type="text" required="" name="mEmail1"
												placeholder="">
										</div>
										<div class="col-7">
											<input class="form-control" type="text" required="" name="mEmail2"
												placeholder=""> 
										</div>
									</div>
								</div>
								<div class="form-group mb-0">

									<button class="btn btn-primary btn-block w-100" type="submit">가입하기</button>
								</div>

								<p class="mt-4 mb-0">
									이미 계정이 있습니까?<a class="ms-2"
										href="<c:url value='/member/login.do'/>">로그인</a>
								</p>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- latest jquery-->
        <script src="../assets/js/jquery-3.5.1.min.js"></script>
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