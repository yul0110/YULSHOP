<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<body>

<%@ include file="/WEB-INF/views/common/topMenu.jsp" %> 

	<div class="hero page-inner overlay" style="background-image: url('/resources/images/yulShop4.jpg');height:370px;">
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-9 text-center mt-5">
				
				
				
					<h1 class="heading" data-aos="fade-up">
					<input id='currentCode' type="hidden" value="${currentInquiry}" />
					<c:forEach var="inquiry" items="${inquiryList}">
						<c:if test="${inquiry.id eq currentInquiry}">
							${inquiry.title}
						</c:if>
					</c:forEach>
					</h1>
					<h1 class="heading" data-aos="fade-up" style="font-size:50px;">BO 회원문의</h1>
					<nav aria-label="breadcrumb" data-aos="fade-up" data-aos-delay="200">
						<ol class="breadcrumb text-center justify-content-center">
							<li class="breadcrumb-item active text-white-50" aria-current="page">회원 질문</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>

	<div class="section">
		<div id='inquiryList' class="container">
			<!-- tmple zone -->
			<!-- tmple zone -->
			<!-- tmple zone -->
			<!-- tmple zone -->
			<!-- tmple zone -->
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

<!-- templ  -->
	<div id='inquiryNode' class="inquiryDetail" Style='display:none;'>
		<div class="row text-left mb-5">
			<div class="col-lg-6" style="border-style: solid; width: 3%">
				<p class="text-black-50" class="count">1</p>
			</div>
			<div class="col-lg-6" style="border-style: solid; width: 97%">
				<p class="text-black-50 inquiryTitle">이옷은 빵꾸가 나이썽요</p>
			</div>
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