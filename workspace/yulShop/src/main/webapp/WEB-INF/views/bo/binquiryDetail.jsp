<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/bo/header.jsp"%>

<body class="menubar-enabled navbar-top-fixed">

<!--  topMenu  -->
<%@ include file="/WEB-INF/views/bo/topMenu.jsp"%>

<script src="/resources/js/bo/binquiryDetail.js"></script>

    <div class="wrapper">
        <div class="container-fluid mt-15">
<!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- -->
            
            <input id='qid' type="hidden" value="${qid}">
            
            <div class="card mb-15">
                <div class="card-body">
                    <h4>1:1 회원문의</h4>
                    <br>
                    <br>
                    <!-- Contact Form -->
					<div class="mb-15 row">
						<label class="col-sm-2 col-form-label">아이디</label>
						<div class="col-sm-10">
							${inquiry.title }
						</div>
					</div>
					<div class="mb-15 row">
						<label class="col-sm-2 col-form-label">제목</label>
						<div class="col-sm-10">
							${inquiry.title }
						</div>
					</div>

                       <div class="mb-15 row">
                           <label class="col-sm-2 col-form-label ">내용</label>
                           <div class="col-sm-10">
							${inquiry.context }
                           </div>
                       </div>
                       
					<div class="form-file">
						<img id="" src="${inquiry.imgPath }" class="" style="width: 300px; height: 300px;"/>
					</div>
					<br>

					<br>
					<br>
                    <!-- End Contact Form -->
                </div>
            </div>
            
            <div class="card mb-15">
                <div class="card-body">
                    <h4>답변</h4>
                    <br>
                    <br>
                    
                    <c:if test="${inquiry.acontext eq null }">
						<div class="mb-15 row">
						    <div class="col-sm-12">
								<input type="text" id="acontext" name="answer" value="" class="form-control" placeholder="답변을 작성해주세요." required>
						    </div>
						</div>
						<br>
						<br>
						<button type="button" id="answerAjax" class="btn btn-block btn-primary">답변하기</button>
                    </c:if>
                    
                    <c:if test="${inquiry.acontext ne null }">
						<div class="mb-15 row">
						    <div class="col-sm-12">
								${inquiry.acontext}
						    </div>
						</div>
                    </c:if>
                    <!-- End Contact Form -->
                </div>
            </div>
<!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- -->
    </div>
</div>

	<!--   data templ zone   -->
	
	<!--   listImg   -->
	<img id="listImgTempl" src="" class="" style="display:none; width: 100px; height: 100px;"/>
	<!--   listImg END   -->
	
	<!--   detailImg   -->
	<img id="detailImgTempl" src="" class="" style="display:none; width: 100px; height: 100px;"/>
	<!--   detailImg END   -->	
	
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