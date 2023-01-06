<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<body>

<%@ include file="/WEB-INF/views/common/topMenu.jsp" %> 

	<div class="hero page-inner overlay" style="background-image: url('/resources/images/yulShop4.jpg'); height:700px;">
		<div class="container">
			<div class="row2 row justify-content-center align-items-center"> <!-- Ư����ũ�� 1 -->
				<div class="col-lg-9 text-center mt-5" >
					<h1 class="heading" data-aos="fade-up">�α���</h1>
					<form action="#" class="narrow-w form-search d-flex align-items-stretch mb-3 text-center" data-aos="fade-up" data-aos-delay="200">
						<input type="text" class="form-control px-4" width="5px" maxlength="10" placeholder="���̵� �Է����ּ���.">
					</form>
					<form action="#" class="narrow-w form-search d-flex align-items-stretch mb-3" data-aos="fade-up" data-aos-delay="200">
						<input type="text" class="form-control px-4"   placeholder="��й�ȣ�� �Է����ּ���.">		
					</form>
					<br>
					<button type="button" class="btn btn-primary" style="width:10em">�α���</button>
					<br>
					<br>
					<br>
					<nav aria-label="breadcrumb" data-aos="fade-up" data-aos-delay="200">
						<ol class="breadcrumb text-center justify-content-center">
							<li class="breadcrumb-item "><a href="index.html">ȸ������</a></li>
							<li class="breadcrumb-item "><a href="index.html">��й�ȣ ã��</a></li>
						</ol>
					</nav>	
					<div class="col-lg-9 text-center">
						<!-- �������� -->
					</div>
				</div>
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