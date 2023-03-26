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
					<h1 class="heading" data-aos="fade-up">나의 찜리스트</h1>
				</div>
			</div>
		</div>
	</div>

	<div class="section bg-light">
		<div class="container">
			<div class="row">
			
				<div class="col-6 col-lg-3"  data-aos="fade-up" data-aos-delay="300">
					<div class="box-feature mb-4">
						<img alt="이미지가 없습니다." src="/loadImg/imgYulshop/yul20235730055726.jpg" onerror="this.src='/resources/images/white.jpg'" style="max-width: 160px;">
						<br>
						<br>
						<p><a href="#" class="learn-more">삭제하기</a></p>
					</div>
				</div>
				<div class="col-6 col-lg-3"  data-aos="fade-up" data-aos-delay="300">
					<div class="box-feature mb-4">
						<img alt="이미지가 없습니다." src="/loadImg/imgYulshop/yul20235730055726.jpg" onerror="this.src='/resources/images/white.jpg'" style="max-width: 160px;">
						<br>
						<br>
						<p><a href="#" class="learn-more">삭제하기</a></p>
					</div>
				</div>
				<div class="col-6 col-lg-3"  data-aos="fade-up" data-aos-delay="300">
					<div class="box-feature mb-4">
						<img alt="이미지가 없습니다." src="/loadImg/imgYulshop/yul20235730055726.jpg" onerror="this.src='/resources/images/white.jpg'" style="max-width: 160px;">
						<br>
						<br>
						<p><a href="#" class="learn-more">삭제하기</a></p>
					</div>
				</div>
				<div class="col-6 col-lg-3"  data-aos="fade-up" data-aos-delay="300">
					<div class="box-feature mb-4">
						<img alt="이미지가 없습니다." src="/loadImg/imgYulshop/yul20235730055726.jpg" onerror="this.src='/resources/images/white.jpg'" style="max-width: 160px;">
						<br>
						<br>
						<p><a href="#" class="learn-more">삭제하기</a></p>
					</div>
				</div>
				<div class="col-6 col-lg-3"  data-aos="fade-up" data-aos-delay="300">
					<div class="box-feature mb-4">
						<img alt="이미지가 없습니다." src="/loadImg/imgYulshop/yul20235730055726.jpg" onerror="this.src='/resources/images/white.jpg'" style="max-width: 160px;">
						<br>
						<br>
						<p><a href="#" class="learn-more">삭제하기</a></p>
					</div>
				</div>
				<div class="col-6 col-lg-3"  data-aos="fade-up" data-aos-delay="300">
					<div class="box-feature mb-4">
						<img alt="이미지가 없습니다." src="/loadImg/imgYulshop/yul20235730055726.jpg" onerror="this.src='/resources/images/white.jpg'" style="max-width: 160px;">
						<br>
						<br>
						<p><a href="#" class="learn-more">삭제하기</a></p>
					</div>
				</div>
				
				
			</div>
		</div>
	</div>

<!-- ======= Footer ======= -->

	<div class="site-footer">
		<div class="row">
			<div class="widget">
				<ul class="list-unstyled links">
				</ul>
			</div> <!-- /.widget -->
		</div> <!-- /.row -->
   		<p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed by Yul  
   			<a href="https://untree.co">Untree.co</a> <!-- License information: https://untree.co/license/ -->
   		</p>
	</div> <!-- /.site-footer -->
	
	<!-- Preloader -->
	<div id="overlayer"></div>
	<div class="loader">
		<div class="spinner-border" role="status">
			<span class="visually-hidden">Loading...</span>
		</div>
	</div>
	
	<!--   js   -->
    <script src="/resources/js/basic/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/basic/tiny-slider.js"></script>
    <script src="/resources/js/basic/aos.js"></script>
    <script src="/resources/js/basic/navbar.js"></script>
    <script src="/resources/js/basic/counter.js"></script>
    <script src="/resources/js/basic/custom.js"></script>
    
 </body>
 </html>