<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">

<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/media-queries.css">
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/signinmobile.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
   var isChecked = {
         id: 0,
         nickname: 0
   }

   function validCheck(idx){
      let tagId;
      if (idx == 0) tagId = "#id";
      else tagId = "#nick";
      let val = $(tagId).val();
      if (val != ""){
    	  $.ajax({
    	         url: "${ pageContext.request.contextPath }/signup/valid",
    	         data: {
    	            index: idx,
    	            query: val
    	         	},
    	         type: "post",
    	         success: function(data){
    	            if (data == ""){
    	               if (idx == 0){
    	                  $("#idchk").text("사용 가능한 아이디입니다.");
    	                  isChecked.id = 1;
    	               } else{
    	                  $("#nickchk").text("사용 가능한 닉네임입니다.");
    	                  isChecked.nickname = 1;
    	               }
    	            } else {
    	               if (idx == 0) {
    	                  $("#idchk").text("사용 불가능한 아이디입니다." );
    	                  isChecked.id = 0;
    	               } else{
    	                  $("#nickchk").text("사용 불가능한 닉네임입니다." );
    	                  isChecked.nickname = 0;
    	               }
    	            }
    	            if (isChecked.id == 1 && isChecked.nickname == 1) $("#submit").attr("disabled", false)
    	            else $("#submit").attr("disabled", true)
    	         }
   	      });
      } else {
    	  alert("값을 입력하세요.");
      }
   }
   function checkInput(){
	   if (isChecked.id == 1 && isChecked.nickname == 1)
		   return true;
	   else
		   alert("중복확인을 해주세요!");
		   return false;
   }
</script>
</head>




<body>
	<div class="container-fluid"
		style="padding-left: 0px; padding-right: 0px;">
		<header>
			<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
		</header>

		<div class="backgroundForm"
			style="background-color:#444444;
			background-image: url('${ pageContext.request.contextPath }/resources/img/backgrounds/seamless.jpg');
			background-blend-mode: darken;">	
			
			
			<div class="text-center" style="width:100%;display:block;  ">


   <h5 id="title1" style="white-space:nowrap; display:block;"
            >우리 <strong style="color:#85C0FF;  font-size:1.2em; ">댕댕이</strong>는<br>어떤 병을 조심해야 할까?</h5>
  <h5 id="title2"
            style="display:block;">이제, 걱정마세요.</h5>

			<div class="container ourstyle" style="width: 22rem; margin-bottom:10rem; diplay: block;">
            <h1
               style="color:black; font-family:'Noto Sans KR'; font-weight: 700; margin: 0; padding: 0; font-size: 1.3rem;">회원가입</h1>
            <form:form  method="post" commandName="memberVO"
               style=" margin-top: 0rem;  margin-right:0; margin-bottom:0;   padding-top:0; padding-bottom:0; " onsubmit="return checkInput()">
               <div >
                  <form:input id="id"  placeholder="id"
                     path="mid" style="color:black; width:15rem; margin-left:0.8rem; height:3rem;" />
                  <input type="button" class="btn  ourbutton2"
                     style="font-family: Noto Sans Kr; margin-left: 0.2rem; width:5rem; height:3rem; font-size:0.8rem; font-weight:700; " 
                     value="중복확인" onclick="validCheck(0)">
               </div>
               
               <form:errors path="mid" class="error " />
               
               <label id="idchk" class="ourfont" style="text-align:center; margin-left:1rem;" >&nbsp;</label>
               
               <div style="text-align:left; margin-left:1.2rem;">
                  <form:input type="password" placeholder="password"
                     path="mpassword"  
                     style=" color:black; width:15rem; height:3rem;"  />
                  
               </div>
               <form:errors path="mpassword" class="error" />
                  <label class="ourfont" style="text-align:center; margin-left:1rem;" >
                  &nbsp;
                  </label>
               <div >
                  <form:input id="nick"  placeholder="nickname"
                     path="mnick" style="background-color:white; color:black; width:15rem; margin-left:0.8rem; height:3rem;" />
                  <input type="button" class="btn ourbutton2"
                     style="font-family: Noto Sans Kr; margin-left: 0.2rem; width:5rem;height:3rem; font-size:0.8rem; font-weight:700; " value="중복확인" onclick="validCheck(1)">
               </div>
               <form:errors path="mnick" class="error" />
               <label id="nickchk" class="ourfont" style="text-align:center; margin-left:1rem;">&nbsp;</label>


               
               <button id="submit" type="submit" class="btn btn-block ourbutton"
                  style=" font-family: Noto Sans Kr; width:20rem; font-weight: 700; color: white; margin-left:1rem; margin-top:1.5rem; margin-bottom: 1rem; margin-right:0.8rem;  ">회원가입</button>
                  
                   <h5
            style="color: #white; margin-top: 0.5rem; margin-bottom:0.5rem; font-weight: 700; margin-left:1.5rem;font-size:1rem; font-family: 'Noto Sans KR';">이미 <strong>회원</strong>이신가요?</h5>
               
            </form:form>
            <button type="submit" class="btn btn-block ourbutton2" onclick="location.href='${ pageContext.request.contextPath }/login'" style="font-weight:700;  margin-left:1rem;color:white; width:20rem; margin-bottom:1rem;  ">로그인</button>   
         </div>
      </div>
       </div>
 
   </div>
   <footer>
      <jsp:include page="/WEB-INF/jsp/include/footer.jsp" />
   </footer>
</body>
</html>