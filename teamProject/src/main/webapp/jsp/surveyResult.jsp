<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Document</title>
<style>
/* .thanks{
                border: 1px solid #000;
            } */
.recommend img {
	width: 300px;
	height: 300px;
	margin-bottom: 10px;
}

.recommend {
	text-align: center;
}

.recommend a {
	display: block;
	text-decoration: none;
	color: black;
}

.recommend p {
	margin-top: 10px;
	font-size: 20px;
}

.btn {
	display: flex;
}
</style>
</head>
<body
	style="background-image: url('${pageContext.request.contextPath}/image/pexels-stijn-dijkstra-3265460.jpg'); 
	background-size: cover;">
	<!-- 위치조정, 버튼 flex 제거, 백그라운드 이미지,컬러추가-->
	<!-- recommend 클래스 margin top줘서 전체적으로 위로올림 -->
	<div class="recommend p-5 h1"
		style="margin-top: 50px; background-color: rgba(200, 200, 200, 0.5);">
		<a href="${pageContext.request.contextPath}/jsp/shop.jsp"> 
		<img src="${pageContext.request.contextPath}/images/shop/향수.webp" alt=""
			style="margin-top: 85px;">
			<p>제품이름</p>
		</a>
		<p>다음과 같은 제품을 추천합니다.</p>
	</div>

	<!-- 홈페이지 버튼 -->
	<div style="text-align: center;">
		<div class="btn-group-vertical" style="margin-top: 50px;">
			<a href="${pageContext.request.contextPath}/jsp/survey01.jsp" type="button"
				class="btn btn-dark p-4 fs-3 fw-bold">설문 다시하기</a> <a
				href="${pageContext.request.contextPath}/jsp/index.jsp" type="button"
				class="btn btn-outline-secondary p-3 fw-bold link-dark">홈페이지로
				돌아가기</a>
		</div>

	</div>

	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
		crossorigin="anonymous">
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
	<script src="/Project/ProjectSVForm.js"></script>
</body>
</html>