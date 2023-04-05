<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<body>

<%@ include file="/WEB-INF/views/common/topMenu.jsp" %>

<!-- 해당페이지 js연결 -->
<script src="/resources/js/myPage/wish.js"></script>


		<div class="hero page-inner overlay" style="background-image: url('/resources/images/yulShop4.jpg');height:370px;">
		<div class="container">
			<div class="row justify-content-center align-items-center" style="height: 50vh;">
				<div class="col-lg-9 text-center mt-5">
					<h1 class="heading" data-aos="fade-up">찜리스트</h1>
				</div>
			</div>
		</div>
	</div>

	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="property-slider-wrap">
						<div class="property-slider">
							<c:forEach items="${wishList}" var="wish">
								<c:if test="${not empty'wishList' and wish.useYn eq 'Y'}">
									<div class="property-item ">
										<a href="goodsDetail?goodsId=${wish.goodsId }" class="img">
											<img src="${wish.imgPath }" alt="Image" class="img-fluid ">
										</a>
										<div class="property-content">
											<div class="price mb-2">
												<span>${wish.nm }</span>
												<input type="hidden" id="id" value='${wish.id}' class="form-control">
												<input type="hidden" id="useYn" value='${wish.useYn}' class="form-control">
											</div>
											<div>
												<button type="button" id="deleteAjax" class="btn btn-primary py-2 px-3 text-rigth deleteAjax">삭제하기</button>
											</div>
										</div>
									</div> 
								</c:if>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<c:forEach items="${wishList}" var="i">
			<c:if test="${empty'wishList'}">
				<div class="container">
					<div class="row justify-content-center  text-center mb-5">
						<div class="col-lg-5">
							<h2 class="font-weight-bold heading text-primary mb-4">찜리스트가 비었습니다.</h2>
						</div>
					</div>
				</div>
			</c:if>
		</c:forEach>	
	</div>


<!-- ======= Footer ======= -->
<%@ include file="/WEB-INF/views/common/footer.jsp" %>

<!-- js  -->
    <script src="/resources/js/basic/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/basic/tiny-slider.js"></script>
    <script src="/resources/js/basic/aos.js"></script>
    <script src="/resources/js/basic/navbar.js"></script>
    <script src="/resources/js/basic/counter.js"></script>
    <script src="/resources/js/basic/custom.js"></script>
  </body>
  </html>