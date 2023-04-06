<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<!-- 해당페이지 js연결 -->

<body>

<%@ include file="/WEB-INF/views/common/topMenu.jsp" %> 

	<div class="hero page-inner overlay" style="background-image: url('/resources/images/header.png'); height:400px;">
		<div class="container">
			<div class="row justify-content-center align-items-center" style="height: 70vh;">
				<div class="col-lg-9 text-center mt-5">
					<h1 class="heading" data-aos="fade-up">주문 완료</h1>
				</div>
			</div>
		</div>
	</div>
	
	<div class="section section-4 bg-light">
		<div class="container">
			<div class="row justify-content-center  text-center mb-5">
				<div class="col-lg-5">
					<h2 class="font-weight-bold heading text-primary mb-4">주문번호 0000000</h2>
					<p class="text-black-50">결제가 완료 되었습니다. 배송이 시작되면 알림 드리겠습니다.</p>
					<p><a href="#" target="_blank" class="btn btn-primary text-white py-3 px-4">홈으로 이동하기</a></p>
				</div>
			</div>
		</div>
	</div>

<!-- ======= Footer ======= -->
<%@ include file="/WEB-INF/views/common/footer.jsp" %>

    <script src="/resources/js/basic/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/basic/tiny-slider.js"></script>
    <script src="/resources/js/basic/aos.js"></script>
    <script src="/resources/js/basic/navbar.js"></script>
    <script src="/resources/js/basic/counter.js"></script>
    <script src="/resources/js/basic/custom.js"></script>
  </body>
  </html>