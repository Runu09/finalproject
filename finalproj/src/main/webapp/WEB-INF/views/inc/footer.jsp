<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- footer start -->
<footer>
	<div class="footer section-b-space section-t-space" style="padding-left: 10%">
		<div class="container">
			<div class="row order-row">
				<div class="col-xl-3 col-md-6 order-cls">
					<div class="footer-title mobile-title">
						<h5>contact us</h5>
					</div>
					<div class="footer-content">
						<div class="contact-detail">
							<div class="footer-logo">
								<img src="../assets/images/main.png" alt=""
									class="img-fluid blur-up lazyload">
							</div>
							<ul class="contact-list">
								<li><i class="fas fa-map-marker-alt"></i> 서울특별시 서대문구 104-48 </li>
								<li><i class="fas fa-phone-alt"></i> 010 - 1234 - 5678</li>
								<li style="text-transform:none;"><i class="fas fa-envelope"></i> onair4@naver.com</li>
								<li>방문자 수 : <%= application.getAttribute("count") %></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-md-3">
					<div class="footer-space">
						<div class="footer-title">
							<h5>about</h5>
						</div>
						<div class="footer-content">
							<div class="footer-links">
								<ul>
									<li><a href="../about/about.do">회사 소개</a></li>
									<li><a href="<c:url value='/login/login.do'/>">로그인</a></li>
									<li><a href="<c:url value='/member/agreement.do'/>">회원가입</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-md-6">
					<div class="footer-title">
						<h5>our location</h5>
					</div>
					<div class="footer-content">
						<div class="footer-map">
							<div id="map" style="width:260px;height:200px;"></div>
								<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=00724106dd7f78df2178c577988b8039"></script>
								<script>
									var container = document.getElementById('map');
									var options = {
										center: new kakao.maps.LatLng(37.55686964130434, 126.94151351045609),
										level: 3
									};
							
									var map = new kakao.maps.Map(container, options);
									
									// 마커가 표시될 위치입니다 
									var markerPosition  = new kakao.maps.LatLng(37.55686964130434, 126.94151351045609); 

									// 마커를 생성합니다
									var marker = new kakao.maps.Marker({
									    position: markerPosition
									});
									
									// 마커가 지도 위에 표시되도록 설정합니다
									marker.setMap(map);
								</script>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-md-3 order-cls">
					<div class="footer-space">
						<div class="footer-title">
							<h5>고객 지원</h5>
						</div>
						<div class="footer-content">
							<div class="footer-links">
								<ul>
									<li><a href="<c:url value='/customer/notice.do'/>">공지사항</a></li>
									<li><a href="<c:url value='/customer/faq.do'/>">FAQ</a></li>
									<li><a href="<c:url value='/customer/information.do'/>">이용안내</a></li>
									<li><a href="<c:url value='/customer/terms.do'/>">이용약관</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- footer end -->


<!-- tap to top -->
<div class="tap-top">
    <div>
        <i class="fas fa-angle-up"></i>
    </div>
</div>
<!-- tap to top end -->




    <!-- date-time picker js -->
    <script src="../assets/js/date-picker.js"></script>
    
    <!-- fare calender -->
    <script src="../assets/js/fare-calender/main.js"></script>
    <script src="../assets/js/fare-calender/main_1.js"></script>
    <script src="../assets/js/fare-calender/calender-data.js"></script>
    
    <!-- filter js -->
    <script src="../assets/js/filter.js"></script>
    <script src="../assets/js/isotope.min.js"></script>
    
    <!-- price range js -->
    <script src="../assets/js/price-range.js"></script>
    
    <!-- wow js-->
    <script src="../assets/js/wow.min.js"></script>
	
    <!-- footer reveal js -->
    <script src="../assets/js/footer-reveal.min.js"></script>

    <!-- video js-->
    <script src="../assets/js/jquery.vide.min.js"></script>

    <!-- slick js-->
    <script src="../assets/js/slick.js"></script>

    <!-- Bootstrap js-->
    <script src="../assets/js/bootstrap.bundle.min.js"></script>

    <!-- lazyload js-->
    <script src="../assets/js/lazysizes.min.js"></script>

    <!-- Theme js-->
    <script src="../assets/js/script.js"></script>

    <script>
        $('#datepicker').datepicker({
            uiLibrary: 'bootstrap4'
        });
        $('#datepicker1').datepicker({
            uiLibrary: 'bootstrap4'
        });
        new WOW().init();
        
    </script>
    
    <script src="../assets/js/booking.js"></script>
	<script src="../assets/js/selectAirport.js"></script>
</body>

</html>
