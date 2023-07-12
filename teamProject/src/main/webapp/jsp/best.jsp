<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>Document</title>
<style>
li {
	list-style-type: none;
}

div a {
	text-decoration: none;
	color: #222244;
	font-weight: 500;
	padding: 20px;
}
</style>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/header.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/best.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font.css">
</head>

<body class="body wrapper tabled">
	<header>
		<div class="navbar" id="navbar">
			<a id="logo" href="${pageContext.request.contextPath}/jsp/index.jsp"><img
				src="${pageContext.request.contextPath}/images/index/logo.png"
				alt="" width="150px;" /></a>
			<div class="sign-text">
				<a href="${pageContext.request.contextPath}/jsp/singup.jsp">SingUp</a>
				<a href="${pageContext.request.contextPath}/jsp/login.jsp">Login</a>
			</div>
		</div>

		<div class="menubar" id="menubar">
			<ul>
				<!-- 카테고리 리스트 -->
				<li class="h4 text-center m-3 px-3"><a
					href="${pageContext.request.contextPath}/jsp/best.jsp">BEST</a> <a
					href="${pageContext.request.contextPath}/jsp/shop.jsp">SHOP</a> <a
					href="#none">CART</a> <a href="#none">BOARD</a></li>
			</ul>
		</div>
	</header>

	<!-- 제품 이미지 -->
	<div class="container text-center">
		<!--첫번째 줄-->
		<div id="row1" class="row row-cols-3 row-col-md-2">
			<div class="col col-6 d-flex flex-column justify-content-center align-items-center">
				<div class="blockquote text-center m-8">Male Perfume1,</div>
				<div class="blockquote-footer">Lorem ipsum dolor sit amet
					consectetur adipisicing elit. Totam, rem?</div>
			</div>
			<div class="col col-6 p-5">
				<a href="${pageContext.request.contextPath}/jsp/shop.jsp"> 
				<img src="${pageContext.request.contextPath}/images/shop/향수.webp" width="70%">
				</a>
			</div>
		</div>


		<!-- 두번째 줄-->
		<div id="row1" class="row row-cols-3 row-col-md-2">
			<div class="col col-6 p-5">
				<a href="${pageContext.request.contextPath}/jsp/shop.jsp"> 
				<img src="${pageContext.request.contextPath}/images/shop/향수.webp" width="70%">
				</a>
			</div>
			<div
				class="col col-6 d-flex flex-column justify-content-center align-items-center">
				<div class="blockquote text-center m-8">Male Perfume2,</div>
				<div class="blockquote-footer">Lorem ipsum dolor sit amet
					consectetur adipisicing elit. Totam, rem?</div>
			</div>
		</div>


		<!--세번째 줄-->
		<div id="row1" class="row row-cols-3 row-col-md-2">
			<div
				class="col col-6 d-flex flex-column justify-content-center align-items-center">
				<div class="blockquote text-center m-8">Male Perfume3,</div>
				<div class="blockquote-footer">Lorem ipsum dolor sit amet
					consectetur adipisicing elit. Totam, rem?</div>
			</div>
			<div class="col col-6 p-5">
				<a href="${pageContext.request.contextPath}/shop.jsp"> 
				<img src="${pageContext.request.contextPath}/images/shop/향수.webp" width="70%">
				</a>
			</div>
		</div>

		<footer>
			<div class="footer-container">
				<div class="footer-content">
					<div class="footer-column">
						<h3>About Us</h3>
						<p>KIC 캠퍼스 프로젝트</p>
					</div>
					<div class="footer-column">
						<h3>Contact</h3>
						<p>
							서울특별시 강남구 역삼동 <br>819-10 세경빌딩 3층
						</p>
						<p>Tel : 02.538.3644</p>
						<a href="https://www.kiccampus.com/kr/">KIC 캠퍼스 홈페이지</a>
					</div>
					<div class="footer-column">
						<h3>Follow Us</h3>
						<ul class="social-media">
							<li><a href="https://www.facebook.com/"><i
									class="facebook"> <img
										src="${pageContext.request.contextPath}/images/index/facebook.png"
										alt="페이스북 로고">
								</i></a></li>
							<li><a href="https://twitter.com/"><i class="twitter">
										<img
										src="${pageContext.request.contextPath}/images/index/twitter.png"
										alt="트위터 로고">
								</i></a></li>
							<li><a href="https://www.instagram.com/"><i
									class="instagram"> <img
										src="${pageContext.request.contextPath}/images/index/instagram.png"
										alt="인스타 로고">
								</i></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="footer-ul">
				<a href="">회사소개</a> <a href="">개인정보처리방침</a> <a href="">이용약관</a> <a
					href="">고객센터</a>
			</div>
		</footer>

		<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
			crossorigin="anonymous">
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
			crossorigin="anonymous"></script>
</body>

</html>