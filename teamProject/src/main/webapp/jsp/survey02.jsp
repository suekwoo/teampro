<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>설문</title>
<style>
/* h3{
                border: 1px solid #000;
            } */
body {
	width: 100%;
	height: 100%;
}

.nav {
	text-align: center;
}

.nav a {
	text-decoration: none;
	color: black;
}

.h1 {
	background-color: rgba(230, 230, 230, 0.4);
	margin: auto;
	border-radius: 20px;
	padding: 25px;
}
</style>
</head>

<body
	style="background-image: url('/image/pexels-stijn-dijkstra-3265460.jpg'); background-size: cover;">
	<nav>
		<!--닫기 버튼 ,사이즈 조절가능 -->
		<button onClick="location.href='${pageContext.request.contextPath}/jsp/index.jsp'" type="button"
			class="me-5 mt-3 btn btn-outline-dark  position-absolute top-0 end-0 translate-middle-x"
			style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: 1 rem;">
			닫기</button>
	</nav>

	<div class="container-fluid  text-center" style="margin-top: 5%;">
		<div class="col col-xl-12 m-auto">
			<div class="row m-0 justyfy-center">
				<div class="header row m-0">
					<!-- 설문 헤더 -->
					<div class="h1 m-0 p-5 fw-bold">나에게 맞는 향수 찾기</div>
				</div>
				<div class="row m-0">
					<!-- 설문 문항 -->
					<h3 class="m-0 p-5">설문 문항1</h3>
				</div>
				<div class="row m-0">
					<div class="m-0 p-5">
						<!-- 라디오박스 -->
						<div class="check p-3 m-1" style="text-align: center;">
							<input class="btn-check form-check-input" type="radio"
								name="Radiock2" id="Radio1" checked /> <label
								class="btn btn-outline-dark form-check-label fw-bold"
								for="Radio1" style="width: 80%; padding: 10px;"> &nbsp;
								1. Lorem ipsum dolor sit amet. </label>
						</div>
						<div class="check p-3 m-1" style="text-align: center;">
							<input class="btn-check form-check-input" type="radio"
								name="Radiock2" id="Radio2" /> <label
								class="btn btn-outline-dark form-check-label fw-bold"
								for="Radio2" style="width: 80%; padding: 10px;"> &nbsp;
								2. Lorem ipsum dolor sit amet. </label>
						</div>
						<div class="check p-3 m-1" style="text-align: center;">
							<input class="btn-check form-check-input" type="radio"
								name="Radiock2" id="Radio3" /> <label
								class="btn btn-outline-dark form-check-label fw-bold"
								for="Radio3" style="width: 80%; padding: 10px;"> &nbsp;
								3. Lorem ipsum dolor sit amet. </label>
						</div>
						<div class="check p-3 m-1" style="text-align: center;">
							<input class="btn-check form-check-input" type="radio"
								name="Radiock2" id="Radio4" /> <label
								class="btn btn-outline-dark form-check-label fw-bold"
								class="form-check-label" for="Radio4"
								style="width: 80%; padding: 10px;"> &nbsp; 4. Lorem
								ipsum dolor sit amet. </label>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 이전,다음버튼 -->
	<footer class="text-center">
		<div class="btn-group" style="margin-top: 5%; width: 450px;">
			<a href="${pageContext.request.contextPath}/jsp/survey01.jsp" class="btn btn-outline-dark fs-5">이전</a>
			<a href="${pageContext.request.contextPath}/jsp/survey03.jsp" class="btn btn-dark fs-5" onclick="">다음</a>
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
		<script src=""></script>
</body>
</html>