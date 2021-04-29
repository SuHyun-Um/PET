<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
   integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
   crossorigin="anonymous">


<link rel="stylesheet" type="text/css"
   href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" type="text/css"
   href="${ pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/signinmobile.css">
<script
   src="${ pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>

<script
   src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
   integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
   crossorigin="anonymous"></script>

<script src="${ pageContext.request.contextPath }/resources/js/checkForm.js"></script>
<script>
if("${ param.msg }") alert("${ param.msg }");

function checkVal(){
   let form = document.loginForm;
   if (isNull(form.mid, "아이디를 입력하세요.")) return false;
   if (isNull(form.mpassword, "패스워드를 입력하세요.")) return false;
   return true;
}

</script>

<style>

#linearback{
}

</style>

</head>
<body>
<div class="container-fluid" style="padding-left: 0px; padding-right: 0px; text-align:center;">
   <header>
      <jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
   </header>
   <div class="backgroundForm" style="background-color:#444444; padding:0;
   background-image: url('${ pageContext.request.contextPath }/resources/img/backgrounds/seamless.jpg');
  background-blend-mode: darken;">

 	<div class="text-center" style="margin-top:1rem; padding:0; white-space:nowrap; width:80%;  display:block; margin-bottom:1rem;  ">
   <h5 id="title1"
            >더 밝은 <strong style="color:#85C0FF; font-size:1.2em;">댕댕이</strong>의 미래</h5>
  <h5 id="title2"
            >이제, 댕댕쓰와 함께하세요</h5>
 </div>
  
   <div class="container ourstyle"   align="center"  style="margin-top:0; margin-bottom:10rem; padding:0; width:30rem;"  >
      <h1  style="color:black; font-family:'Noto Sans KR'; font-weight:700; margin:0;padding:0; font-size: 1.3rem;">로그인</h1> 
      <form method="post" name="loginForm" onsubmit="return checkVal()"  style="margin-top: 0rem; height: 80%; margin-left:0;margin-right:0;  width:85%; padding:0rem;">
       <input type="text" name="mid" placeholder="Username" required="required" style="color:black;" />
       <br>
       
        <input type="password" name="mpassword" placeholder="Password"  required="required" style="color:black;"  />
        <br>
        <br>
        <button type="submit" class="btn btn-block ourbutton2" style="font-weight:700; color:white;   ">로그인</button>
        <h5
				style="color: #white; margin-top: 2rem; margin-bottom:1rem; font-weight: 700; font-size:1rem; font-family: 'Noto Sans KR';"><strong>회원</strong>이 아니신가요?</h5>
       
    </form>
     <button  class="btn  btn-block ourbutton" onclick="location.href='${ pageContext.request.contextPath }/signup'"   style="font-weight:700; width:85%; color:white; margin-bottom:1rem;"    onclick="location.href='singup.jsp' ">회원가입</button>
   </div>
   </div>
   </div>
	<footer>
		<jsp:include page="/WEB-INF/jsp/include/footer.jsp" />
	</footer>
</body>
</html>