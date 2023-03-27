<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/bo/header.jsp"%>

<body class="menubar-enabled navbar-top-fixed">

<!--  topMenu  -->
<%@ include file="/WEB-INF/views/bo/topMenu.jsp"%>

<script src="/resources/js/bo/bcouponReg.js"></script>

    <div class="wrapper">
        <div class="container-fluid mt-15">
            <div class="card mb-15">
            
<!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- -->
            
            <div class="card mb-15">
                <div class="card-body">
                    <h4>쿠폰 등록</h4>
                    <br>
                    <br>
                    <!-- Contact Form -->
                    <form action="/joinusAjax" id='joinform' name='joinform'
							method="post" role="form" class="form-horizontal">
	
					    <div class="row">
					        <div class="mb-15 col-md-6">
					            <label for="inputPassword4" class="col-form-label">쿠폰이름</label>
					            <input type="text" id="nm" class="form-control" maxlength="30" required>
					        </div>
					        <div class="mb-15 col-md-6">
					            <label for="inputEmail4" class="col-form-label">쿠폰번호</label>
					            <input type="text" id="codeNum" class="form-control" maxlength="30"required>
					        </div>
					        <div class="mb-15 col-md-6">
					            <label class="col-form-label">할인타입</label>
							<select id="couponType" name="" class="form-select" style= "width: 100%; height: 40px;">
								<option value="p" selected>퍼센트할인 ( % )</option>
								<option value="c" selected>정액할인 ( \ x,xxx)</option>
							</select>
					        </div>
					        <div class="mb-15 col-md-6">
					            <label for="couponSize" class="col-form-label">사이즈</label>
					            <input type="text" id="couponSize" class="form-control" pattern="[0-9]+" maxlength="15" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  required>
					        </div>
					        <div class="mb-15 col-md-6">
					            <label for="limitPrice" class="col-form-label">최소금액</label>
					            <input type="text" id="limitPrice" class="form-control" maxlength="30"required>
					        </div>
					        <div class="mb-15 col-md-6">
					            <label for="maxPrice" class="col-form-label">최대금액</label>
					            <input type="text" id="maxPrice" class="form-control" pattern="[0-9]+" maxlength="15" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  required>
					        </div>
					        <div class="mb-15 col-md-6">
					            <label for="issudCount" class="col-form-label">발급일로 부터 사용기간</label>
					            <input type="text" id="issuedCount" class="form-control" maxlength="50"  required>
					        </div>
					        <div class="mb-15 col-md-6">
					            <label for="useDate" class="col-form-label">사용기간</label>
					            <input type="date" id="useDate" class='form-control' name="trip-start" value="2023-01-10">
					        </div>
						</div>
						<br>
						<br>
						<button type="button" id="couponRegAjax" class="btn btn-block btn-primary">등록하기</button>
                    </form>   
                    <!-- End Contact Form -->
                </div>
            </div>
<!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- -->
        </div>
    </div>
</div>

	<!--   data templ zone   -->
	
	<!--  zone END    -->
	
	<!-- Page Js Files  -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/perfect-scrollbar@1.4.0/dist/perfect-scrollbar.min.js"></script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-50750921-19"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());
        gtag('config', 'UA-50750921-19');
    </script>
    <script src="../../js/morioh.js"></script>


</body>

</html>