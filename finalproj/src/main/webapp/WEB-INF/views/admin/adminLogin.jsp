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
    <link rel="icon" href="../admin/images/favicon.png" type="image/x-icon">
    <link rel="shortcut icon" href="../admin/images/favicon.png" type="image/x-icon">
    <title>관리자 로그인</title>
    <!-- Google font-->
    <link
        href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200&family=Nunito:ital,wght@0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../admin/css/font-awesome.css">
    <!-- Themify icon-->
    <link rel="stylesheet" type="text/css" href="../admin/css/vendors/themify.css">
    <!-- Feather icon-->
    <link rel="stylesheet" type="text/css" href="../admin/css/vendors/feather-icon.css">
    <!-- Plugins css start-->
    <!-- Plugins css Ends-->
    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="../admin/css/vendors/bootstrap.css">
    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="../admin/css/style.css">

    <!-- Responsive css-->
    <link rel="stylesheet" type="text/css" href="../admin/css/responsive.css">
</head>

<body>
    <!-- login page start-->
    <div class="container-fluid p-0">
        <div class="row m-0">
            <div class="col-12 p-0">
                <div class="login-card">
                    <div>
                        <div><a class="logo" href="<c:url value='/admin/adminMain'/>"><img class="img-fluid for-light"
                                    src="../admin/images/main2.png" alt="looginpage"><img
                                    class="img-fluid for-dark" src="../admin/images/logo/logo-white.png"
                                    alt="looginpage"></a></div>
                        <div class="login-main">
                            <form class="theme-form">
                                <h4></h4>
                               <!--  <p>아이디와 비밀번호를 입력 후 로그인하세요!</p> -->
                                <div class="form-group">
                                    <label class="col-form-label form-label-title ">아이디</label>
                                    <input class="form-control" type="userid" required="" placeholder="아이디를 입력하세요">
                                </div>
                                <div class="form-group">
                                    <label class="col-form-label form-label-title ">비밀번호</label>
                                    <div class="form-input position-relative">
                                        <input class="form-control" type="password" name="login[password]" required=""
                                            placeholder="*********">
                                        <div class="show-hide"><span class="show"> </span></div>
                                    </div>
                                </div>
                                <div class="form-group mb-0">
                                    <div class="checkbox p-0">
                                        <input id="checkbox1" type="checkbox">
                                        <label class="text-muted" for="checkbox1">아이디 기억</label>
                                    </div><a class="link" href="">아이디 찾기</a>
                                    <div class="text-end mt-3">
                                        <button class="btn btn-primary btn-block w-100" type="submit">로그인</button>
                                    </div>
                                </div>
                                <!-- <h6 class="text-muted mt-4 or">Or Sign in with</h6>
                                <div class="social mt-4">
                                    <div class="btn-showcase"><a class="btn btn-light"
                                            href="https://www.linkedin.com/login" target="_blank"><i
                                                class="txt-linkedin" data-feather="linkedin"></i> LinkedIn </a><a
                                            class="btn btn-light" href="https://twitter.com/login?lang=en"
                                            target="_blank"><i class="txt-twitter"
                                                data-feather="twitter"></i>twitter</a><a class="btn btn-light"
                                            href="https://www.facebook.com/" target="_blank"><i class="txt-fb"
                                                data-feather="facebook"></i>facebook</a></div>
                                </div> -->
                                <p class="mt-4 mb-0 text-center">계정이 없으신가요?<a class="ms-2"
                                        href="<c:url value='/admin/adminRegister'/>">회원가입</a></p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- latest jquery-->
        <script src="../admin/js/jquery-3.5.1.min.js"></script>
        <!-- Bootstrap js-->
        <script src="../admin/js/bootstrap/bootstrap.bundle.min.js"></script>
        <!-- feather icon js-->
        <script src="../admin/js/icons/feather-icon/feather.min.js"></script>
        <script src="../admin/js/icons/feather-icon/feather-icon.js"></script>
        <!-- scrollbar js-->
        <!-- Sidebar jquery-->
        <script src="../admin/js/config.js"></script>
        <!-- Plugins JS start-->
        <!-- Plugins JS Ends-->
        <!-- Theme js-->
        <script src="../admin/js/script.js"></script>
        <!-- login js-->
        <!-- Plugin used-->
    </div>
</body>

</html>