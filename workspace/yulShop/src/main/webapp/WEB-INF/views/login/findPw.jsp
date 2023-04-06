<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<!-- 해당페이지 js연결 -->
<script src="/resources/js/login/findPw.js"></script>

<body>

<!--  topMenu  -->
<%@ include file="/WEB-INF/views/common/topMenu.jsp" %> 

	<div class="hero page-inner overlay" style="background-image: url('/resources/images/fullHeader.jpg'); height:700px;">
		<div class="container">
			<div class="row2 row justify-content-center align-items-center"> 
				<div class="col-lg-9 text-center mt-5" >
					<br>
					<br>
					<br>
					<br>
					<h1 class="heading" data-aos="fade-up">비밀번호 찾기</h1>
					<br>
					<form action="#" class="narrow-w form-search d-flex align-items-stretch mb-3 text-center" data-aos="fade-up" data-aos-delay="200">
						<input type="text" id="userIdData" class="form-control px-4" width="5px" maxlength="15" placeholder="아이디를 입력해주세요.">
					</form>
					<form action="#" class="narrow-w form-search d-flex align-items-stretch mb-3 text-center" data-aos="fade-up" data-aos-delay="200">
						<input type="text" id="userNmData" class="form-control px-4" width="5px" maxlength="15" placeholder="이름을 입력해주세요.">
					</form>
					<form action="#" class="narrow-w form-search d-flex align-items-stretch mb-3" data-aos="fade-up" data-aos-delay="200">
						<input type="text" id="userPnoData"  class="form-control px-4" maxlength="15" placeholder="휴대폰 번호를 입력해주세요. (ex 010123456789">		
					</form>
					<br>
					<button type="button" id="findPwAjax" class="btn btn-primary" style="width:10em" >비밀번호찾기</button>
					<br><br><br>
					<nav aria-label="breadcrumb" data-aos="fade-up" data-aos-delay="200">
						<ol class="breadcrumb text-center justify-content-center">
							<li class="breadcrumb-item "><a href="/join">♡회원가입♡</a></li>
							<li class="breadcrumb-item "><a href="/findId">아이디 찾기</a></li>
						</ol>
					</nav>	
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