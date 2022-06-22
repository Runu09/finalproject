<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script type="text/javascript" src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
<script type="text/javascript">	
	$(function(){
		$('.arr li').click(function(){
			var acity=$(this).find('h5').text();
			setArrival(acity)
		});
	});
	
	
</script>

<ul class="arr">
	<li><a href="#">
			<h5>무안</h5>
			<h6>Muan</h6> <span>NAARKJB</span>
	</a></li>
	<li><a href="#">
			<h5>광주</h5>
			<h6>Gwangju</h6> <span>NAARKJJ</span>
	</a></li>
	<li><a href="#">
			<h5>군산</h5>
			<h6>Gunsan</h6> <span>NAARKJK</span>
	</a></li>
	<li><a href="#">
			<h5>여수</h5>
			<h6>Yeosu</h6> <span>NAARKJY</span>
	</a></li>
	<li><a href="#">
			<h5>원주</h5>
			<h6>Wonju</h6> <span>NAARKNW</span>
	</a></li>
	<li><a href="#">
			<h5>양양</h5>
			<h6>Yangyang</h6> <span>NAARKNY</span>
	</a></li>
	<li><a href="#">
			<h5>제주</h5>
			<h6>Jeju</h6> <span>NAARKPC</span>
	</a></li>
	<li><a href="#">
			<h5>김해</h5>
			<h6>Kimhae</h6> <span>NAARKPK</span>
	</a></li>
	<li><a href="#">
			<h5>사천</h5>
			<h6>Sachen</h6> <span>NAARKPS</span>
	</a></li>
	<li><a href="#">
			<h5>울산</h5>
			<h6></h6> <span>NAARKPU</span>
	</a></li>
	<li><a href="#">
			<h5>인천</h5>
			<h6>Incheon</h6> <span>NAARKSI</span>
	</a></li>
	<li><a href="#">
			<h5>김포</h5>
			<h6>Gimpo</h6> <span>NAARKSS</span>
	</a></li>
	<li><a href="#">
			<h5>포항</h5>
			<h6>Pohang</h6> <span>NAARKTH</span>
	</a></li>
	<li><a href="#">
			<h5>대구</h5>
			<h6>Daegu</h6> <span>NAARKTN</span>
	</a></li>
	<li><a href="#">
			<h5>청주</h5>
			<h6>Cheonju</h6> <span>NAARKTU</span>
	</a></li>
</ul>