<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close">
				<span class="icofont-close js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>

	<nav class="site-nav">
		<div class="container">
			<div class="menu-bg-wrap" style="background-color:#E4A99B">
				<div class="site-navigation">
					<a href="/" class="logo m-0 float-start" style=font-size:20px;>YUL</a>
					<ul class="js-clone-nav d-none d-lg-inline-block text-start site-menu float-end">
						<li class="active"><a href="index.html" style="font-size: 1.5em;">NEW IN</a></li>
						<c:forEach var="test" items="${categoryList}">
							<c:if test="${test.cateCodeRef eq null }">
								<li class="has-children">
									<a href="/goods?cate=${test.cateCode}" style="font-size: 1.5em;">${test.cateNm}</a>
									<ul class="dropdown">
										<c:forEach var="cate" items="${categoryList}">
											<c:if test="${cate.cateCodeRef eq test.cateCode}">
											    <li><a href="/goods?cate=${cate.cateCode }" style="font-size: 1.5em;">${cate.cateNm }</a></li>
											</c:if>
										</c:forEach>
									</ul>
								</li>
							</c:if>
						</c:forEach>
						<li><a style="padding: 0px 5px 0px 0px; font-size:25px;" href="/login"><span class="icon-user"></span></a></li>
						<li><a style="padding: 5px 0px 0px 0px; font-size:25px;" href="/cart"><span style="padding-right:0px" class="icon-cart-plus"></span></a></li>
					</ul>
					<a href="#" class="burger light me-auto float-end mt-1 site-menu-toggle js-menu-toggle d-inline-block d-lg-none" data-toggle="collapse" data-target="#main-navbar">
						<span></span>
					</a>
				</div>
			</div>
		</div>
	</nav>
	
	