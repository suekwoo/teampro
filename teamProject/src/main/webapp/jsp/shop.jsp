<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Document</title>
<style>

/* a{
                border: 1px solid #000;
            }
            div {
                /* /* border: 1px solid #000;
            } */
li {
	list-style-type: none;
}

.Category {
	text-align: center;
	margin-top: 100px;
}
</style>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/header.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/footer.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/shop.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font.css" />
</head>

<body>
	<header>
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
				<li class="h4 text-center m-3 px-3">
				<a href="${pageContext.request.contextPath}/jsp/best.jsp">BEST</a> 
				<a href="${pageContext.request.contextPath}/jsp/shop.jsp">SHOP</a> 
				<a href="#none">CART</a> 
				<a href="#none">BOARD</a>
				</li>
			</ul>
		</div>

		<!-- 상세 메뉴 바 -->
		<div class="submenubar" id="submenubar">
			<ul>
				<!-- 카테고리 리스트 -->
				<li class="h4 text-center m-3 px-3">
				<a href="#none">카테고리1</a> 
				<a href="#none">카테고리2</a> 
				<a href="#none">카테고리3</a> 
				<a href="#none">카테고리4</a>
				<a href="#none">카테고리5</a>
				</li>
			</ul>
		</div>
	</header>

	<div class="Category">
		<h2>전체 제품</h2>
	</div>
	
	  <!-- 상품 정렬 -->
      <div class="array">
        <p>
        <a href="#none" style="font-weight: bold;">최신순</a>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp
        <a href="#none">인기순</a>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp
        <a href="#none">후기순</a>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp
        <a href="#none">낮은가격</a>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp

        <a href="">높은가격</a> 
        </p>
      </div>

		<!-- 제품 이미지 -->
		<div class="goods">

			<ul class="d-flex justify-content-center">
				<li class="p-2 mt-5">
					<div class="card" style="width: 18rem;">
						<img src="${pageContext.request.contextPath}/images/shop/향수.webp" class="card-img-top" alt="...">
						<div class="card-body container text-center">
							<h5 class="card-title">향수</h5>
							<p class="card-text">가격</p>
						</div>
						<ul class="list-group list-group-flush">
						</ul>
						<div class="card-body container text-center">
							<a href="#" class="card-link">
							<img src="${pageContext.request.contextPath}/images/shop/하트.png"
								alt="" width="30px"></a> 
							<a href="#" class="card-link">
							<img src="${pageContext.request.contextPath}/images/shop/장바구니.png" alt="" width="30px"></a>
						</div>
					</div>
				</li>
				<li class="p-2 mt-5">
					<div class="card" style="width: 18rem;">
						<img src="${pageContext.request.contextPath}/images/shop/향수.webp" class="card-img-top" alt="...">
						<div class="card-body container text-center">
							<h5 class="card-title">향수</h5>
							<p class="card-text">가격</p>
						</div>
						<ul class="list-group list-group-flush">
						</ul>
						<div class="card-body container text-center">
							<a href="#" class="card-link">
							<img src="${pageContext.request.contextPath}/images/shop/하트.png"
								alt="" width="30px"></a> 
							<a href="#" class="card-link">
							<img src="${pageContext.request.contextPath}/images/shop/장바구니.png" alt="" width="30px"></a>
						</div>
					</div>
				</li>
				<li class="p-2 mt-5">
					<div class="card" style="width: 18rem;">
						<img src="${pageContext.request.contextPath}/images/shop/향수.webp" class="card-img-top" alt="...">
						<div class="card-body container text-center">
							<h5 class="card-title">향수</h5>
							<p class="card-text">가격</p>
						</div>
						<ul class="list-group list-group-flush">
						</ul>
						<div class="card-body container text-center">
							<a href="#" class="card-link">
							<img src="${pageContext.request.contextPath}/images/shop/하트.png"
								alt="" width="30px"></a> 
							<a href="#" class="card-link">
							<img src="${pageContext.request.contextPath}/images/shop/장바구니.png" alt="" width="30px"></a>
						</div>
					</div>
				</li>
			</ul>
			<ul class="d-flex justify-content-center" class="d-grid gap-3">
				<li class="p-2">
					<div class="card" style="width: 18rem;">
						<img src="${pageContext.request.contextPath}/images/shop/향수.webp" class="card-img-top" alt="...">
						<div class="card-body container text-center">
							<h5 class="card-title">향수</h5>
							<p class="card-text">가격</p>
						</div>
						<ul class="list-group list-group-flush">
						</ul>
						<div class="card-body container text-center">
							<a href="#" class="card-link">
							<img src="${pageContext.request.contextPath}/images/shop/하트.png"
								alt="" width="30px"></a> 
							<a href="#" class="card-link">
							<img src="${pageContext.request.contextPath}/images/shop/장바구니.png" alt="" width="30px"></a>
						</div>
					</div>
				</li>
				<li class="p-2">
					<div class="card" style="width: 18rem;">
						<img src="${pageContext.request.contextPath}/images/shop/향수.webp" class="card-img-top" alt="...">
						<div class="card-body container text-center">
							<h5 class="card-title">향수</h5>
							<p class="card-text">가격</p>
						</div>
						<ul class="list-group list-group-flush">
						</ul>
						<div class="card-body container text-center">
							<a href="#" class="card-link">
							<img src="${pageContext.request.contextPath}/images/shop/하트.png"
								alt="" width="30px"></a> 
							<a href="#" class="card-link">
							<img src="${pageContext.request.contextPath}/images/shop/장바구니.png" alt="" width="30px"></a>
						</div>
					</div>
				</li>
				<li class="p-2">
					<div class="card" style="width: 18rem;">
						<img src="${pageContext.request.contextPath}/images/shop/향수.webp" class="card-img-top" alt="...">
						<div class="card-body container text-center">
							<h5 class="card-title">향수</h5>
							<p class="card-text">가격</p>
						</div>
						<ul class="list-group list-group-flush">
						</ul>
						<div class="card-body container text-center">
							<a href="#" class="card-link">
							<img src="${pageContext.request.contextPath}/images/shop/하트.png"
								alt="" width="30px"></a> 
							<a href="#" class="card-link">
							<img src="${pageContext.request.contextPath}/images/shop/장바구니.png" alt="" width="30px"></a>
						</div>
					</div>
				</li>
			</ul>
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

		<!--SNS 이미지 태그?-->


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