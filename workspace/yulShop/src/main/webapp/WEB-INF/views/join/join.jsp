<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<body>

<%@ include file="/WEB-INF/views/common/topMenu.jsp" %> 

	<div class="hero page-inner overlay" style="background-image: url('/resources/images/yulShop4.jpg'); height:700px;">
		<div class="container">
			<div class="row2 row justify-content-center align-items-center"> <!-- 특수마크업 1 -->
				<div class="col-lg-9 text-center mt-5" >
					<h1 class="heading" data-aos="fade-up">회원가입</h1>
					<form action="#" class="narrow-w form-search d-flex align-items-stretch mb-3 text-center" data-aos="fade-up" data-aos-delay="200">
						<input type="text" class="form-control px-4" width="5px" maxlength="20" placeholder="아이디">
					</form>
					<form action="#" class="narrow-w form-search d-flex align-items-stretch mb-3 text-center" data-aos="fade-up" data-aos-delay="200">
						<input type="text" class="form-control px-4" width="5px" maxlength="20" placeholder="비밀번호">
					</form>
					<form action="#" class="narrow-w form-search d-flex align-items-stretch mb-3 text-center" data-aos="fade-up" data-aos-delay="200">
						<input type="text" class="form-control px-4" width="5px" maxlength="20" placeholder="비밀번호 확인">
					</form>
					<form action="#" class="narrow-w form-search d-flex align-items-stretch mb-3 text-center" data-aos="fade-up" data-aos-delay="200">
						<input type="text" class="form-control px-4" width="5px" maxlength="20" placeholder="이름">
					</form>
					<form action="#" class="narrow-w form-search d-flex align-items-stretch mb-3 text-center" data-aos="fade-up" data-aos-delay="200">
						<input type="text" class="form-control px-4" width="5px" maxlength="100" placeholder="주소">
					</form>
					<form action="#" class="narrow-w form-search d-flex align-items-stretch mb-3 text-center" data-aos="fade-up" data-aos-delay="200">
						<input type="text" class="form-control px-4" width="5px" maxlength="100" placeholder="상세주소">
					</form>
					<br>
					<button type="submit" class="btn btn-primary">회원가입</button>
					<br>
					<br>
					<br>
					<div class="col-lg-9 text-center">
						<!-- 버려진애 -->
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="site-footer">
            <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed by yul<a href="https://untree.co">Untree.co</a> <!-- License information: https://untree.co/license/ -->
            </p>
    </div> <!-- /.site-footer -->

    <!-- Preloader -->
    <div id="overlayer"></div>
    <div class="loader">
    	<div class="spinner-border" role="status">
    		<span class="visually-hidden">Loading...</span>
    	</div>
    </div>

    <script src="/resources/js/basic/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/basic/tiny-slider.js"></script>
    <script src="/resources/js/basic/aos.js"></script>
    <script src="/resources/js/basic/navbar.js"></script>
    <script src="/resources/js/basic/counter.js"></script>
    <script src="/resources/js/basic/custom.js"></script>
  </body>
  </html>