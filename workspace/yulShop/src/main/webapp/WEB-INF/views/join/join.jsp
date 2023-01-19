<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--   집코드   -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!--  header  -->
<%@ include file="/WEB-INF/views/common/header.jsp"%>

<!-- 해당페이지 js연결 -->
<script src="/resources/js/join/join.js"></script>

<body>

<!--  topMenu  -->
<%@ include file="/WEB-INF/views/common/topMenu.jsp"%>

	<div class="hero page-inner overlay"
		style="background-image: url('/resources/images/yulShop4.jpg'); height: 1000px;">
		<div class="container">
			<br> <br> <br> <br> <br> <br> <br>
			<div class="row2 row justify-content-center align-items-center">
				<!-- 특수마크업 1 -->
				<div class="col-lg-9 text-center mt-5">
					<h1 class="heading" data-aos="fade-up" style="font-size: 40px;">회원가입</h1>
					<br>
					<form action="/joinusAjax" id='joinform' name='joinform'
						method="post" class="php-email-form">
						<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="userId" id="userId"class="form-control px-4" style="width: 26em; text-transform: lowercase"
								 maxlength="15" placeholder="아이디 8~15자 영문,숫자" required>
							<button type="button" id="idCheck" class="btn btn-primary" style="width: 10em">중복 확인</button>
							<input type="hidden" id="idCheckFlag"/>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="password" name="pw" id="pw" class="form-control px-4" maxlength="30" placeholder="비밀번호 8~30자 영문,숫자,특수문자!@#$%^*,./" required>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="password" name="pwc" id="pwc" class="form-control px-4" maxlength="30" placeholder="비밀번호 확인" required>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="nm" id="nm" class="form-control px-4" maxlength="10" placeholder="이름" required>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="birth" id="birth" class="form-control px-4" maxlength="6" placeholder="생년월일 6자리 예) 920110" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="pno" id="pno" pattern="[0-9]+" class="form-control px-4" style="width: 26em" maxlength="11" placeholder="휴대폰 번호" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required>
							<button type="button" class="btn btn-primary" style="width: 10em">인증</button>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="addr1" id="addr1" class="form-control px-4" maxlength="50" placeholder="주소" required readonly>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="addr2" id="addr2" class="form-control px-4" maxlength="100" placeholder="상세 주소" required>
						</div>
						<br>
						<button type="button" class="btn btn-primary" id="joinusAjax"
							style="width: 10em">회원가입</button>
						<br> <br> <br>
					</form>  <!-- End Contact Form -->
				</div>
			</div>
		</div>
	</div>

	<!-- ======= Footer ======= -->
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>

	<!--   js   -->
	<script src="/resources/js/basic/bootstrap.bundle.min.js"></script>
	<script src="/resources/js/basic/tiny-slider.js"></script>
	<script src="/resources/js/basic/aos.js"></script>
	<script src="/resources/js/basic/navbar.js"></script>
	<script src="/resources/js/basic/counter.js"></script>
	<script src="/resources/js/basic/custom.js"></script>
	
</body>
</html>