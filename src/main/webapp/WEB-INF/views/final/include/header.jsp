<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script defer src="js/chatbot.js"></script>
<header id="header">
	<div class="hd-top">
		<ul class="hd-top-nav">
			<li><a href="Customer.do"> <img
					src="https://img.icons8.com/material-outlined/20/ffffff/info.png" />
					코로나 19 대응 공지
			</a></li>
			<li><a href="Customer.do"> <img
					src="https://img.icons8.com/windows/20/ffffff/phone.png" /> 비대면 전화
					주문 서비스
			</a></li>
			<li><a href=""> <img
					src="https://img.icons8.com/ios/20/ffffff/van.png" /> IKEA 인기 제품
			</a></li>
		</ul>
	</div>
	<!-- hd top -->
	<nav>
		<div class="inner">
			<div class="menu-btn">
				<img
					src="https://img.icons8.com/material-outlined/24/000000/menu--v1.png" />
			</div>
			<!-- display : none -->
			<div class="main-nav">
				<div class="logo">
					<a href="/welsh"> <img src="main/images/hdft/logo.png" alt="">
					</a>
				</div>
				<p class="digital-showroom">디지털 쇼룸</p>
				<form class="search">
					<button class="search-box-btn" type="submit" name="click" value="">
						<img
							src="https://img.icons8.com/material-outlined/24/000000/search--v1.png" />
					</button>
					<input class="search-box" type="text" name="search" value=""
						maxlength=255 autocomplete="on" placeholder="검색어 입력" style="width:1000px">
				</form>
				<div class="search-modal" id="search-modal">
					<form class="modal">
						<button class="modal-btn" type="submit" name="modal-click"
							value="">
							<h2>X</h2>
						</button>
						<input class="modal-box" type="text" name="modal" value=""
							maxlength=255 autocomplete="on" placeholder="검색어 입력"
							oninput="search()" style="width:1000px">
					</form>
					<h3>
						내 검색 기록 <a href="#">삭제</a>
					</h3>


				</div>
				<div class="hd-icons">
					
					
					<c:choose>
						<c:when test="${empty loggedMember }">
							<a href="LoginForm.do"> <img
								src="https://img.icons8.com/ios/24/000000/van.png" />
							</a>
							<a href="LoginForm.do"> <img
								src="https://img.icons8.com/external-kiranshastry-lineal-kiranshastry/24/000000/external-user-interface-kiranshastry-lineal-kiranshastry-1.png" />
							</a>
						</c:when>
						<c:otherwise>
							<a href="CustomerOrderSearch.do"> <img
							src="https://img.icons8.com/ios/24/000000/van.png" />
							</a>
							<a href="MyInfo.do"> <img
								src="https://img.icons8.com/external-kiranshastry-lineal-kiranshastry/24/000000/external-user-interface-kiranshastry-lineal-kiranshastry-1.png" />
							</a>
						</c:otherwise>

					</c:choose>

					<a href="CartPage.do"> <img
						src="https://img.icons8.com/fluency-systems-regular/24/000000/shopping-cart.png" />
					</a> <a href="Customer.do"> <img
						src="https://img.icons8.com/windows/24/000000/phone.png" />
					</a>
				</div>
				<!-- border bottom 주기 위해 -->
			</div>
			<!-- main menu -->
		</div>
	</nav>
</header>
<!-- header -->

<aside id="aside1">
	<div class="aside1-top">
		<div class="aside1-del">
			<img
				src="https://img.icons8.com/material-outlined/20/000000/delete-sign.png" />
		</div>
		<div class="aside1-logo">
			<a href="/welsh">
				<img src="images/hdft/logo.png" alt="">
			</a>
		</div>
	</div>
	<div class="aside1-btm">
		<h1>디지털쇼룸</h1>
		<a href="/welsh">
			<p>홈</p>
		</a> <a href="CustomerOrderSearch.do">
			<p>배송조회</p>
		</a> <a href="MyInfo.do">
			<p>마이페이지</p>
		</a> <a href="CartPage.do">
			<p>장바구니</p>
		</a> <a href="Customer.do">
			<p>고객센터</p>
		</a>
	</div>
</aside>
<!-- aside1 -->

<aside id="aside2">
	<div class="aside2-top">
		<div class="aside2-del">
			<img
				src="https://img.icons8.com/material-outlined/20/000000/delete-sign.png" />
		</div>
		<div class="aside2-logo">
			<a href="/welsh">
				<img src="images/hdft/logo.png" alt="">
			</a>
		</div>
	</div>
	<div class="aside2-btm">
		<h3>디지털쇼룸</h3>
		<div class="aside2-img-container">
			<div class="aside2-img">
				<a href="BedMain.do"> <img src="images/product/bedroom-bed.png"
					alt="">
					<p>침실</p>
				</a>
			</div>
			<div class="aside2-img">
				<a href="LivingroomMain.do"> <img
					src="images/product/livingroom.png" alt="">
					<p>거실</p>
				</a>
			</div>
			<div class="aside2-img">
				<a href="KitchenMain.do"> <img src="images/product/kitchen.png"
					alt="">
					<p>주방</p>
				</a>
			</div>
			<div class="aside2-img">
				<a href="DiningMain.do"> <img src="images/product/dining.png"
					alt="">
					<p>다이닝</p>
				</a>
			</div>
		</div>
	</div>
</aside>
<!-- aside2 -->