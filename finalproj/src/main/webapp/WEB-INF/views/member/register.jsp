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
</head>

<body>
    <!-- login page start-->
    <div class="container-fluid p-0">
        <div class="row m-0">
            <div class="col-12 p-0">
                <div class="login-card">
                    <div>
                       <div><a class="logo" href="<c:url value='/main/main.do'/>"><img class="img-fluid for-light"
                                    src="../assets/images/main2.png" alt="looginpage"><img
                                    class="img-fluid for-dark" src="../assets/images/logo/logo-white.png"
                                    alt="looginpage"></a></div>
                        <div class="login-main">
                            <form class="theme-form">
                                <h4>회원가입</h4>
                                <div class="form-group">
                                    <label class="col-form-label form-label-title ">아이디</label>
                                    <input class="form-control" type="userId" required="" placeholder="아이디">
                                </div>
                                <div class="form-group">
                                    <label class="col-form-label form-label-title ">비밀번호</label>
                                    <div class="form-input position-relative">
                                        <input class="form-control" type="password" name="login[password]" required=""
                                            placeholder="*********">
                                        <div class="show-hide"><span class="show"></span></div>
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label class="col-form-label form-label-title ">이름</label>
                                    <input class="form-control" type="text" required="" placeholder="이름">
                                </div>
                                 <div class="form-group">
                                    <label class="col-form-label form-label-title ">생년월일</label>
                                    <input class="form-control" type="text" required="" placeholder="8자리입력(YYYYMMDD)">
                                </div>
                                 <div class="form-group">
                                  <label class="col-form-label form-label-title ">우편번호</label>
                                  <div class="col-6">
                                            <input class="form-control" type="text" required="" placeholder="우편번호">
                                        </div>
                                    <label class="col-form-label form-label-title ">주소</label>
                                    <input class="form-control" type="text" required="" placeholder="주소">
                               
                                    <label class="col-form-label form-label-title ">상세주소</label>
                                    <input class="form-control" type="text" required="" placeholder="상세주소">
                                </div>
                                <div class="form-group">
                                    <label class="col-form-label form-label-title  pt-0">핸드폰번호</label>
                                    <div class="row g-2">
                                        <div class="col-4">
                                            <input class="form-control" type="text" required=""
                                                placeholder="">
                                        </div>
                                        <div class="col-4">
                                            <input class="form-control" type="text" required="" placeholder="">
                                        </div>
                                        <div class="col-4">
                                            <input class="form-control" type="text" required="" placeholder="">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-form-label form-label-title  pt-0">이메일</label>
                                    <div class="row g-2">
  
                                        <div class="col-4">
                                            <input class="form-control" type="text" required="" placeholder="">
                                        </div>
                                        <div class="col-8">
                                            <input class="form-control" type="text" required="" placeholder="">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group mb-0">
                                 
                                    <button class="btn btn-primary btn-block w-100" type="submit">가입하기</button>
                                </div>
                               
                                <p class="mt-4 mb-0">이미 계정이 있습니까?<a class="ms-2" href="<c:url value='/admin/adminLogin'/>">로그인</a></p>
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