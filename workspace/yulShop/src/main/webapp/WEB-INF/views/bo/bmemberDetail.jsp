<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/bo/header.jsp"%>

<body class="menubar-enabled navbar-top-fixed">

<!--  topMenu  -->
<%@ include file="/WEB-INF/views/bo/topMenu.jsp"%>

<script src="/resources/js/bo/bmemberDetail.js"></script>

    <div class="wrapper">
        <div class="container-fluid mt-15">
            <div class="card mb-15">
            
<!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- -->
            
            <div class="card mb-15">
                <div class="card-body">
                    <h4>회원정보수정</h4>
                    <br>
                    <br>
                    <!-- Contact Form -->
                    <input type="hidden" id="nowId" value='${nowId}' class="form-control">
                    <form action="/joinusAjax" id='joinform' name='joinform'
							method="post" role="form" class="form-horizontal">
	
					    <div class="row">
					        <div class="mb-15 col-md-6">
					            <label for="inputEmail4" class="col-form-label">아이디</label>
					            <input type="text" id="userId" class="form-control" value="${member.userId}" maxlength="30" required readonly>
					        </div>
					        <div class="mb-15 col-md-6">
					            <label for="inputPassword4" class="col-form-label">이름</label>
					            <input type="text" id="nm" class="form-control" value="${member.nm}" maxlength="30" required>
					        </div>
					        <div class="mb-15 col-md-6">
					            <label for="inputEmail4" class="col-form-label">휴대폰 번호</label>
					            <input type="text" id="pno" class="form-control" value="${member.pno}" pattern="[0-9]+" maxlength="15" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  required>
					        </div>
					        <div class="mb-15 col-md-6">
					            <label for="inputPassword4" class="col-form-label">생년월일</label>
					            <input type="text" id="birth" class="form-control" value="${member.birth}" pattern="[0-9]+" maxlength="15" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  required>
					        </div>
					        <div class="mb-15 col-md-6">
					            <label for="inputPassword4" class="col-form-label">주소</label>
					            <input type="text" id="addr1" class="form-control" value="${member.addr1}" maxlength="50"  required>
					        </div>
					        <div class="mb-15 col-md-6">
					            <label for="inputPassword4" class="col-form-label">상세주소</label>
					            <input type="text" id="addr2" class="form-control" value="${member.addr2}" maxlength="50"  required>
					        </div>
					        <div class="mb-15 col-md-6">
					            <label for="inputPassword4" class="col-form-label">가입일자</label>
					            <input type="text" id="regDt" class="form-control" value="${member.regDt}" maxlength="50"  required readonly>
					        </div>
						</div>	
						<button type="button" id="updateMemberAjax" class="btn btn-block btn-primary">등록하기</button>
                    </form>   
                    <!-- End Contact Form -->
                </div>
            </div>
<!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- -->
        </div>
    </div>
</div>

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