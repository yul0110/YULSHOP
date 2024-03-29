<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<!-- 해당페이지 js연결 -->
<script src="/resources/js/myPage/memberResign.js"></script>

<body>
<!--  topMenu  -->
<%@ include file="/WEB-INF/views/common/topMenu.jsp" %> 

	<div class="hero page-inner overlay" style="background-image: url('/resources/images/fullHeader.jpg'); height:700px;">
		<div class="container">
			<div class="row2 row justify-content-center align-items-center"> 
				<div class="col-lg-9 text-center mt-5" >
					<h1 class="heading" data-aos="fade-up">회원 탈퇴</h1>
					<br><br><br>
					<form action="#" class="narrow-w form-search d-flex align-items-stretch mb-3" data-aos="fade-up" data-aos-delay="200">
						<input type="password" id="userpwData"  class="form-control px-4"   placeholder="비밀번호를 입력해주세요.">		
					</form>
					<br><br>
					<button type="button" id="memberResignAjax" class="btn btn-primary" style="width:10em" >탈퇴</button>
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