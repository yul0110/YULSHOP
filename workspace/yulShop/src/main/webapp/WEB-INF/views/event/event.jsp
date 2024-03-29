<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<body>

<%@ include file="/WEB-INF/views/common/topMenu.jsp" %> 

	<div class="hero page-inner overlay" style="background-image: url('/resources/images/header.png'); height:400px;">

		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-9 text-center mt-5">
					<h1 class="heading" data-aos="fade-up">이벤트</h1>
				</div>
			</div>
		</div>
	</div>

	<div class="section">
		<div class="container">
			<div class="row text-left mb-5">
				<div class="col-12">
					<h2 class="font-weight-bold heading text-primary mb-4">진행중인 이벤트</h2>
				</div>
			</div>
		</div>
	</div>

	<c:forEach var="event" items="${eventList}" varStatus="st">
		<div class="section pt-0">
			<div class="container">
				<a href="/eventDetail?id=${event.id}">
					<div class="row justify-content-between mb-5">
						<div class="col-lg-7 mb-5 mb-lg-0 ${st.count % 2 eq 0 ? '' : 'order-lg-2'}">
							<div class="img-about dots">
								<img src="${event.imgPath}" alt="Image" class="img-fluid">
							</div>
						</div>
						<div class="col-lg-4">
							<div class="d-flex feature-h">
				
				0				<span class="wrap-icon me-3">
									<span class="icon-home2"></span>
								</span>
								<div class="feature-text">
									<h3 class="heading">${event.title} </h3>
									<p class="text-black-50">${event.regDt}</p>   
								</div>
							</div>
						</div>
					</div>
				</a>
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