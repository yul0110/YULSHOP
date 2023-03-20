<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/bo/header.jsp"%>

<body class="menubar-enabled navbar-top-fixed">

<!--  topMenu  -->
<%@ include file="/WEB-INF/views/bo/topMenu.jsp"%>

<script src="/resources/js/bo/bgoodsReg.js"></script>

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
					            <label for="inputEmail4" class="col-form-label">상품번호</label>
					            <input type="text" id="no" class="form-control" maxlength="30"required>
					        </div>
					        <div class="mb-15 col-md-6">
					            <label for="inputPassword4" class="col-form-label">상품이름</label>
					            <input type="text" id="nm" class="form-control" maxlength="30" required>
					        </div>
					        <div class="mb-15 col-md-6">
					            <label for="inputEmail4" class="col-form-label">가격</label>
					            <input type="text" id="price" class="form-control" pattern="[0-9]+" maxlength="15" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  required>
					        </div>
					        <div class="mb-15 col-md-6">
					            <label for="inputPassword4" class="col-form-label">할인가격</label>
					            <input type="text" id="dprice" class="form-control" pattern="[0-9]+" maxlength="15" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  required>
					        </div>
					        <div class="mb-15 col-md-6">
					            <label for="inputPassword4" class="col-form-label">입고일자</label>
					            <input type="text" id="wareHousing" class="form-control" maxlength="50"  required>
					        </div>
						</div>	


						<div class="mb-15 col-md-6" >
					        <label class="col-form-label">카테고리</label>
							<select id="categoryCode" name="" class="form-select" style= "width: 100%; height: 40px;">
								<option value="" selected>타입</option>
								<c:forEach var="category" items="${categoryList}">
									<c:if test="${category.cateCodeRef eq null}">
										<option value="${category.cateCode}">${category.cateNm}</option>
									</c:if>
								</c:forEach>
							</select>
							
						</div>
						<div class="mb-15 col-md-6">
					        <label for="inputPassword4" class="col-form-label">세부카테고리</label>
							<select id="categoryChildren" name="" class="form-select">
							    <option selected>타입</option>
							    <option value="">One</option>
							    <option value="">Two</option>
							    <option value="">Three</option>
							</select>
					    </div>	
						<br>
						<br>

						<div class="mb-15 col-md-6">
	                        <div id='optionAppendTo' class="">
								<b class="text-center" style="font-size:20px; color:black;">&nbsp;&nbsp;&nbsp;&nbsp;옵션</b>
								<b id='optionAdd' class="text-center" style="font-size:30px; color:black;">+</b>
							</div>
							<br>
							<div id="optionZone" class="col-12 narrow-w form-search d-flex align-items-stretch mb-3 text-center ">
								<!-- templ zone -->
								<!-- templ zone -->
								<!-- templ zone -->
							</div>
						</div>
						<br>
						
						<div class="form-file">
							<input type="file" id="listImg" name="listImg" class="form-file-input">
							<label class="form-file-label">메인 이미지&nbsp;&nbsp;&nbsp;&nbsp;
						   		<span class="form-file-text"></span>
						    	<span class="form-file-button">이미지 찾기</span>
							</label>
							<div id='listPreviewZone' class="narrow-w form-search d-flex align-items-stretch mb-3" >
								<!-- 사진데이터가 들어올 공간 -->
								<!-- 사진데이터가 들어올 공간 -->
								<!-- 사진데이터가 들어올 공간 -->
							</div> 
						</div>
						<br>
						<br>

						<div class="form-file">
							<input type="file" id="detailImg" name="detailImg" class="form-file-input" >
							<label class="form-file-label">상세 이미지&nbsp;&nbsp;&nbsp;&nbsp;
						   		<span class="form-file-text"></span>
						    	<span class="form-file-button">이미지 찾기</span>
							</label>
							<div id='detailPreviewZone' class="narrow-w form-search d-flex align-items-stretch mb-3" >
								<!-- 사진데이터가 들어올 공간 -->
								<!-- 사진데이터가 들어올 공간 -->
								<!-- 사진데이터가 들어올 공간 -->
							</div>
						</div>
						<br>
						<br>
						
						<div class="col-12 narrow-w form-search d-flex align-items-stretch mb-3 text-center" >
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
						<br>

                        <div class="mb-15 row">
                            <label class="col-sm-2 col-form-label ">상품정보</label>
                            <div class="col-sm-10">
								<textarea id="info" class="form-control info" maxlength="1000" required></textarea>
                            </div>
                        </div>
                        <div class="mb-15 row">
                            <label class="col-sm-2 col-form-label ">상품상세</label>
                            <div class="col-sm-10">
								<textarea id="descliption" class="form-control descliption" maxlength="1000" required></textarea>
                            </div>
                        </div>
                        
                        
						<button type="button" id="uploadAjax" class="btn btn-block btn-primary">등록하기</button>
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
	
	<!--   option   -->
	<div id="optionTempl" class="col-12 narrow-w form-search d-flex align-items-stretch mb-3 text-center optionCount"  style= "display:none;">
		<input type="text" id="colorTempl" style= "display:none;" class="form-control px-4 colorNode"  maxlength="15" placeholder="컬러" required>
		<input type="text" id="sizeTempl" style= "display:none;" class="form-control px-4 sizeNode" maxlength="15" placeholder="사이즈" required>
		<input type="text" id="invenTempl" style= "display:none;" class="form-control px-4 invenNode" maxlength="15" placeholder="수량" pattern="[0-9]+" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  required>
	</div>
	<!--   option END   -->
	
	<!--  category   -->
	<div id='categoryChildData' style='display:none;'>
		<c:forEach var="category" items="${categoryList}">
			<c:if test="${category.cateCodeRef ne null}">
				<input type='hidden' value="${category.cateNm}" data-ref = "${category.cateCodeRef}" data-code = "${category.cateCode}"/>
			</c:if>
		</c:forEach>
	</div>
	
	
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