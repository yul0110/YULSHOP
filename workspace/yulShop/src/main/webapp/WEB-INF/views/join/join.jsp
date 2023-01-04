<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<%@ include file="/WEB-INF/views/common/header.jsp" %>


<script src="/resources/js/join/join.js"></script> <!-- �ش������� js���� -->

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
			<div class="row2 row justify-content-center align-items-center"> <!-- Ư����ũ�� 1 -->
				<div class="col-lg-9 text-center mt-5" >
					<h1 class="heading" data-aos="fade-up" style="font-size:40px;">ȸ������</h1>
					<br>		
					<form action="/joinusAjax" id='joinform' name='joinform' method="post" class="php-email-form">
					<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
						<input type="text" name="userId" id="userId" class="form-control px-4" 
						style="width:26em;text-transform:lowercase" maxlength="30" placeholder="���̵� 8~30�� ����,����"  required>
						<button type="button" id="idCheck" class="btn btn-primary" style="width:10em">�ߺ� Ȯ��</button>
					</div>
					<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
						<input type="text" name="pw" id="pw" class="form-control px-4"  maxlength="30" placeholder="��й�ȣ 8~30�� ����,����,Ư������" required>
					</div>
					<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
						<input type="text" name="pwc" id="pwc" class="form-control px-4"  maxlength="30" placeholder="��й�ȣ Ȯ��" required>
					</div>				 
					<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
						<input type="text" name="nm" id="nm" class="form-control px-4"  maxlength="20" placeholder="�̸�" required>
					</div>
					<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
						<input type="text" name="pno" id="pno" class="form-control px-4" style="width:26em" maxlength="11" placeholder="�޴��� ��ȣ" required>
						<button type="button" class="btn btn-primary" style="width:10em">����</button>
					</div>
					<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
						<input type="text" name="addr1" id="addr1" class="form-control px-4" maxlength="50" placeholder="�ּ�" required readonly>
					</div>
					<div class="narrow-w form-search d-flex align-items-stretch mb-3 text-center">
						<input type="text" name="addr2" id="addr2" class="form-control px-4" maxlength="100" placeholder="�� �ּ�" required>
					</div>		
					<br>
					<button type="button" class="btn btn-primary" id="joinusAjax" style="width:10em" >ȸ������</button>
					<br>
					<br>
					<br>
					</form><!-- End Contact Form -->
					<div class="col-lg-9 text-center">
						<!-- �������� -->			
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