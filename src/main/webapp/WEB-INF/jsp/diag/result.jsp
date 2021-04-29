<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.dname{
	display: inline-block;
	width: 150px;
}

.bsum{
	width: 60%;
}

a:link, a:visited {
	color: #718ABE;
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}

body > div > span:hover{
	cursor: pointer;
}
</style>

<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/detailmobile.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js">



</script>
<script>
	var listSize = ${ fn:length(voList) }
	var spanStart = 2;
	var divStart = spanStart + 1 + listSize;
	
	$(document).ready(function(){
		for(var i = divStart; i < (divStart + listSize); i++){
			$("body > div > div:nth-child(" + i + ")").css("display", "none");
		}
		$("body > div > div:nth-child(" + divStart + ")").css("display", "block");
		$("body > div > span:nth-child(" + spanStart + ")").css("font-size", "40px");
		$("body > div > span:nth-child(" + spanStart + ")").css("color", "red");
	});
	
	function viewSummary(number){
		var spanid = spanStart + parseInt(number);
		var divid = divStart + parseInt(number);
		for(var i = spanStart; i < (spanStart + listSize); i++){
			$("body > div > span:nth-child(" + i + ")").css("font-size", "18px");
			$("body > div > span:nth-child(" + i + ")").css("color", "black");
		}
		$("body > div > span:nth-child(" + spanid + ")").css("font-size", "32px");
		$("body > div > span:nth-child(" + spanid + ")").css("color", "red");
		for(var i = divStart; i < (divStart + listSize); i++){
			$("body > div > div:nth-child(" + i + ")").css("display", "none");
		}
		$("body > div > div:nth-child(" + divid + ")").css("display", "block");
		
	}

	function copy_to_clipboard(val) {
	      var t = document.createElement("textarea");
	        document.body.appendChild(t);
	        t.value=val;
	        t.select();
	        document.execCommand("Copy");
	        document.body.removeChild(t);
	        alert("URL이 클립보드에 복사되었습니다!");
	}

</script>
</head>
<body style="background-color:#F8F1EB; text-align:center;">


		<header>
			<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
		</header>
		<h5 class="text-center titlefont" style="margin-top:2rem;"
			>진단결과</h5>
	
	<hr style="margin-left: 100px; margin-right: 100px;">
		<div class="bsum container" style=" width:100%;">
			<h5 id="result1">가장 유력한 질병은<br> ${ dnameList[0] } 입니다.</h5>
			<c:forEach items="${ voList }" var="vo" varStatus="status">
				<span class="dname" style="color: #444444; margin-top: 1rem;  font-weight: 300; font-family: 'Noto Sans KR';"><strong onclick="viewSummary('${ status.index }')">${ vo.dname }</strong></span>
			</c:forEach>
			<hr>
			<c:forEach items="${ voList }" var="vo">
				<div class="bsum" id="result2">
					<span class="text-center" >${fn:replace(vo.bsum, replaceChar, "<br/>") }</span>
					<br><br><br>
					<button
					onclick="location.href='${ pageContext.request.contextPath }/board/${ vo.bno }'"
							class="btn ourbutton3" style="color:white; width:15rem; height:3rem; margin-top:2rem; margin-bottom:2rem; ">더 알아보기</button>
					
				</div>
			</c:forEach>
		</div>

		<c:if test="${ not empty url }">
		
		<h5
				id="result3">결과를 공유하고 싶다면?</h5>
	
		<div class="imgcontainer" style=" left:50%; width:10rem;height:10rem;margin-top:2rem;margin-bottom:5rem; ">
			<img src="${ pageContext.request.contextPath }/resources/ico/clipboard.png" alt="share" class="backimage"
				style="width: 100%; ">
			<div class="middle" style="margin-top:1rem;">
				<div class="poptext" style="padding:0;"><button class = "btn" style=" white-space:nowrap; font-family: 'Black Han Sans'; font-weight:100;color:white; width:6rem; height:2rem; margin-top:0; padding:0; border-radius:0;" 
			onclick="copy_to_clipboard('http://52.79.196.152:7777${ pageContext.request.contextPath }/${ url }')">공유하기</button></div>
			</div>
		</div>
		
		
	</c:if>


	<footer>
		<jsp:include page="/WEB-INF/jsp/include/footer.jsp" />
	</footer>
</body>
</html>