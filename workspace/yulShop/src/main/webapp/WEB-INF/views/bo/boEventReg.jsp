<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/bo/header.jsp"%>

<!-- 해당페이지 js연결 -->
<script src="/resources/js/bo/boEventReg.js"></script>

<body>

<!--  topMenu  -->
<%@ include file="/WEB-INF/views/bo/topMenu.jsp" %> 

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
				<br>
				<br>
				<br>
				<form action="/joinusAjax" id='joinform' name='joinform'
						method="post" class="php-email-form">
				<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
					<textarea name="title" id="title"  maxlength="1000"  placeholder="제목" style="width: 100%; height: 40px;" required></textarea>
				</div>
				<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
					<textarea name="contents" id="contents" maxlength="1000"  placeholder="내용" style="width: 100%; height: 40px;" required></textarea>
				</div>	
				<br> 
				<br> 
				<h1 class="heading" data-aos="fade-up" style="font-size: 30px;">메인 이미지</h1>
				<br> 
				<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center" >	
					<input type="file" name="listImg" id="listImg" class="form-control px-4 fileButton">
				</div>
				<div id='listPreviewZone' class="narrow-w form-search d-flex align-items-stretch mb-3 text-center" >
					<!-- templ zone -->
					<!-- templ zone -->
					<!-- templ zone -->
				</div>  
				<br> 
				<br> 
				<h1 class="heading" data-aos="fade-up" style="font-size: 30px;">디테일 이미지</h1>
				<br> 
				<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center" >	
					<input type="file" name="detailFile" id="detailFile" class="form-control px-4 fileButton">
				</div>
				<div id='detailPreviewZone' class="narrow-w form-search d-flex align-items-stretch mb-3 text-center" >
					<!-- 사진데이터가 들어올 공간 -->
					<!-- 사진데이터가 들어올 공간 -->
					<!-- 사진데이터가 들어올 공간 -->
				</div>
				<br>
				<br>
				<button type="button" class="btn btn-primary" id="eventUploadAjax" style="width: 10em">등록하기</button>
				<br> 
				<br> 
				<br>
				</form>  <!-- End Contact Form -->
			</div>
		</div> 
	</div>
</div>
	
	<!--   data templ zone   -->
	
	<!--   listImg   -->
	<img id="listImgTempl" src="" class="" style="display:none; width: 100px; height: 100px;"/>
	<input type="hidden" id="listImgPathTempl" class="" value="" />
	<!--   listImg END   -->
	
	<!--   detailImg   -->
	<img id="detailImgTempl" src="" class="" style="display:none; width: 100px; height: 100px;"/>
	<input type="hidden" id="detailImgPathTempl" class="" value="" />
	<!--   detailImg END   -->	
	
	<!--  zone END    -->


	<!--   js   -->
	<script src="/resources/js/basic/bootstrap.bundle.min.js"></script>
	<script src="/resources/js/basic/tiny-slider.js"></script>
	<script src="/resources/js/basic/aos.js"></script>
	<script src="/resources/js/basic/navbar.js"></script>
	<script src="/resources/js/basic/counter.js"></script>
	<script src="/resources/js/basic/custom.js"></script>
	
</body>
</html>