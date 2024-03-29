<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<body>

<!--  topMenu  -->
<%@ include file="/WEB-INF/views/common/topMenu.jsp" %> 

	<div class="hero page-inner overlay" style="background-image: url('/resources/images/header.png'); height:400px;">
		<div class="container">
			<div class="row justify-content-center align-items-center" style="height: 70vh;">
				<div class="col-lg-9 text-center mt-5">
					<h1 class="heading" data-aos="fade-up">쿠폰</h1>
				</div>
			</div>
		</div>
	</div>

	<div class="section bg-light">
		<div class="container">
			<div class="row">
				<c:if test="${not empty couponList}">
					<c:forEach items="${couponList}" var="coupon">
						<div class="col-6 col-lg-3"  data-aos="fade-up" data-aos-delay="300">
							<div class="box-feature mb-4">
								<span class="icon-ticket mb-4 d-block" style='font-size: 60px'></span>
								<h3 class="text-black mb-3 font-weight-bold">${coupon.nm }</h3>
								<p><a href="#" class="learn-more">${coupon.issuedDate }</a></p>
							</div>
						</div>
					</c:forEach>
				</c:if>	
				<!-- ======= 쿠폰이 없는경우 ======= -->
				<c:if test="${empty couponList}">	
					<div class="container">
						<div class="row justify-content-center  text-center mb-5">
							<div class="col-lg-5">
								<h2 class="font-weight-bold heading text-primary mb-4">보유중인 <br>쿠폰이 없습니다.</h2>
							</div>
						</div>
					</div>
				</c:if>
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
			</div> 
		</div>
   		<p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed by Yul  
   			<a href="https://untree.co">Untree.co</a> <!-- License information: https://untree.co/license/ -->
   		</p>
	</div> 
	
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