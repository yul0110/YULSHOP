<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/bo/header.jsp"%>

<!-- 해당페이지 js연결 -->
<script src="/resources/js/join/join.js"></script>

<body>

<!--  topMenu  -->
<%@ include file="/WEB-INF/views/bo/topMenu.jsp"%>

	<div class="hero page-inner overlay"
		style="background-image: url('/resources/images/yulShop4.jpg'); height: 1500px;">
		<div class="container">
			<br> <br> <br> <br> <br> <br> <br>
			<div class="row2 row justify-content-center align-items-center">
				<!-- 특수마크업 1 -->
				<div class="col-lg-9 text-center mt-5">
					<h1 class="heading" data-aos="fade-up" style="font-size: 40px;">상품등록</h1>
					<br><br><br>
					<form action="/joinusAjax" id='joinform' name='joinform'
						method="post" class="php-email-form">
						<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="goodsNo" id="goodsNo" class="form-control px-4" maxlength="30" placeholder="상품번호" required>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="nm" id="nm" class="form-control px-4" maxlength="30" placeholder="상품이름" required>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="price" id="price" pattern="[0-9]+" class="form-control px-4" maxlength="15" placeholder="가격" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="dprice" id="dprice" pattern="[0-9]+" class="form-control px-4" maxlength="15" placeholder="할인가격" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="wareHousing" id="wareHousing" class="form-control px-4" maxlength="50" placeholder="입고일자" required>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="inventory" id="inventory" class="form-control px-4" maxlength="100" placeholder="재고수량" required>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="fabric" id="fabric" class="form-control px-4" maxlength="500" placeholder="소재" required>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="wasing" id="wasing" class="form-control px-4" maxlength="500" placeholder="세탁방법" required>
						</div>
						
						
						
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="checkbox" name="wasing" id="wasing" class="" maxlength="500" placeholder="세탁방법" required>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="radio" name="wasing" id="wasing" class="" maxlength="500" placeholder="세탁방법" required>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<select id="hz" onchange="alert('1');">

							  <option value="">소재
							
							  <option value="HTML">HTML
							
							  <option value="CSS">CSS
							
							  <option value="JS">JS
							
							</select>
						</div>
						
						
						
						<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center" >	
							<input type="file" name="uploadFile" class="form-control px-4" onchange="alert('1');">
							<img id="preview" src="" />
						<button type="button" id="uploadAjax" class="btn btn-primary" style="width:10em" >업로드</button>
						</div>	
						
						
						
						<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<textarea name="info" id="info" class="form-control px-4" maxlength="500" placeholder="상품정보" style= "width: 100%; height: 20%; border: none; resize: none;" required></textarea>
						</div>
						<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<textarea name="descliption" id="descliption" class="form-control px-4" maxlength="500"  placeholder="상품상세" style= "width: 1000px; height: 20%; border: none; resize: none;" required></textarea>
						</div>
						<br>
						<button type="button" class="btn btn-primary" id="joinusAjax"
							style="width: 10em">등록하기</button>
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