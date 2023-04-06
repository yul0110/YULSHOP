<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<!-- 해당페이지 js연결 -->
<script src="/resources/js/order/order.js"></script>

<body>

<%@ include file="/WEB-INF/views/common/topMenu.jsp" %> 

	<div class="hero page-inner overlay" style="background-image: url('/resources/images/header.png'); height:400px;">
		<div class="container">
			<div class="row justify-content-center align-items-center" style="height: 70vh;">
				<div class="col-lg-9 text-center mt-5">
					<h1 class="heading" data-aos="fade-up">주문서</h1>
				</div>
			</div>
		</div>
	</div>
	
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 mb-5 mb-lg-0" data-aos="fade-up" data-aos-delay="100">
					<div class="contact-info">

						<div class="address mt-2">
							<i class="">
								<img alt="상품사진" src="/resources/images/yulShop4.jpg" style="width: 50px; height: 50px;">
							</i>
							<h4 class="mb-2">싱그러운 블로썸그린 원피스</h4>
							<h4 class="mb-2">55,900</h4>
							<p>옵션옵션옵션옵션옵션옵션</p>
						</div>

						<div class="address mt-2">
							<i class="">
								<img alt="상품사진" src="/resources/images/yulShop4.jpg" style="width: 50px; height: 50px;">
							</i>
							<h4 class="mb-2">알록달록 얄록한 긴양말</h4>
							<h4 class="mb-2">10,900</h4>
							<p>옵션옵션옵션옵션옵션옵션</p>
						</div>

						<div class="address mt-2">
							<i class="">
								<img alt="상품사진" src="/resources/images/yulShop4.jpg" style="width: 50px; height: 50px;">
							</i>
							<h4 class="mb-2">어느새 봄니다 선그라스</h4>
							<h4 class="mb-2">15,900</h4>
							<p>옵션옵션옵션옵션옵션옵션</p>
						</div>

						<div class="address mt-2">
							<i class="">
								<img alt="상품사진" src="/resources/images/yulShop4.jpg" style="width: 50px; height: 50px;">
							</i>
							<h4 class="mb-2">그냥 사.. 흰캡모자</h4>
							<h4 class="mb-2">15,900</h4>
							<p>옵션옵션옵션옵션옵션옵션</p>
						</div>

						<div class="address mt-2">
							<i class="">
								<img alt="상품사진" src="/resources/images/yulShop4.jpg" style="width: 50px; height: 50px;">
							</i>
							<h4 class="mb-2">왕킹짱 인싸 캡모자</h4>
							<h4 class="mb-2">15,900</h4>
							<p>옵션옵션옵션옵션옵션옵션</p>
						</div>

					</div>
				</div>
				<div class="col-lg-8" data-aos="fade-up" data-aos-delay="200">
					<div class="row">
						<div class="col-6 mb-3">
							<p><Strong>구매자</Strong></p>
							<input type="text" class="form-control" placeholder="">
						</div>
						<div class="col-6 mb-3">
							<p><Strong>연락처</Strong></p>
							<input type="email" class="form-control" placeholder="">
						</div>
						<div class="col-6 mb-3">
							<p><Strong>주소</Strong></p>
							<input type="text" class="form-control" placeholder="">
						</div>
						<div class="col-6 mb-3">
							<p><Strong>나머지 주소</Strong></p>
							<input type="email" class="form-control" placeholder="">
						</div>
						<div class="col-12 mb-3">
							<p><Strong>배송요청 사항</Strong></p>
							<input type="email" class="form-control" placeholder="">
						</div>
						<div class="col-6 mb-3">
							<p><Strong>보유포인트</Strong></p>
							<p><Strong>10,000</Strong></p>
						</div>
						<div class="col-3 mb-3">
							<p><Strong>사용 포인트</Strong></p>
							<input type="text" class="form-control" placeholder="">
						</div>
						<div class="col-3 mb-3">
							<p>&nbsp;&nbsp;</p>
							<a href="#" target="_blank" class="btn btn-primary text-white py-3 px-4">전액사용</a>
						</div>
						<div class="col-6 mb-3">
							<p><Strong>쿠폰</Strong></p>
							<select style="width: 100%; font-size: 20px;">
								<option value="" >선택</option>
								<option value="" >봄 쿠폰 30%</option>
							</select>
						</div>
						<div class="col-6 mb-3">
							<p><Strong>쿠폰으로 할인된 금액</Strong></p>
							<p>0</p>
						</div>
						<div class="col-12 mb-3">
							<p><Strong>배송비 (30,000원 이상 구매시 무료배송)</Strong></p>
							<p>0</p>
						</div>
					

						<!-- 
						<div class="col-12">
							<input type="submit" value="Send Message" class="btn btn-primary">
						</div>
						 -->
						 
					</div>
				</div>
			</div>
		</div>
	</div> <!-- /.untree_co-section -->
	
	<div class="section section-4 bg-light">
		<div class="container">
			<div class="row section-counter mt-5">
				<div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
					<div class="counter-wrap mb-5 mb-lg-0">
						<span class="number"><span class="countup text-primary">87000</span>원</span>
						<span class="caption text-black-50">상품금액</span>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
					<div class="counter-wrap mb-5 mb-lg-0">
						<span class="number"><span class="countup text-primary">1300</span>원</span>
						<span class="caption text-black-50">사용포인트</span>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="500">
					<div class="counter-wrap mb-5 mb-lg-0">
						<span class="number"><span class="countup text-primary">9316</span>원</span>
						<span class="caption text-black-50">할인액</span>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="600">
					<div class="counter-wrap mb-5 mb-lg-0">
						<span class="number"><span class="countup text-primary">1574894</span>원</span>
						<span class="caption text-black-50">결제금액</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 결제방법 --><!-- 결제방법 --><!-- 결제방법 --><!-- 결제방법 --><!-- 결제방법 --><!-- 결제방법 --><!-- 결제방법 --><!-- 결제방법 --><!-- 결제방법 -->
	<section class="features-1">
		<div class="container">
			<div class="row">
				<div class="col-6 col-lg-3"  data-aos="fade-up" data-aos-delay="300">
					<div class="box-feature">
						<span class="icon-download" style="font-size: 50px;"></span>
						<h3 class="mb-3">실시간 계좌이체</h3>
						<p><input type="radio" name="payType"></p>
					</div>
				</div>
				<div class="col-6 col-lg-3 "  data-aos="fade-up" data-aos-delay="500">
					<div class="box-feature">
						<span class="icon-credit-card" style="font-size: 50px;"></span>
						<h3 class="mb-3">신용카드 결제</h3>
						<p><input type="radio" name="payType"></p>
					</div>
				</div>
				<div class="col-6 col-lg-3"  data-aos="fade-up" data-aos-delay="400">
					<div class="box-feature">
						<span class="icon-mobile" style="font-size: 50px;"></span>
						<h3 class="mb-3">앱카드 결제</h3>
						<p><input type="radio" name="payType"></p>
					</div>
				</div>
				<div class="col-6 col-lg-3"  data-aos="fade-up" data-aos-delay="600">
					<div class="box-feature">
						<span class="icon-building" style="font-size: 50px;"></span>
						<h3 class="mb-3">에스크로 결제</h3>
						<p><input type="radio" name="payType"></p>
					</div>
				</div>	
			</div>
		</div>
	</section>
	<!-- 결제방법 --><!-- 결제방법 --><!-- 결제방법 --><!-- 결제방법 --><!-- 결제방법 --><!-- 결제방법 --><!-- 결제방법 --><!-- 결제방법 -->

	<div class="section">
		<div class="row justify-content-center  text-center mb-0">
			<div class="col-lg-6 mb-0">
					<p class="text-black-50">결제에 관한 약관 읽기</p>
				<p class="text-black-50"><input type="checkbox"> 결제함에 위 설명을 동의합니다.</p>
					<p><a href="#" target="_blank" class="btn btn-primary text-white py-3 px-4">결제하기</a></p>
			</div>
		</div>
	</div>

<!-- ======= Footer ======= -->
<%@ include file="/WEB-INF/views/common/footer.jsp" %>

    <script src="/resources/js/basic/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/basic/tiny-slider.js"></script>
    <script src="/resources/js/basic/aos.js"></script>
    <script src="/resources/js/basic/navbar.js"></script>
    <script src="/resources/js/basic/counter.js"></script>
    <script src="/resources/js/basic/custom.js"></script>
  </body>
  </html>