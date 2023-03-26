<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<body>

<!--  topMenu  -->
<%@ include file="/WEB-INF/views/common/topMenu.jsp" %> 
	
	<div class="hero page-inner overlay" style="background-image: url('/resources/images/yulShop4.jpg');height:370px;">
		<div class="container">
			<div class="row justify-content-center align-items-center" style="height: 50vh;">
				<div class="col-lg-9 text-center mt-5">
					<h1 class="heading" data-aos="fade-up">포인트 내역</h1>
				</div>
			</div>
		</div>
	</div>
	
	
	<div class="section section-4 bg-light">
		<div class="container">
			<div class="row section-counter mt-5">
				<div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
					<div class="counter-wrap mb-5 mb-lg-0">
						<span class="number"><span class="countup text-primary">87000</span>p</span>
						<span class="caption text-black-50">현재 보유</span>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
					<div class="counter-wrap mb-5 mb-lg-0">
						<span class="number"><span class="countup text-primary">1300</span>p</span>
						<span class="caption text-black-50">최근 적립</span>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="500">
					<div class="counter-wrap mb-5 mb-lg-0">
						<span class="number"><span class="countup text-primary">9316</span>p</span>
						<span class="caption text-black-50">최근 사용</span>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="600">
					<div class="counter-wrap mb-5 mb-lg-0">
						<span class="number"><span class="countup text-primary">1574894</span>p</span>
						<span class="caption text-black-50">총 사용</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="section section-properties">
		<div class="container">
			<div id='pointList' class="row">
				<!-- tmple zone -->
				<!-- tmple zone -->
				<!-- tmple zone -->
				
				<div class="col-xs-12 col-sm-6 col-md-6 col-lg-12">
					<br>
					<br>
					<br>
					<div class="property-item mb-30">
						<div class="property-content">
							<div class="price mb-2"><span style="width:100px;">2023.12.11</span><span style="padding-left: 30px;">적립</span><div style="width:150px; float: right;"><span>- 2,000</span> p</div></div>
							<div class="price mb-2"><span style="width:100px;">2023.10.22</span><span style="padding-left: 30px;">경품</span><div style="width:150px; float: right;"><span>+ 6,700</span> p</div></div>
							<div class="price mb-2"><span style="width:100px;">2023.10.11</span><span style="padding-left: 30px;">사용</span><div style="width:150px; float: right;"><span>+ 90,000</span> p</div></div>
						</div>
					</div> <!-- .item -->
				</div>
				
				<!-- tmple zone -->
				<!-- tmple zone -->
			</div>
		</div>
	</div>
	<div class="row align-items-center py-5">
		<div class="col-lg-3">
		</div>
		<div class="col-lg-6 text-center">
			<div class="custom-pagination">
				<a href="#">1</a>
				<a href="#" class="active">2</a>
				<a href="#">3</a>
				<a href="#">4</a>
				<a href="#">5</a>
			</div>
		</div>
	</div>
	
<!-- ======= Footer ======= -->
<%@ include file="/WEB-INF/views/common/footer.jsp" %>

	<!--    JS Files   -->
	<script src="/resources/js/basic/bootstrap.bundle.min.js"></script>
	<script src="/resources/js/basic/tiny-slider.js"></script>
	<script src="/resources/js/basic/aos.js"></script>
	<script src="/resources/js/basic/navbar.js"></script>
	<script src="/resources/js/basic/counter.js"></script>
	<script src="/resources/js/basic/custom.js"></script>
	   
</body>
</html>
