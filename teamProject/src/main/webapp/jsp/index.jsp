<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>인덱스 페이지</title>
<!-- css 연결 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/header.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/footer.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/index.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font.css" />
<!-- 배너용 css -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css" />
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css" />
</head>

<body>
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

	<!-- 배너 섹션 -->
	<section class="slide-banner">
		<div class="slider">
			<div class="slide">
				<div class="content first-content"
					style="background-image: url('${pageContext.request.contextPath}/images/index/banner01.png')">
					<h2>나에게 맞는 향수를 찾아보세요</h2>
					<button type="button">
						<a href="${pageContext.request.contextPath}/jsp/surveyStart.jsp">지금
							바로 찾기</a>
					</button>
				</div>
			</div>
			<div class="slide">
				<div class="content second-content"
					style="background-image: url('${pageContext.request.contextPath}/images/index/banner02.jpg')"></div>
			</div>
			<div class="slide">
				<div class="content third-content"
					style="background-image: url('${pageContext.request.contextPath}/images/index/perfume01.webp')">
					<h2>베스트 제품</h2>
					<button type="button">
						<a href="${pageContext.request.contextPath}/jsp/best.jsp">상품보러가기</a>
					</button>
				</div>
			</div>
		</div>
	</section>

	<!-- 제품 이미지 -->
	<div class="goods container text-center">
		<!--첫번째 줄-->
		<div class="row row-cols-3 row-col-md-2">
			<div class="col p-5">
				<a href="${pageContext.request.contextPath}/jsp/shop.jsp"><img
					src="${pageContext.request.contextPath}/images/index/perfume01.webp"
					width="100%" />제품사진1</a><br /> <span>------ 가격</span>
			</div>
			<div class="col p-5">
				<a href="${pageContext.request.contextPath}/jsp/shop.jsp"> <img
					src="${pageContext.request.contextPath}/images/index/perfume01.webp"
					width="100%" /> 제품사진1
				</a><br /> <span>------ 가격</span>
			</div>
			<div class="col p-5">
				<a href="${pageContext.request.contextPath}/jsp/shop.jsp"> <img
					src="${pageContext.request.contextPath}/images/index/perfume01.webp"
					width="100%" /> 제품사진1
				</a><br /> <span>------ 가격</span>
			</div>
		</div>
		<!-- 두번째 줄-->
		<div class="row row-cols-3 row-col-md-2">
			<div class="col p-5">
				<a href="${pageContext.request.contextPath}/jsp/shop.jsp"><img
					src="${pageContext.request.contextPath}/images/index/perfume01.webp"
					width="100%" />제품사진1</a><br /> <span>------ 가격</span>
			</div>
			<div class="col p-5">
				<a href="${pageContext.request.contextPath}/jsp/shop.jsp"> <img
					src="${pageContext.request.contextPath}/images/index/perfume01.webp"
					width="100%" /> 제품사진1
				</a><br /> <span>------ 가격</span>
			</div>
			<div class="col p-5">
				<a href="${pageContext.request.contextPath}/jsp/shop.jsp"> <img
					src="${pageContext.request.contextPath}/images/index/perfume01.webp"
					width="100%" /> 제품사진1
				</a><br /> <span>------ 가격</span>
			</div>
		</div>
	</div>

	<!-- 푸터 -->
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

	<!-- 스크립트 -->
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
		crossorigin="anonymous" />
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>

	<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/javascript/index_bannerslide.js"></script>
</body>
</html>
