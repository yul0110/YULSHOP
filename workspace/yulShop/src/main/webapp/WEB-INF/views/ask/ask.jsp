<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<body>

<%@ include file="/WEB-INF/views/common/topMenu.jsp" %> 

	<div class="hero page-inner overlay" style="background-image: url('/resources/images/yulShop4.jpg');height:370px;;">

		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-9 text-center mt-5">
					<h1 class="heading" data-aos="fade-up" style="font-size:50px;">문의하기</h1>

					<nav aria-label="breadcrumb" data-aos="fade-up" data-aos-delay="200">
						<ol class="breadcrumb text-center justify-content-center">
							<li class="breadcrumb-item active text-white-50" aria-current="page">무엇이 궁금하신가요?</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>


	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 mb-5 mb-lg-0" data-aos="fade-up" data-aos-delay="100">
					<div class="contact-info">

						<div class="address mt-2">
							<i class="icon-room"></i>
							<h4 class="mb-2">YUL SHOP 위치</h4>
							<p>신사동<br>힙한 빌딩 2층</p>
						</div>

						<div class="open-hours mt-4">
							<i class="icon-clock-o"></i>
							<h4 class="mb-2">상담 가능 시간</h4>
							<p>
								Sunday-Friday:<br>
								10:00 - 17:00
							</p>
						</div>

						<div class="email mt-4">
							<i class="icon-envelope"></i>
							<h4 class="mb-2">Email:</h4>
							<p>gpal0110@naver.com</p>
						</div>

						<div class="phone mt-4">
							<i class="icon-phone"></i>
							<h4 class="mb-2">Call:</h4>
							<p>010 2447 9276</p>
						</div>

					</div>
				</div>
				<div class="col-lg-8" data-aos="fade-up" data-aos-delay="200">
					<form action="#">
						<div class="row">
							<div class="col-6 mb-3">
								<input type="text" class="form-control" placeholder="아이디">
							</div>
							<div class="col-6 mb-3">
								<input type="email" class="form-control" placeholder="메일">
							</div>
							<div class="col-12 mb-3">
								<input type="text" class="form-control" placeholder="제목">
							</div>
							<div class="col-12 mb-3">
								<textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="내용을 입력해주세요."></textarea>
							</div>

							<div class="col-12">
								<button type="button" class="btn btn-primary" style="width:10em" >문의하기</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div> <!-- /.untree_co-section -->
	
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