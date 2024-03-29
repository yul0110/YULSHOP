<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<!-- 해당페이지 js연결 -->
<script src="/resources/js/cs/ask.js"></script>

<body>

<%@ include file="/WEB-INF/views/common/topMenu.jsp" %> 

	<div class="hero page-inner overlay" style="background-image: url('/resources/images/header.png'); height:400px;">
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-9 text-center mt-5">
					<h1 class="heading" data-aos="fade-up">문의하기</h1>
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
							<h4 class="mb-2">Location:</h4>
							<p>43 Raymouth Rd. Baltemoer,<br> London 3910</p>
						</div>

						<div class="open-hours mt-4">
							<i class="icon-clock-o"></i>
							<h4 class="mb-2">Open Hours:</h4>
							<p>
								Sunday-Friday:<br>
								11:00 AM - 2300 PM
							</p>
						</div>

						<div class="email mt-4">
							<i class="icon-envelope"></i>
							<h4 class="mb-2">Email:</h4>
							<p>info@Untree.co</p>
						</div>

						<div class="phone mt-4">
							<i class="icon-phone"></i>
							<h4 class="mb-2">Call:</h4>
							<p>+1 1234 55488 55</p>
						</div>

					</div>
				</div>
				<div class="col-lg-8" data-aos="fade-up" data-aos-delay="200">
					<form action="#">
						<div class="row">
							<div class="col-12 mb-3">
								<input type="text" id="titleData" class="form-control" maxlength="50" placeholder="문의제목" required>
							</div>
							<div class="col-12 mb-3">
								<textarea id="contextData" cols="30" rows="7" class="form-control" maxlength="500" placeholder="문의내용" required></textarea>
							</div>
							<div class="col-6 mb-3">
							<input type="file" name="uploadFile" id="uploadFile" class="form-control px-4 fileButton" >
							</div>
							<div id='listPreviewZone' class="narrow-w form-search d-flex align-items-stretch mb-3 text-center" >
								<!-- 사진데이터가 들어올 공간 -->
								<!-- 사진데이터가 들어올 공간 -->
								<!-- 사진데이터가 들어올 공간 -->
								<!-- 사진데이터가 들어올 공간 -->
								<!-- 사진데이터가 들어올 공간 -->
							</div>
							<br>	
							<div class="col-12">
								<input type="button" id="askAjax" value="문의" class="btn btn-primary">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div> <!-- /.untree_co-section -->

	<!--   data templ zone   -->
	
	<!--   listImg   -->
	<img id="listImgTempl" src="" class="" style= "display:none; width: 100px; height: 100px;"/>
	<input type="hidden" id="filePathTempl" class="" value="" />
	<!--   listImg END   -->


<!-- ======= Footer ======= -->
<%@ include file="/WEB-INF/views/common/footer.jsp" %>

	<!--   js   -->
    <script src="/resources/js/basic/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/basic/tiny-slider.js"></script>
    <script src="/resources/js/basic/aos.js"></script>
    <script src="/resources/js/basic/navbar.js"></script>
    <script src="/resources/js/basic/counter.js"></script>
    <script src="/resources/js/basic/custom.js"></script>
    
</body>
</html>
