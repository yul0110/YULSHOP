<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<body>

<%@ include file="/WEB-INF/views/common/topMenu.jsp" %> 

	<div class="hero page-inner overlay" style="background-image: url('/resources/images/yulShop4.jpg'); height:1000px;">
		<div class="container">
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
			<div class="row2 row justify-content-center align-items-center"> <!-- 특수마크업 1 -->
				<div class="col-lg-9 text-center mt-5" >
					<h1 class="heading" data-aos="fade-up" style="font-size:40px;">회원가입</h1>
					<br>		
					<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
						<input type="text" name="userId" class="form-control px-4" style="width:26em" maxlength="30" placeholder="아이디 8~30자 영문,숫자" required>
						<button type="button" class="btn btn-primary" style="width:10em">중복 확인</button>
					</div>
					<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
						<input type="text" name="pw" class="form-control px-4"  maxlength="30" placeholder="비밀번호 8~30자 영문,숫자,특수문자" required>
					</div>
					<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
						<input type="text" name="pwc" class="form-control px-4"  maxlength="30" placeholder="비밀번호 확인" required>
					</div>				 
					<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
						<input type="text" name="nm" class="form-control px-4"  maxlength="20" placeholder="이름" required>
					</div>
					<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
						<input type="text" name="pno" class="form-control px-4" style="width:26em" maxlength="11" placeholder="휴대폰 번호" required>
						<button type="button" class="btn btn-primary" style="width:10em">인증</button>
					</div>
					<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
						<input type="text" name="addr1" class="form-control px-4" maxlength="50" placeholder="주소" required readonly>
					</div>
					<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
						<input type="text" name="addr2" class="form-control px-4" maxlength="100" placeholder="상세 주소" required>
					</div>		
					<br>
					<button type="button" class="btn btn-primary" style="width:10em" >회원가입</button>
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