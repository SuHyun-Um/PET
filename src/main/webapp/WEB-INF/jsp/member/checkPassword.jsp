<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 확인</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"
   href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" type="text/css"
   href="${ pageContext.request.contextPath }/resources/css/style.css">

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	if("${ param.msg }") alert("${ param.msg }");
</script>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>
	<div class="backgroundForm" style="background-color:#666666;
	 background-image:url('${ pageContext.request.contextPath }/resources/img/backgrounds/mypage.jpg'); background-blend-mode: multiply;">
	<div style="margin-top: -50px; background-color: rgba(255,255,255,0.9); padding: 1rem; border-radius: 1em; width: 30rem;">
	<h3 style="color: black;">
		<strong>비밀번호</strong> 확인창입니다.</h3><br>
	<h3 style="color: black; margin-top: -10px;">
	현재 비밀번호를 입력해주세요
	</h3><br>
		<form method="post" action="${ pageContext.request.contextPath }/mypage/check">
			<input type="hidden" name="mid" value="${ loginVO.mid }">
			<input type="password" id="pwd" name="mpassword" size="20" style="width: 15em; color: black;">
			<button id="submit" type="submit" class="btn btn-outline-danger">확인</button>
		</form>
	</div>
	</div>
</body>
</html>