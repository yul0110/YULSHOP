<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

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
					<a href="index.html" class="logo m-0 float-start" style=font-size:20px;>YUL</a>
					<ul class="js-clone-nav d-none d-lg-inline-block text-start site-menu float-end">
						<li class="active"><a href="index.html" style="font-size: 1.5em;">NEW IN</a></li>
						<li class="has-children">
							<a href="properties.html" style="font-size: 1.5em;">OUTER</a>
							<ul class="dropdown">
								<li><a href="#" style="font-size: 1.5em;">Buy Property</a></li>
								<li><a href="#" style="font-size: 1.5em;">Sell Property</a></li>
								<li class="has-children">
									<a href="#">Dropdown</a>
									<ul class="dropdown">
										<li><a href="#">Sub Menu One</a></li>
										<li><a href="#">Sub Menu Two</a></li>
										<li><a href="#">Sub Menu Three</a></li>
									</ul>
								</li>
							</ul>
						</li>
						<li><a href="#" style="font-size: 1.5em;">TOP</a></li>
						<li><a href="#" style="font-size: 1.5em;">OPS/SKIRT</a></li>
						<li><a href="#" style="font-size: 1.5em;">BOTTOM</a></li>
						<li><a href="#" style="font-size: 1.5em;">SHOES/BAG</a></li>
						<li><a href="#" style="font-size: 1.5em;">ACC</a></li>
						<li><a style="padding: 0px 5px 0px 0px; font-size:25px;" href="#"><span class="icon-user"></span></a></li>
						<li><a style="padding: 5px 0px 0px 0px; font-size:25px;" href="#"><span style="padding-right:0px" class="icon-cart-plus"></span></a></li>
					</ul>
					<a href="#" class="burger light me-auto float-end mt-1 site-menu-toggle js-menu-toggle d-inline-block d-lg-none" data-toggle="collapse" data-target="#main-navbar">
						<span></span>
					</a>
				</div>
			</div>
		</div>
	</nav>
	
	