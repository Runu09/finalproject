<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- footer start -->
<footer>
	<div class="footer section-b-space section-t-space">
		<div class="container">
			<div class="row order-row">
				<div class="col-xl-2 col-md-6 order-cls">
					<div class="footer-title mobile-title">
						<h5>contact us</h5>
					</div>
					<div class="footer-content">
						<div class="contact-detail">
							<div class="footer-logo">
								<img src="../assets/images/main.png" alt=""
									class="img-fluid blur-up lazyload">
							</div>
							<!-- <p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type
								specimen book. It has survived not only five centuries</p> -->
							<ul class="contact-list">
								<li><i class="fas fa-map-marker-alt"></i> 서울특별시 서대문구<br> 104-48 </li>
								<li><i class="fas fa-phone-alt"></i> 010 - 1234 - 5678</li>
								<li><i class="fas fa-envelope"></i> onair4@naver.com</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-xl-2 col-md-3">
					<div class="footer-space">
						<div class="footer-title">
							<h5>about</h5>
						</div>
						<div class="footer-content">
							<div class="footer-links">
								<ul>
									<li><a href="../about/about.do">회사 소개</a></li>
									<li><a href="#">로그인</a></li>
									<li><a href="#">회원가입</a></li>
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
							<!-- <iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d193595.1583091352!2d-74.11976373946229!3d40.69766374859258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sin!4v1563449626439!5m2!1sen!2sin"
								allowfullscreen></iframe> -->
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
				<div class="col-xl-2 col-md-3 order-cls">
					<div class="footer-space">
						<div class="footer-title">
							<h5>고객 지원</h5>
						</div>
						<div class="footer-content">
							<div class="footer-links">
								<ul>
									<li><a href="#">공지사항</a></li>
									<li><a href="<c:url value='/customer/faq.do'/>">FAQ</a></li>
									<li><a href="../customer/information.do">이용안내</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- <div class="col-xl-3 col-md-6">
					<div class="footer-title">
						<h5>new topics</h5>
					</div>
					<div class="footer-content">
						<div class="footer-blog">
							<div class="media">
								<div class="img-part">
									<a href="#"><img
										src="../assets/images/cab/blog-footer/1.jpg"
										class="img-fluid blur-up lazyload" alt=""></a>
								</div>
								<div class="media-body">
									<h5>recent news</h5>
									<p>Lorem Ipsum is simply dummy text of the printing and
										typesetting industry. Lorem Ipsum has been the industry's
										standard dummy text ever since the 1500s, when an unknown
										printer took a galley of type and scrambled it to make a type
										specimen book. It has survived not only five centuries</p>
								</div>
							</div>
							<div class="media">
								<div class="img-part">
									<a href=""><img
										src="../assets/images/cab/blog-footer/2.jpg"
										class="img-fluid blur-up lazyload" alt=""></a>
								</div>
								<div class="media-body">
									<h5>recent news</h5>
									<p>Lorem Ipsum is simply dummy text of the printing and
										typesetting industry. Lorem Ipsum has been the industry's
										standard dummy text ever since the 1500s, when an unknown
										printer took a galley of type and scrambled it to make a type
										specimen book. It has survived not only five centuries</p>
								</div>
							</div>
						</div>
					</div>
				</div> -->
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


<!-- latest jquery-->
<script src="../assets/js/jquery-3.5.1.min.js"></script>

<!-- popper js-->
<script src="../assets/js/popper.min.js"></script>

<!-- video js-->
<script src="../assets/js/jquery.vide.min.js"></script>

<!-- tilt effect js-->
<script src="../assets/js/tilt.jquery.js"></script>

<!-- counter js -->
<script src="../assets/js/jquery.counterup.min.js"></script>
<script src="../assets/js/jquery.waypoints.min.js"></script>

<!-- slick js-->
<script src="../assets/js/slick.js"></script>

<!-- Bootstrap js-->
<script src="../assets/js/bootstrap.js"></script>

<!-- wow js-->
<script src="../assets/js/wow.min.js"></script>

<!-- lazyload js-->
<script src="../assets/js/lazysizes.min.js"></script>

<!-- Theme js-->
<script src="../assets/js/script.js"></script>

<script>
        new WOW().init();
</script>


</body>

</html>
