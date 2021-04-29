<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">


<script
	src="${ pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/resources/js/jquery-migrate-3.0.0.min.js"></script>
<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet"> 


<style>

footer {
  background: #222;
  color: #aaa;
  padding-top: 10px;
}

footer a {
  color: #aaa;
}

footer i:hover {
  color: #aaa;
}

footer h3 {
 color: #0894d1;
  letter-spacing: 1px;
  margin: 30px 0 20px;
}

footer .three-column {
 overflow: hidden;
}

footer .three-column li{
 width: 33.3333%;
  float: left;
  padding: 5px 0;
}

footer .socila-list {
  overflow: hidden;
  margin: 20px 0 10px;
}

footer .socila-list li {
  float: left;
  margin-right: 3px;
  opacity: 0.7;
  overflow: hidden;
  border-radius: 50%;
  transition: all 0.3s ease-in-out;
}

footer .socila-list li:hover {
  opacity: 1;
}

footer .img-thumbnail {
  background: rgba(0, 0, 0, 0.2);
  border: 1px solid #444;
  margin-bottom: 5px;
}

footer .copyright {
  padding: 15px 0;
  background: #333;
  margin-top: 20px;
  font-size: 15px;
}

footer .copyright span {
  color: #0894d1;
}

h7{
	color: white; font-size:1.7rem; white-space: nowrap;
}
h8{
	font-size:1.4rem; white-space: nowrap;
	font-weight:700;

}
h8:hover {
	text-decoration: none;
	color: #fff;
}
h8:focus {
	color: #fff;
}

i.fab{
	font-size:3rem; color:white;
}
</style>
</head>



<body>
<!-- Footer -->
		<footer class="pt-5 pb-4" id="contact">
		<form method="get" action="${ pageContext.request.contextPath }/board">
						</form>
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-6 col-sm-6 mt-2 mb-4">
						<h7 class="mb-4 font-weight-bold">ABOUT US</h7>
						<h6 class="mb-4" style="font-family:'Black Han Sans';font-weight:100;">DangDang'S</h6>
						<ul class="f-address">
							<li>
								<div class="row">
									<div class="col-1"><i class="fas fa-map-marker"></i></div>
									<div class="col-10">
										<h6 class="font-weight-bold mb-0">Address:</h6>
										<p>서울특별시 서초구 서초대로74길33 비트빌 3층</p>
									</div>
								</div>
							</li>
							<li>
								<div class="row">
									<div class="col-1"><i class="far fa-envelope"></i></div>
									<div class="col-10">
										<h6 class="font-weight-bold mb-0">Anything to ask?</h6>
										<p>wkrleksm1@naver.com</p>
									</div>
								</div>
							</li>
							<li>
								<div class="row">
									<div class="col-1"><i class="fas fa-phone-volume"></i></div>
									<div class="col-10">
										<h6 class="font-weight-bold mb-0">Address:</h6>
										<p>010-2051-2131</p>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6 mt-2 mb-4">
						<h7 class="mb-4 font-weight-bold">NAVIGATION</h7>
						<ul class="f-address" style=" margin-top:1rem; " >
							<li style="padding-top: 1rem;padding-bottom: 1rem;">
								<div class="row">
									<div class="col-10">
									
										<h8 onclick="location.href='${ pageContext.request.contextPath }/board'"> 게시판 </h8>
										
									</div>
								</div>
							</li>
							<li style="padding-top: 1rem;padding-bottom: 1rem;">
								<div class="row">
									<div class="col-10">
										<h8 onclick="location.href='${ pageContext.request.contextPath }/diag'"> 진단하기</h8>
										
									</div>
								</div>
							</li>
							<li style="padding-top: 1rem;padding-bottom: 1rem;">
								<div class="row">
									<div class="col-10">
										<h8 onclick="location.href='${ pageContext.request.contextPath }/login'">로그인 </h8> 
										
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6 mt-2 mb-4">
						<h7 class="mb-4 font-weight-bold">LATEST UPDATES</h7>
						<ul class="recent-post">
						<c:choose>
						<c:when test="${ not empty bList }">
							<c:forEach items="${ bList }" var="board" begin="1" end="3">
								<li>
									<div>${ board.dname}</div>
									<div>안녕나는동우기얌</div>
								</li>
							</c:forEach>
						</c:when>
						<c:otherwise>
						<li>
							<h8 class="mb-4 font-weight-bold"> 글이 없습니다.</h7>
							</li>
						</c:otherwise>
						</c:choose>
					</ul>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6 mt-2 mb-4">
						<h7 class="mb-4 font-weight-bold">CONTACT WITH US</h7>
						
						<div class="mt-4" style="position:relative;">
							<div class="row font-weight-bold" style="position:relative; left:10%;">follow us on Instagram<a href="https://www.instagram.com/p/B1nlBNsnwsJ/?utm_source=ig_web_copy_link" title="instagram" style="margin-left:5%;"><i class="fab fa-instagram"></i></a></div>
							
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- Copyright -->
		<section class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-md-12 ">
						<div class="text-center text-white">
							&copy; 2019 DangDang'S. All Rights Reserved.
						</div>
					</div>
				</div>
			</div>
		</section>
</body>
</html>

