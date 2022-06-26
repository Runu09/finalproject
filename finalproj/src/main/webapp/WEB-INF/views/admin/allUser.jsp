<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/adminTop.jsp"%>


  <!-- pre-loader start -->
  <div class="loader-wrapper">
    <img src="../admin/images/loader/loader.gif" alt="loader gif">
  </div>
  <!-- pre-loader End -->

  <!-- tap on top starts-->
  <div class="tap-top"><i data-feather="chevrons-up"></i></div>
  <!-- tap on tap ends-->
  <!-- page-wrapper Start-->
  <div class="page-wrapper compact-wrapper modern-type" id="pageWrapper">

    <!-- Page Body Start-->
    <div class="page-body-wrapper">
      
      <div class="page-body">

        <!-- Container-fluid starts-->
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-12">
              <div class="card">
                <div class="card-header  card-header--2">

                  <div>
                    <h5>유저 조회</h5>
                  </div>

                  <!-- <form class="d-inline-flex">
                    <a href="" class="align-items-center btn btn-theme"> <i
                        data-feather="plus-square"></i>Add New
                    </a>
                  </form> -->

                </div>

                <div class="card-body">
                  <div>
                    <div class="table-responsive table-desi">
                      <table class="user-table table table-striped">
                        <thead>
                          <tr>
                            <th>유저아이디</th>
                            <th>이름</th>
                            <th>전화번호</th>
                            <th>Email</th>
                            <th>주소</th>
                            <th>보유마일리지</th>
                            <th>수정</th>
                            <th>삭제</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td><span class=" d-block">kkw4521</span>
                            </td>
                            <td><a href="#"><span class="d-block ">김관욱</span><span></span></a>
                            </td>
                            <td> 010-1111-2222</td>
                            <td>
                              kkw123@naver.com</td>
                            <td class="font-primary">인천시 계양구</td>
                            <td>
                              <span>1000</span>
                            </td>
                            <td>
                              <a href="javascript:void(0)"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            </td>
                            <td>
                              <a href="javascript:void(0)"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                            </td>
                          </tr>
                          <tr>
                            <td><span class=" d-block">abc9872</span>
                            </td>
                            <td><a href="#"><span class="  d-block">최수창</span><span></span></a>
                            </td>
                            <td> 010-2222-1234</td>
                            <td>cs123@naver.com</td>
                            <td class="font-primary">서울시 강서구</td>
                            <td>
                              <span>300</span>
                            </td>
                            <td>
                              <a href="javascript:void(0)"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            </td>
                            <td>
                              <a href="javascript:void(0)"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                            </td>
                          </tr>
                          <tr>
                            <td><span class=" d-block">kim321</span>
                            </td>
                            <td><a href="#"><span class="  d-block">김준석</span><span></span></a>
                            </td>
                            <td> 010-9999-1234</td>
                            <td>Lucy@gmail.com</td>
                            <td class="font-primary">서울시 은평구</td>
                            <td>
                              <span>5400</span>
                            </td>
                            <td>
                              <a href="javascript:void(0)"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            </td>
                            <td>
                              <a href="javascript:void(0)"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                            </td>
                          </tr>
                          <tr>
                            <td><span class=" d-block">kim877</span>
                            </td>
                            <td><a href="#"><span class="  d-block"> 김소연</span><span></span></a>
                            </td>
                            <td> 010-1265-1550</td>
                            <td>Straight@gmail.com</td>
                            <td class="font-primary">서울시 서대문구</td>
                            <td>
                              <span>450</span>
                            </td>
                            <td>
                              <a href="javascript:void(0)"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            </td>
                            <td>
                              <a href="javascript:void(0)"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                            </td>
                          </tr>
                          <tr>
                            <td><span>lee9645</span>
                            </td>
                            <td><a href="#"><span class="  d-block">이새별</span><span></span></a>
                            </td>
                            <td> 010-9231-8122</td>
                            <td>Millett@naver.com</td>
                            <td class="font-primary"> 서울시 강남구</td>
                            <td>
                              <span>3900</span>
                            </td>
                            <td>
                              <a href="javascript:void(0)"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            </td>
                            <td>
                              <a href="javascript:void(0)"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                            </td>
                          </tr>
                          <tr>
                            <td><span>lee8755</span>
                            </td>
                            <td><a href="#"><span class="  d-block">이창수</span><span></span></a>
                            </td>
                            <td> 010-4342-8122</td>
                            <td>czxc@nate.com</td>
                            <td class="font-primary">서울시 중구</td>
                            <td>
                              <span>500</span>
                            </td>
                            <td>
                              <a href="javascript:void(0)"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            </td>
                            <td>
                              <a href="javascript:void(0)"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                            </td>
                          </tr>
                          <tr>
                            <td><span>hyok</span>
                            </td>
                            <td><a href="#"><span class="  d-block">김효건</span><span></span></a>
                            </td>
                            <td> 010-2244-7026</td>
                            <td>Kevin@nate.com</td>
                            <td class="font-primary">서울시 마포구</td>
                            <td>
                              <span>900</span>
                            </td>
                            <td>
                              <a href="javascript:void(0)"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            </td>
                            <td>
                              <a href="javascript:void(0)"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                            </td>
                          </tr>
                          <tr>
                            <td><span>chlwo123</span>
                            </td>
                            <td><a href="#"><span class="  d-block">최재훈</span><span></span></a>
                            </td>
                            <td> 010-1649-7283</td>
                            <td>Dillon@nate.com</td>
                            <td class="font-primary">서울시 은평구</td>
                            <td>
                              <span>600</span>
                            </td>
                            <td>
                              <a href="javascript:void(0)"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            </td>
                            <td>
                              <a href="javascript:void(0)"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                            </td>
                          </tr>
                          <tr>
                            <td><span>god123</span>
                            </td>
                            <td><a href="#"><span class="  d-block">김진욱</span><span></span></a>
                            </td>
                            <td> 010-7655-6166</td>
                            <td>god1234@naver.com</td>
                            <td class="font-primary">서울시 구로구</td>
                            <td>
                              <span>3000</span>
                            </td>
                            <td>
                              <a href="javascript:void(0)"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            </td>
                            <td>
                              <a href="javascript:void(0)"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                            </td>
                          </tr>
                          <tr>
                            <td><span>ohoh123</span>
                            </td>
                            <td><a href="#"><span class="  d-block">오충렬</span><span></span></a>
                            </td>
                            <td> +267-948-4207</td>
                            <td>Johnson@naver.com</td>
                            <td class="font-primary">서울시 송파구</td>
                            <td>
                              <span>2000</span>
                            </td>
                            <td>
                              <a href="javascript:void(0)"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            </td>
                            <td>
                              <a href="javascript:void(0)"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                            </td>
                          </tr>
                          <tr>
                            <td><span>ssg123123</span>
                            </td>
                            <td><a href="#"><span class="  d-block">성상헌</span><span></span></a>
                            </td>
                            <td> 010-9422-7555</td>
                            <td>Dowell@naver.com</td>
                            <td class="font-primary">서울시 동작구</td>
                            <td>
                              <span>02</span>
                            </td>
                            <td>
                              <a href="javascript:void(0)"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            </td>
                            <td>
                              <a href="javascript:void(0)"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
                <div class=" pagination-box">
                  <nav class="ms-auto me-auto " aria-label="...">
                    <ul class="pagination pagination-primary">
                      <li class="page-item "><a class="page-link" href="javascript:void(0)"
                          tabindex="-1">Previous</a>
                      </li>
                      <li class="page-item"><a class="page-link" href="javascript:void(0)">1</a></li>
                      <li class="page-item active"><a class="page-link" href="javascript:void(0)">2 <span
                            class="sr-only">(current)</span></a></li>
                      <li class="page-item"><a class="page-link" href="javascript:void(0)">3</a></li>
                      <li class="page-item"><a class="page-link" href="javascript:void(0)">4</a></li>
                      <li class="page-item"><a class="page-link" href="javascript:void(0)">5</a></li>
                      <li class="page-item"><a class="page-link" href="javascript:void(0)">Next</a></li>
                    </ul>
                  </nav>
                </div>
              </div>
            </div>

          </div>
        </div>

        <!-- Container-fluid Ends-->

        <!-- <div class="container-fluid">
          <!-- footer start
          <footer class="footer">

            <div class="row">
              <div class="col-md-12 footer-copyright text-center">
                <p class="mb-0">Copyright 2021 © Rica theme by pixelstrap </p>
              </div>
            </div>

          </footer> -->
        </div> -->
      </div>
    </div>


  <!--   <!-- Modal -->
    <div class="modal fade " id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
      aria-labelledby="staticBackdropLabel" aria-hidden="true">
      <div class="modal-dialog  modal-dialog-centered">
        <div class="modal-content">

          <div class="modal-body">
            <h5 class="modal-title" id="staticBackdropLabel">Logging Out</h5>
            <p>Are you sure you want to log out?</p>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>

            <div class="button-box">
              <button type="button" class="btn btn--no " data-bs-dismiss="modal">No</button>
              <button type="button" class="btn  btn--yes btn-primary">Yes</button>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div> -->

  <!-- latest jquery-->
  <script src="../admin/js/jquery-3.5.1.min.js"></script>
  <!-- Bootstrap js-->
  <script src="../admin/js/bootstrap/bootstrap.bundle.min.js"></script>
  <!-- feather icon js-->
  <script src="../admin/js/icons/feather-icon/feather.min.js"></script>
  <script src="../admin/js/icons/feather-icon/feather-icon.js"></script>
  <!-- scrollbar js-->
  <script src="../admin/js/scrollbar/simplebar.js"></script>
  <script src="../admin/js/scrollbar/custom.js"></script>

  <!-- customizer js start  -->
  <script src="../admin/js/customizer.js"></script>
  <!-- customizer js start  -->
  <!-- Sidebar jquery-->
  <script src="../admin/js/config.js"></script>
  <!-- Plugins JS start-->
  <script src="../admin/js/sidebar-menu.js"></script>
  <script src="../admin/js/notify/bootstrap-notify.min.js"></script>


  <script src="../admin/js/notify/index.js"></script>
  <script src="../admin/js/typeahead/handlebars.js"></script>
  <script src="../admin/js/typeahead/typeahead.bundle.js"></script>
  <script src="../admin/js/typeahead/typeahead.custom.js"></script>
  <script src="../admin/js/typeahead-search/handlebars.js"></script>
  <script src="../admin/js/typeahead-search/typeahead-custom.js"></script>

  <!-- Plugins JS Ends-->
  <!-- Theme js-->
  <script src="../admin/js/script.js"></script>

  <!-- login js-->
  <!-- Plugin used-->


<%@include file="../inc/adminBottom.jsp"%>