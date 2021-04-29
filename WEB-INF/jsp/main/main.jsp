<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<html>
<head>

<title>DANGDANG'S</title>

<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
	
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/media-queries.css">




<!-- Javascript -->
<script
	src="${ pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/js/jquery-migrate-3.0.0.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
	integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
	crossorigin="anonymous"></script>





</head>





<body>

	<!-- bootstrap container-fluid 기본 padding값이 15px이라서 여백을 없애기 위해 스타일 설정 -->
	<div class="container-fluid"  style="padding-left: 0px; padding-right: 0px;" >
	<header>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>


	
		<!-- Top content 메롱 -->
		<div class="top-content" >
			<div class="row no-gutters">
				<div class="col">
					<div id="carousel-example" class="carousel slide"
						data-ride="carousel">

						<div class="carousel-inner">
							<div class="carousel-item active" id="bg1">
								
								<div class="carousel-caption  text-center" style="width:80%;white-spacing:pre-line;">
									<h4 >
										소중한 우리 아이<br>
									</h4>
									<h5>더 이상 아프지 않게</h5>
									<h6 >
										이제 우리 <strong style="color:#85C0FF; font-size:1.1em;">댕댕이</strong>가 어떤 병에 걸렸는지, <br>어떻게 치료해야 할 지 알아보세요.

									</h6>
									<div class="description wow fadeInUp">
										<button type="button" class="btn btn-outline-light" style="width:15rem;height:3rem; margin-top:2rem;"
											onclick="location.href='${ pageContext.request.contextPath }/diag'">진단하러
											가기</button>
										<ol class="carousel-indicators"
											style="position: absolute; top: 105%; left: 35%; transform: translate(-50%, -50%);">

											<li data-target="#carousel-example" data-slide-to="0"
												class="active"></li>
											<li data-target="#carousel-example" data-slide-to="1"></li>
											<li data-target="#carousel-example" data-slide-to="2"></li>
										</ol>
									</div>
								</div>
							</div>
							<div class="carousel-item" id="bg2">
								
								<div class="carousel-caption text-center" style="width:80%;white-spacing:pre-line;">

									<h4 class="c1">
										내 옆의 단짝친구<br>
									</h4>
									<h5 class="c2">요즘 끼니를 거른다면</h5>
									<h6 >
										이제 우리  <strong style="color:#85C0FF; font-size:1.1em;">댕댕이</strong>가 어떤 병에 걸렸는지, <br>어떻게 치료해야 할 지 알아보세요.

									</h6>
									<div class="description wow fadeInUp">
										<button type="button" class="btn btn-outline-light" style="width:15rem;height:3rem; margin-top:2rem;"
											onclick="location.href='${ pageContext.request.contextPath }/diag'">진단하러
											가기</button>
										<ol class="carousel-indicators"
											style="position: absolute; top: 105%; left: 35%; transform: translate(-50%, -50%);">

											<li data-target="#carousel-example" data-slide-to="0"></li>
											<li data-target="#carousel-example" data-slide-to="1"
												class="active"></li>
											<li data-target="#carousel-example" data-slide-to="2"></li>
										</ol>
									</div>
								</div>
							</div>
							<div class="carousel-item" id="bg3" >
								
								<div class="carousel-caption text-center" style="width:80%;white-spacing:pre-line;">

									<h4 class="c1">
										활발하던 댕댕이<br>
									</h4>
									<h5 class="c2">힘 없어 보인다면</h5>
									<h6 >
										이제 우리  <strong style="color:#85C0FF; font-size:1.1em;">댕댕이</strong>가 어떤 병에 걸렸는지, <br>어떻게 치료해야 할 지 알아보세요.

									</h6>
									<div class="description wow fadeInUp">
										<button type="button" class="btn btn-outline-light" style="width:15rem;height:3rem; margin-top:2rem;"
											onclick="location.href='${ pageContext.request.contextPath }/diag'">진단하러
											가기</button>
										<ol class="carousel-indicators"
											style="position: absolute; top: 105%; left: 35%; transform: translate(-50%, -50%);">

											<li data-target="#carousel-example" data-slide-to="0"></li>
											<li data-target="#carousel-example" data-slide-to="1"></li>
											<li data-target="#carousel-example" data-slide-to="2"
												class="active"></li>
										</ol>

									</div>
								</div>
							</div>
						</div>
						<a class="carousel-control-prev" href="#carousel-example"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#carousel-example"
							role="button" data-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer>
		<jsp:include page="/WEB-INF/jsp/include/footer.jsp" />
	</footer>

	

</body>
	

</html>