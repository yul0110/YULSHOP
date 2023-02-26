<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<body>

<%@ include file="/WEB-INF/views/common/topMenu.jsp" %> 

<script src="/resources/js/cs/faq.js"></script>

	<div class="hero page-inner overlay" style="background-image: url('/resources/images/yulShop4.jpg');height:370px;">
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-9 text-center mt-5">
					<h1 class="heading" data-aos="fade-up" style="font-size:50px;">FaQ</h1>
					<nav aria-label="breadcrumb" data-aos="fade-up" data-aos-delay="200">
						<ol class="breadcrumb text-center justify-content-center">
							<li class="breadcrumb-item active text-white-50" aria-current="page">자주 묻는 질문.</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>

	<div class="section bg-light">
		<div class="container">
			<div class="row">
				<div class="col-6 col-lg-3 clickGetList"  data-aos="fade-up" data-type="jl" data-aos-delay="300">
					<div class="box-feature mb-4">
						<span class="flaticon-house mb-4 d-block"></span>
						<h3 class="text-black mb-3 font-weight-bold " >회원가입/로그인</h3>
						<p><a href="#" class="learn-more">Read more</a></p>
						<h1 class="heading" data-aos="fade-up">
						<input id='type' type="hidden" value="jl" />
						</h1>	
					</div>
				</div>
				<div class="col-6 col-lg-3 clickGetList"  data-aos="fade-up" data-type="op" data-aos-delay="400">
					<div class="box-feature mb-4">
						<span class="flaticon-house-2 mb-4 d-block-3"></span>
						<h3 class="text-black mb-3 font-weight-bold " >주문/결제</h3>
						<p><a href="#" class="learn-more">Read more</a></p>
					</div>
				</div>
				<div class="col-6 col-lg-3 clickGetList"  data-aos="fade-up" data-type="bd" data-aos-delay="500">
					<div class="box-feature mb-4">
						<span class="flaticon-building mb-4 d-block"></span>
						<h3 class="text-black mb-3 font-weight-bold ">배송전 변경/취소</h3>
						<p><a href="#" class="learn-more">Read more</a></p>
					</div>
				</div>
				<div class="col-6 col-lg-3 clickGetList"  data-aos="fade-up" data-type="ad" data-aos-delay="600">
					<div class="box-feature mb-4">
						<span class="flaticon-house-3 mb-4 d-block-1"></span>
						<h3 class="text-black mb-3 font-weight-bold ">배송후 교환/반품</h3>
						<p><a href="#" class="learn-more">Read more</a></p>
					</div>
				</div>	

				<div class="col-6 col-lg-3 clickGetList"  data-aos="fade-up" data-type="d" data-aos-delay="300">
					<div class="box-feature mb-4">
						<span class="flaticon-house-4 mb-4 d-block"></span>
						<h3 class="text-black mb-3 font-weight-bold ">배송</h3>
						<p><a href="#" class="learn-more">Read more</a></p>
					</div>
				</div>
				<div class="col-6 col-lg-3 clickGetList"  data-aos="fade-up" data-type="etc" data-aos-delay="400">
					<div class="box-feature mb-4">
						<span class="flaticon-building mb-4 d-block-3"></span>
						<h3 class="text-black mb-3 font-weight-bold ">기타</h3>
						<p><a href="#" class="learn-more">Read more</a></p>
					</div>
				</div>
				<div id ="faqList" class="section">
					<div class="container">
							<!-- tmple zone -->
							<!-- tmple zone -->
							<!-- tmple zone -->
							<!-- tmple zone -->
							<!-- tmple zone -->
					</div>
				</div>
			</div>
		</div>
	</div>
	
<!-- ======= Footer ======= -->
<%@ include file="/WEB-INF/views/common/footer.jsp" %>

<!-- templ  -->

	<div id ='faqNode' class="row text-left mb-5 faqList" Style='display:none;' >
		<div class="col-12" style="border-style: solid; width: 3%">
			<p class="text-black-50 faqId">1</p>
		</div>
		<div class="col-lg-6" style="border-style: solid; width: 47%">
			<p class="text-black-50 faqTitle">바나나 바나나 바나나 바난나나</p>
		</div>
		<div class="col-lg-6" style="border-style: solid; width: 50%">
			<p class="text-black-70  faqContents">포테토오오오오오</p>
		</div>
	</div>
	
<!-- templ  -->


	<!--   js   -->
    <script src="/resources/js/basic/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/basic/tiny-slider.js"></script>
    <script src="/resources/js/basic/aos.js"></script>
    <script src="/resources/js/basic/navbar.js"></script>
    <script src="/resources/js/basic/counter.js"></script>
    <script src="/resources/js/basic/custom.js"></script>
    
</body>
</html>