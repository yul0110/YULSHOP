<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<body>

<%@ include file="/WEB-INF/views/common/topMenu.jsp" %> 

<script src="/resources/js/event/eventDetail.js"></script>

	<div class="hero page-inner overlay" style="background-image: url('/resources/images/header.png'); height:400px;">

		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-9 text-center mt-5">
					<h1 class="heading" data-aos="fade-up">이벤트를 소개합니다</h1>
					<nav aria-label="breadcrumb" data-aos="fade-up" data-aos-delay="200">
						<ol class="breadcrumb text-center justify-content-center">
							<li class="breadcrumb-item "><a href="/event">이벤트홈으로 돌아가기</a></li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	
	<c:forEach var="detailEvent" items="${eventDetailList}">
		<div class="section">
			<div class="container">
				<div class="row text-left mb-5 text-center display-flex justify-content-center">
					<div class="col-12">
						<h2 class="font-weight-bold heading text-primary mb-4">${detailEvent.title}</h2>
					</div>
					<br>
					<br>
					<br>
					<br>
					<div class="col-lg-6">
						<p class="text-black-50 text-center">${detailEvent.contents}</p>
					</div>
					<br>
					<br>
					<br>
					<br>
					<div class="col-lg-7 mb-5 mb-lg-0">
						<div class="img-about dots ">
							<img src="${detailEvent.imgPath}" alt="Image" class="img-fluid">
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
	
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