<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/bo/header.jsp"%>

<!-- 해당페이지 js연결 -->
<script src="/resources/js/bo/goodsReg.js"></script>

<body>
 
<!--  topMenu  -->
<%@ include file="/WEB-INF/views/bo/topMenu.jsp"%>

	<div class="hero page-inner overlay"
		style="background-image: url('/resources/images/yulShop4.jpg'); height: 1500px;">
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
					<h1 class="heading" data-aos="fade-up" style="font-size: 40px;">상품등록</h1>
					<br><br><br>
					<form action="/joinusAjax" id='joinform' name='joinform'
						method="post" class="php-email-form">
						<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="no" id="no" class="form-control px-4" maxlength="30" placeholder="상품번호" required>
						</div>			
						<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="nm" id="nm" class="form-control px-4" maxlength="30" placeholder="상품이름" required>
						</div>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="price" id="price" pattern="[0-9]+" class="form-control px-4" maxlength="15" placeholder="가격" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required>
						</div>
						<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="dprice" id="dprice" pattern="[0-9]+" class="form-control px-4" maxlength="15" placeholder="할인가격" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" required>
						</div>
						<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<input type="text" name="wareHousing" id="wareHousing" class="form-control px-4" maxlength="50" placeholder="입고일자" required>
						</div>
						<div id='optionAppendTo' class="">
							<b style="font-size:20px; color:white;">옵션</b>
							<b id='optionAdd' style="font-size:30px; color:white;">+</b>
						</div>
						<br>
						<div id="optionZone" class="col-12 narrow-w form-search d-flex align-items-stretch mb-3 text-center">
							<!-- templ zone -->
							<!-- templ zone -->
							<!-- templ zone -->
						</div>
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
						<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center" >	
							<input type="file" name="uploadFile" id="uploadFile" class="form-control px-4 fileButton">
						</div>
						<div id='detailPreviewZone' class="narrow-w form-search d-flex align-items-stretch mb-3 text-center" >
							<!-- 사진데이터가 들어올 공간 -->
							<!-- 사진데이터가 들어올 공간 -->
							<!-- 사진데이터가 들어올 공간 -->
						</div>
						<br>
						<div
							class="narrow-w form-search d-flex align-items-stretch mb-3 text-center" >
							<select id="fabric" name="fabric" style= "width: 100%; height: 40px;">
							<option value="" selected>소재선택</option>
							<option value="cotton">면</option>
							<option value="wool">울</option>
							<option value="silk">실크</option>
							<option value="linen">린넨</option>
							<option value="polyester">폴리에스터</option>
							<option value="nylon">나일론</option>
							<option value="polyacryl">폴리아크릴</option>
							<option value="raton">레이온</option>
							</select>
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

	<!--   data templ zone   -->
	
	<!--   listImg   -->
	<img id="listImgTempl" src="" class="" style= "display:none; width: 100px; height: 100px;"/>
	<input type="hidden" id="listImgPathTempl" class="" value="" />
	<!--   listImg END   -->
	
	<!--   detailImg   -->
	<img id="detailImgTempl" src="" class="" style= "display:none; width: 100px; height: 100px;"/>
	<input type="hidden" id="detailImgPathTempl" class="" value="" />
	<!--   detailImg END   -->
	
	<!--   option   -->
	<div id="optionTempl" class="col-12 narrow-w form-search d-flex align-items-stretch mb-3 text-center"  style= "display:none;">
		<input type="text" id="colorTempl" style= "display:none;" class="form-control px-4 colorNode"  maxlength="15" placeholder="컬러" required>
		<input type="text" id="sizeTempl" style= "display:none;" class="form-control px-4 sizeNode" maxlength="15" placeholder="사이즈" required>
		<input type="text" id="invenTempl" style= "display:none;" class="form-control px-4 invenNode" maxlength="15" placeholder="수량" pattern="[0-9]+" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  required>
	</div>
	
	<!--   option END   -->
	
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