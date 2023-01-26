<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<!-- 해당페이지 js연결 -->
<script src="/resources/js/imgUpload/imgUpload.js"></script>

<body>
<!--  topMenu  -->
<%@ include file="/WEB-INF/views/common/topMenu.jsp" %> 

	<div class="hero page-inner overlay" style="background-image: url('/resources/images/yulShop4.jpg'); height:700px;">
		<div class="container">
			<div class="row2 row justify-content-center align-items-center"> 
				<div class="col-lg-9 text-center mt-5" >
					<h1 class="heading" data-aos="fade-up">파일 업로드</h1>
					<br><br><br>	
					<input type="file" name="uploadFile" class="form-control px-4" onchange="yul.page.loadFile();">
					<br><br>
					<img id="preview" src="" />
					<!-- 
					<button type="button" id="uploadAjax" class="btn btn-primary" style="width:10em" >업로드하기</button>
					 -->
				</div>
			</div>
		</div>
	</div>
	
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