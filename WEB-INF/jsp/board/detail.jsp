<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/bootstrap.min.css">


<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/layout.css">
	<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/detailmobile.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/style.css">

<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
   integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
   crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	function deleteComment(no){
		if(confirm("댓글을 삭제하시겠습니까?")){
			$.ajax({
				type : "PUT",
				url : "${ pageContext.request.contextPath }/comment/"+no,
				success : function(data){
					if (data == 1){
						location.href="${ pageContext.request.contextPath }/board/${ vo.bno }"
					} else {
						alert("삭제에 실패했습니다.");
					}
				}
			});
		}
	}
	
	
</script>


<style>









</style>

</head>
<body>
<div class="container-fluid" style="padding-left: 0px; padding-right: 0px; text-align:center; background-color:#F8F1EB" >
	<header>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>
	<br>


		<div class="container ourfont"
			style="font-size: 1.5rem;  font-weight: 400; color: black; display: inline-block;">


			


			<h5 class="text-center" id="head1"
				>${ vo.dname }</h5>






			<h4 class="text-center"
				id="head2">
				<strong>작성일</strong>: ${ vo.bdate }
			</h4>


			<img src="${ pageContext.request.contextPath }/upload/${ vo.bfname }"
				class="rounded-circle " alt="Cinque Terre"
				style="height: 25rem; width: 25rem; border: 5px solid white; margin-top: 5rem;">
			<h5
				style="color: #444444; margin-top: 1rem; font-weight: 300; font-size: 1.5rem; font-family: 'Jua';">
				Presented by <Strong>DangDang'S</Strong>
			</h5>

			<h5
				class="titlefont">나타나는
				증상들</h5>

			<ul class="text-left" style="margin-left:2%;">
				<c:forEach items="${ syname }" var="syname" varStatus="status">
					<li><h1
							style="font-weight: 700; color:#666666; margin-top: 1rem; margin-left: 5%; font-family: 'Noto Sans KR'; margin-left: 0; font-size: 1.8rem;">
							<strong style="color: #666666; font-family:'Black Han Sans'; font-weight:100; font-size:3.2rem; margin-right:2%;">${status.count}.</strong>${ syname }</h1></li>
				</c:forEach>
			</ul>

			<h5
				class="titlefont">요약</h5>

			<div class="container" style="width: 90%; white-space: pre-wrap; ">
				<h7 class="text-left"
					style="color: #444444; white-space: pre-line; margin-top:0rem; line-height:3rem; margin-left:5%;
						 font-weight:700; font-size: 1.5rem; width:95%; display:block; font-family:'Noto Sans KR';">${fn:replace(vo.bsum, replaceChar, "<br/>") }</h7>
			</div>

			<h5
				class="titlefont">원인</h5>


			<h2 class="text-left"
				style="color: #444444; white-space: pre-line; margin-left:5%;margin-top: 1rem; line-height: 3rem; font-weight: 700; font-size: 1.5rem; width: 90%; display: block; font-family: 'Noto Sans KR';">
				${fn:replace(vo.bcause, replaceChar, "<br/>") }</h2>


			<h5
				class="titlefont">치료법</h5>


			<div class="container" style="width: 90%; white-space: pre-wrap;">
				<h5 class="text-left"
					style="color: #444444; white-space: pre-line; margin-left:2%; width:80%; margin-top: 2rem;  line-height: 3rem; font-weight: 700; font-size: 1.5rem; width: 90%; display: block; font-family: 'Noto Sans KR';">${fn:replace(vo.btreat, replaceChar, "<br/>") }</h5>
			</div>


			<h5
				class="titlefont">관리법</h5>

			<div class="container" style="width: 90%; white-space: pre-line;">
				<h5 class="text-left"
					style="color: #444444; white-space: pre-line; margin-left:5%; width:80%;  margin-top: 2rem; line-height: 3rem; margin-left:5%; font-weight: 700; font-size: 1.5rem; width: 100%; display: block; font-family: 'Noto Sans KR';">${fn:replace(vo.bcare, replaceChar, "<br/>") }</h5>
			</div>



			<h5
				style="color: #444444; margin-left:10%;white-space: pre-line; width:80%;margin-top: 10rem; font-weight: 300; font-size: 3rem; font-family: 'Black Han Sans';">우리 강아지가 걱정 된다면?</h5>


			<button type="button" class="btn ourbutton2" style="width:20rem;height:3rem; margin-top:1rem; margin-bottom:5rem; background-color:#444444;" 
				onclick="location.href='${ pageContext.request.contextPath }/diag'">진단하러
				가기</button>

		</div>
		<br> <br>




					<div align="center" style="width: 80%; text-align: center; margin-left: 5%;">
						<c:if test="${ commentList != null }">
							<div class="container"></div>
								<c:forEach items="${ commentList }" var="comment">
									<div class="row">
										<div class="col">${ comment.mnick }</div>
										<div class="col-6" style="color: black;">${ comment.ccontent }</div>
										<div class="col">${ comment.cdate }</div>
										<c:if test="${ loginVO.mnick == comment.mnick }">
										<div class="col-1"><input class="btn btn-secondary" type="button" style="width: 50px;" value="삭제"
											onclick="deleteComment(${ comment.cno })"></div>
										</c:if>
									</div>
									<br>
									<hr>
								</c:forEach>
								
							</div>
						</c:if>
						<br>
						<div align="center" style="width: 80%; text-align: center; margin-left: auto; margin-right: auto;">
						<c:choose>
						
							<c:when test="${ not empty loginVO }">
								<form method="post"
									action="${ pageContext.request.contextPath }/comment/${ vo.bno }">
									<%-- 댓글 달기 폼 cno, mnick, bno, ccontent, cdate, ctype --%>
									<input type="hidden" name="mnick" value="${ loginVO.mnick }">
									<input type="hidden" name="bno" value="${ vo.bno }">
									<div class="container" style="width:100%">
										<div class="row">
											<div class="col-3">${ loginVO.mnick }</div>
											<div class="col-xs-8 col-md-6 col-lg-6"><textarea name="ccontent" rows="2" style="width:100%;"></textarea>
												<button type="submit" class="btn btn-outline-dark">댓글작성</button></div>
										</div>
									</div>
								</form>
							</c:when>
							<c:otherwise>
								<div style="width: 80%; margin-bottom: 5rem;	" >
									<a style="color:grey; font-size:2rem;"href="${ pageContext.request.contextPath }/login"><strong style="color:red; font-size:3rem;">로그인</strong> 후 댓글을 달
									수 있습니다.</a>
								</div>
							</c:otherwise>
							
						</c:choose>
						</div>
						<br>
					</div>
				

			
			
   
   
   
   
   
   
   
   
   
   
   <footer>
		<jsp:include page="/WEB-INF/jsp/include/footer.jsp" />
	</footer>

   
</body>
</html>