<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/fmt" prefix ="fmt"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/common/header.jsp"%>

<!-- 해당페이지 js연결 -->
<script src="/resources/js/goods/goods.js"></script>

<body>

<!--  topMenu  -->
<%@ include file="/WEB-INF/views/common/topMenu.jsp"%>

	<div class="hero page-inner overlay" >
	</div>


	<div class="section">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-lg-7">
					<div class="img-property-slide-wrap">
						<div class="img-property-slide">
							<c:forEach items="${goods.img}" var="img">
								<c:if test="${img.imgNm eq 'list'}">
									<img src="${img.path}" alt="Image" class="img-fluid">
								</c:if>
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					
				
					<h2 class="heading text-primary">${goods.nm}</h2>
					<p class="meta"><fmt:formatNumber type="number" maxFractionDigits="3" value="${goods.price}" /></p>
					<p class="text-black-50">${goods.nm}</p>
					<p class="text-black-50">Perferendis eligendi reprehenderit, assumenda molestias nisi eius iste reiciendis porro tenetur in, repudiandae amet libero. Doloremque, reprehenderit cupiditate error laudantium qui, esse quam debitis, eum cumque perferendis, illum harum expedita.</p>
				</div>
			</div>
			<c:forEach items="${goods.img}" var="img">
				<c:if test="${img.imgNm eq 'detail'}">
					<img src="${img.path}" alt="Image" class="img-fluid">
				</c:if>
			</c:forEach>		
		</div>
	</div>



	<div class="site-footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="widget">
						<h3>Contact</h3>
						<address>43 Raymouth Rd. Baltemoer, London 3910</address>
						<ul class="list-unstyled links">
							<li><a href="tel://11234567890">+1(123)-456-7890</a></li>
							<li><a href="tel://11234567890">+1(123)-456-7890</a></li>
							<li><a href="mailto:info@mydomain.com">info@mydomain.com</a></li>
						</ul>
					</div> <!-- /.widget -->
				</div> <!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<div class="widget">
						<h3>Sources</h3>
						<ul class="list-unstyled float-start links">
							<li><a href="#">About us</a></li>
							<li><a href="#">Services</a></li>
						</ul>
						<ul class="list-unstyled float-start links">
							<li><a href="#">Partners</a></li>
							<li><a href="#">Business</a></li>
						</ul>
					</div> <!-- /.widget -->
				</div> <!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<div class="widget">
						<h3>Links</h3>
						<ul class="list-unstyled links">
							<li><a href="#">Our Vision</a></li>
						</ul>

						<ul class="list-unstyled social">
							<li><a href="#"><span class="icon-instagram"></span></a></li>
							<li><a href="#"><span class="icon-twitter"></span></a></li>
						</ul>
					</div> <!-- /.widget -->
				</div> <!-- /.col-lg-4 -->
			</div> <!-- /.row -->
		</div> <!-- /.container -->
    </div> <!-- /.site-footer -->


    <script src="/resources/js/basic/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/basic/tiny-slider.js"></script>
    <script src="/resources/js/basic/aos.js"></script>
    <script src="/resources/js/basic/navbar.js"></script>
    <script src="/resources/js/basic/counter.js"></script>
    <script src="/resources/js/basic/custom.js"></script>
  </body>
  </html>
