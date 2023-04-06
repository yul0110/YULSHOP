<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--   집코드   -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!--  header  -->
<%@ include file="/WEB-INF/views/common/header.jsp"%>

<!-- 해당페이지 js연결 -->
<script src="/resources/js/myPage/memberUpdate.js"></script>

<body>

<!--  topMenu  -->
<%@ include file="/WEB-INF/views/common/topMenu.jsp"%>

	<div class="hero page-inner overlay" style="background-image: url('/resources/images/fullHeader.jpg'); height:950px;">
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
					<h1 class="heading" data-aos="fade-up" style="font-size: 40px;">회원 정보 수정</h1>
					<br>
					<form action="/joinusAjax" id='joinform' name='joinform'
						method="post" class="php-email-form">
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="userId" id="userId" class="form-control px-4" value="${memberData.userId}" required readonly>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="password" name="pw" id="pw" class="form-control px-4"  maxlength="30" placeholder="비밀번호 8~30자 영문,숫자,특수문자!@#$%^*,./" required>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="password" name="pwc" id="pwc" class="form-control px-4" style="width: 26em; text-transform: lowercase" maxlength="30" placeholder="비밀번호 확인" required>
							<button type="button" id="pwUpdateAjax"  class="btn btn-primary" style="width: 11em">비밀번호 수정</button>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="nm" id="nm" value="${memberData.nm}" class="form-control px-4" required readonly>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="birth" id="birth" value="${memberData.birth}" class="form-control px-4" required readonly>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="pno" id="pno" pattern="[0-9]+" value="${memberData.pno}" class="form-control px-4" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required readonly>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="addr1" id="addr1" value="${memberData.addr1}" class="form-control px-4" maxlength="50" placeholder="주소" required readonly>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="addr2" id="addr2" value="${memberData.addr2}" class="form-control px-4" maxlength="100" placeholder="상세 주소" required>
						</div>
						<br>
						<button type="button" class="btn btn-primary" id="memberUpdateAjax" style="width: 10em">수정하기</button>
						<br> <br> <br>
					</form>
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