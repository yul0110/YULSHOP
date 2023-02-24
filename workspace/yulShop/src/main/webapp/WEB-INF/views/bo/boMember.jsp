<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--  header  -->
<%@ include file="/WEB-INF/views/bo/header.jsp"%>

<body>

<!--  topMenu  -->
<%@ include file="/WEB-INF/views/bo/topMenu.jsp"%>

<script src="/resources/js/bo/boMember.js"></script>

	<div class="hero page-inner overlay" >
		<div class="container">
			<div class="row2 row justify-content-center align-items-center">
			<!-- 특수마크업 1 -->
				<div class="col-lg-9 text-center mt-5">
					<h1 class="heading" data-aos="fade-up" style="font-size:50px;">BO 회원관리</h1>
					<nav aria-label="breadcrumb" data-aos="fade-up" data-aos-delay="200">
						<ol class="breadcrumb text-center justify-content-center">
							<li class="breadcrumb-item active text-white-50" aria-current="page">회원 리스트</li>
						</ol>
					</nav>
					<h1 class="heading" data-aos="fade-up">
						<input id='pageNum' type="hidden" value=1 />
					</h1>
				</div>
			</div>
		</div>
	</div>

	<div class="section">
		<div id='memberList' class="container">
			<!-- tmple zone -->
			<!-- tmple zone -->
			<!-- tmple zone -->
			<!-- tmple zone -->
			<!-- tmple zone -->
		</div>
	</div>
	
	<div class="row align-items-center py-5">
		<div class="col-lg-3">
		</div>
		<div id='pagingList' class="col-lg-6 text-center">
			<!-- tmple zone -->
			<!-- tmple zone -->
			<!-- tmple zone -->
			<!-- tmple zone -->
			<!-- tmple zone -->
		</div>
	</div>
	
<!-- ======= Footer ======= -->
<%@ include file="/WEB-INF/views/common/footer.jsp" %>

<!-- templ  -->
	
	<div id='memberNode' class="row text-left mb-5 memberDetail" Style='display:none;'>
		<div class="col-lg-6" style="border-style: solid; width: 3%">
			<p class="text-black-50 memberCount">1</p>
		</div>
		<div class="col-lg-6" style="border-style: solid; width: 97%">
			<p class="text-black-50 memberTitle">회원이름</p>
		</div>
	</div>

	<div id='pageNode' class="custom-pagination" style='display:none;'>
		<a href="javascript:void(0);" class="firstPage pagingCilck">&lt;&lt;</a>
		<a href="javascript:void(0);" class="prevPage pagingCilck">&lt;</a>
		<a href="javascript:void(0);" class="pagingPrevNum pagingCilck">1</a>
		<a href="javascript:void(0);" class="pagingNum pagingCilck">1</a>
		<a href="javascript:void(0);" class="pagingNextNum pagingCilck">1</a>
		<a href="javascript:void(0);" class="nextPage pagingCilck">&gt;</a>
		<a href="javascript:void(0);" class="endPage pagingCilck">&gt;&gt;</a>
	</div>



<!-- templ  -->


	<!--   js   -->
    <script src="/resources/js/basic/bootstrap.bundle.min.js"></script>
    <script src="/resources/js/basic/tiny-slider.js"></script>
    <script src="/resources/js/basic/aos.js"></script>
    <script src="/resources/js/basic/navbar.js"></script>
    <script src="/resources/js/basic/counter.js"></script>
    <script src="/resources/js/basic/custom.js"></script>
    
</body>
</html>