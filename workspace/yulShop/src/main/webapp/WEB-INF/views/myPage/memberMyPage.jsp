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
					<h1 class="heading" data-aos="fade-up">마이페이지</h1>
				</div>
			</div>
		</div>
	</div>

	<div class="section">
		<div class="container">
			<div class="row section-counter mt-2">
				<div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
					<div class="counter-wrap mb-5 mb-lg-0">
						<span class="number"><span class="text-primary">SILVER</span></span>
						<span class="caption text-black-50">등급</span>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
					<div class="counter-wrap mb-5 mb-lg-0">
						<span class="number"><span class="text-primary">5</span></span>
						<span class="caption text-black-50">주문</span>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="500">
					<div class="counter-wrap mb-5 mb-lg-0">
						<span class="number"><span class="text-primary">3</span></span>
						<span class="caption text-black-50">배송중</span>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="600">
					<div class="counter-wrap mb-5 mb-lg-0">
						<span class="number"><span class="text-primary">10,290</span>p</span>
						<span class="caption text-black-50">보유 포인트</span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="section pt-5">
		<div class="container">
			<div class="row justify-content-between mb-5">
				<div class="col-lg-7 mb-5 mb-lg-0 order-lg-4">
					<div class="img-about dots">
						<img src="/resources/images/hero_bg_3.jpg" alt="Image" class="img-fluid">
					</div>
				</div>
				<div class="col-lg-4">
					<div class="d-flex feature-h">
						<span class="wrap-icon-custem me-3">
							<span class="icon-inbox"></span>
						</span>
						<div class="feature-text">
							<a href="/order">
								<h3 class="heading">주문내역</h3>
							</a>
						</div>
					</div>
					
					<div class="d-flex feature-h">
						<span class="wrap-icon-custem me-3">
							<span class="icon-ticket"></span>
						</span>
						<div class="feature-text">
							<a href="/coupon">
								<h3 class="heading">쿠폰</h3>
							</a>
						</div>
					</div>
					
					<div class="d-flex feature-h">
						<span class="wrap-icon-custem me-3">
							<span class="icon-ruble"></span>
						</span>
						<div class="feature-text">
							<a href="/point">
								<h3 class="heading">포인트 내역</h3>
							</a>
						</div>
					</div>

					<div class="d-flex feature-h">
						<span class="wrap-icon-custem me-3">
							<span class="icon-person"></span>
						</span>
						<div class="feature-text">
							<a href="javascript:void(0);">
								<h3 class="heading">나의 정보 수정</h3>
							</a>
						</div>
					</div>

					<div class="d-flex feature-h">
						<span class="wrap-icon-custem me-3">
							<span class="icon-star"></span>
						</span>
						<div class="feature-text">
							<a href="/wish">
								<h3 class="heading">찜리스트</h3>
							</a>
						</div>
					</div>
					<div class="d-flex feature-h">
						<span class="wrap-icon-custem me-3">
							<span class="icon-comments-o"></span>
						</span>
						<div class="feature-text">
							<a href="/inquiry">
								<h3 class="heading">문의내역</h3>
							</a>
						</div>
					</div>
					<div class="d-flex feature-h">
						<span class="wrap-icon-custem me-3">
							<span class="icon-subdirectory_arrow_left"></span>
						</span>
						<div class="feature-text">
							<a href="javascript:void(0);">
								<h3 class="heading">탈퇴하기</h3>
							</a>
						</div>
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
					<li><a href="myPage/memberResign">탈퇴하기</a></li>
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