<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/bo/header.jsp"%>

<body class="menubar-enabled navbar-top-fixed">

<!--  topMenu  -->
<%@ include file="/WEB-INF/views/bo/topMenu.jsp"%>

<script src="/resources/js/bo/beventDetail.js"></script>

    <div class="wrapper">
        <div class="container-fluid mt-15">
            <div class="card mb-15">
            
<!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- -->
            
            <div class="card mb-15">
                <div class="card-body">
                    <h4>이벤트 수정</h4>
                    <br>
                    <br>
                    <!-- Contact Form -->
                    <form action="/joinusAjax" id='joinform' name='joinform'
							method="post" role="form" class="form-horizontal">
	
						<div class="mb-15 row">
							<label class="col-sm-2 col-form-label">제목</label>
							<div class="col-sm-10">
							    <input type="text" id="title" name="title" value="${event.title }" class="form-control" placeholder="이벤트 제목을 입력해주세요." required>
							</div>
						</div>

                        <div class="mb-15 row">
                            <label class="col-sm-2 col-form-label ">내용</label>
                            <div class="col-sm-10">
								<textarea id="contents" class="form-control contents" placeholder="이벤트 내용을 입력해주세요." required>${event.contents }</textarea>
                            </div>
                        </div>
                        
						<div class="form-file">
							<input type="file" id="listImg" class="form-file-input">
							<label class="form-file-label" for="customFile">메인 이미지
						   		<span class="form-file-text"></span>
						    	<span class="form-file-button">이미지 찾기</span>
							</label>
							<div id='listPreviewZone' class="narrow-w form-search d-flex align-items-stretch mb-3" >
								<!-- 사진데이터가 들어올 공간 -->
								<!-- 사진데이터가 들어올 공간 -->
								<!-- 사진데이터가 들어올 공간 -->
								<c:forEach items="${event.img }" var="i">
									<c:if test="${i.imgNm eq 'eventList'}">
										<img id="listImgTempl" src="${i.path }" class="listPreview deletImg" style=" width: 100px; height: 100px;"/>
									</c:if>								
								</c:forEach>
							</div> 
						</div>
						<br>

						<div class="form-file">
							<input type="file" id="detailFile" class="form-file-input" >
							<label class="form-file-label" for="customFile">상세 이미지
						   		<span class="form-file-text"></span>
						    	<span class="form-file-button">이미지 찾기</span>
							</label>
							<div id='detailPreviewZone' class="narrow-w form-search d-flex align-items-stretch mb-3" >
								<!-- 사진데이터가 들어올 공간 -->
								<!-- 사진데이터가 들어올 공간 -->
								<!-- 사진데이터가 들어올 공간 -->
								<c:forEach items="${event.img }" var="i">
									<c:if test="${i.imgNm eq 'eventDetail'}">
										<img id="detailImgTempl" src="${i.path }" class="detailPreview deletImg" style=" width: 100px; height: 100px;"/>
									</c:if>								
								</c:forEach>
							</div>
						</div>
						<br>
						<br>
						<button type="button" id="eventUploadAjax" class="btn btn-block btn-primary">등록하기</button>
                    </form>   
                    <!-- End Contact Form -->
                </div>
            </div>
<!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- --><!-- -------------------------------------- -->
        </div>
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