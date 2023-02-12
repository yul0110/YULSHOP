<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/bo/header.jsp"%>

<!-- 해당페이지 js연결 -->
<script src="/resources/js/bo/boEventReg.js"></script>

<body>
 
<!--  topMenu  -->
<%@ include file="/WEB-INF/views/bo/topMenu.jsp"%>

	<div>
		<div class="container">
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<div class="row2 row justify-content-center align-items-center">
				<!-- 특수마크업 1 -->
				<div class="col-lg-9 text-center mt-5">
					<h1 class="heading" data-aos="fade-up" style="font-size: 40px;">이벤트 등록</h1>
					<br><br><br>
					<form action="/joinusAjax" id='joinform' name='joinform'
						method="post" class="php-email-form">
		
						<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<textarea name="" id=""  maxlength="1000"  placeholder="이벤트기간" style= "width: 100%; height: 40px;" required></textarea>
						</div>
						<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<textarea name="info" id="info"  maxlength="1000"  placeholder="상품정보" style= "width: 100%; height: 40px;" required></textarea>
						</div>
						<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<textarea name="descliption" id="descliption" maxlength="1000"  placeholder="상품상세" style= "width: 100%; height: 40px;" required></textarea>
						</div>	
						<br>
						<button type="button" class="btn btn-primary" id="uploadAjax" style="width: 10em">등록하기</button>
						<br> <br> <br>
					</form>  <!-- End Contact Form -->
				</div>
			</div> 
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