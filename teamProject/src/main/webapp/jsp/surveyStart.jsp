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

.title {
	/* border: 1px solid #000; */
	background-color: rgba(230, 230, 230, 0.4);
	margin: auto;
	border-radius: 20px;
	padding: 25px;
	width: 900px;
}
</style>
</head>
<body
	style="background-image: url('${pageContext.request.contextPath}/image/pexels-stijn-dijkstra-3265460.jpg'); 
	background-size: cover;">

	<div class="recommend h1 fw-bold" style="margin-top: 5%;">
		<p class="title fs-2">당신에게 맞는 최고의 향수를 찾아드립니다.</p>
	</div>

	<!-- 버튼 grid-flex제거 -->
	<!-- 백그라운드 이미지 컬러추가.-->
	<!-- 홈페이지 버튼 추가하고 두버튼 묶음, 글씨크기 증가 -->
	<div class="btnbox" style="text-align: center;">
		<div class="btn-group-vertical"
			style="margin-top: 350px; width: 400px;">
			<a href="${pageContext.request.contextPath}/jsp/survey01.jsp" type="button"
				class="btn btn-dark p-4 fs-3 fw-bold"><p>설문 시작하기</p></a> <a
				href="${pageContext.request.contextPath}/jsp/index.jsp" type="button"
				class="btn btn-outline-secondary p-3 fs-5 fw-bold link-dark "><p>홈페이지로
					돌아가기</p></a>
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