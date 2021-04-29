<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<style>
#home-tab, #profile-tab, #alink{
color: #0455BF;
}
#home-tab:hover, #profile-tab:hover, #alink:hover{
color: #06BFBF;
}

#btnInf:hover{
	opacity: 0.5;
}

#btnDel{
	background: transparent;
	border: none;
	width:45px;
	height:45px;
}

#btnDel:hover{
	opacity:0.5;
}
</style>
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
	href="${ pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet" href="resources/css/board.css">
<script
	src="${ pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<script>
	function deletePet(no){
		if(confirm("펫을 삭제하시겠습니까?")){
			$.ajax({
				type : "DELETE",
				url : "${ pageContext.request.contextPath }/pet/"+no,
				success : function(data){
					if (data == 1){
						location.href="${ pageContext.request.contextPath }";
					} else {
						alert("삭제에 실패했습니다.");
					}
				}
			});
		}
	}
</script>
</head>
<body>
<div class="container-fluid" style="padding-left: 0px; padding-right: 0px;">
	<header>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>
	<div class="backgroundForm"
	 style="background-color:#666666; background-image:url('${ pageContext.request.contextPath }/resources/img/backgrounds/mypage.jpg');
	  background-blend-mode: multiply;">
	<div class="text-center" style="margin-top:0; padding:0; width:80%; margin-left:24%; display:block; margin-bottom:0;  ">
   <h5
            style=" display: block; width:70%;white-space:pre-line; color: white; margin-top: 3rem; margin-bottom:0; font-weight: 700; font-size: 2.5rem; font-family: 'Noto Sans KR';">우리 <strong style="color:#85C0FF; font-size:1.2em;">댕댕이</strong>는 어떤 질병에 취약할까?</h5>
  <h5
            style=" display: block; width:70%; white-space:pre-line; color: white; margin-top: 1rem; margin-bottom:3rem; font-weight: 700; font-size: 1.5rem; font-family: 'Noto Sans KR';">이제, 걱정마세요.</h5>
 </div>
	<div style="width: 50em; text-align: center; background-color: rgba(255,255,255,0.9); padding: 1rem; border-radius: 1em; magin-top: 0; margin-bottom: 15rem;">
	<h2 style="color: black; font-weight: 100; font-size:3.2rem;font-family:'Black Han Sans';">마이페이지</h2>
	<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">내 정보</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">나의 댕댕이</a>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab" style="text-align: left;">
  	<h2 style="color:black;"><strong style="font-family:'Noto Sans KR';  font-size:1.2em; color:#42A0DE; ">${ loginVO.mnick }</strong> 님 안녕하세요</h2> <br>
  	<h2 style="color:black;">아이디 :<strong> ${ loginVO.mid }</strong></h2><br>
  	<h3 class="text-center"><a id="alink" href="${ pageContext.request.contextPath }/mypage/checkPwd">회원정보 수정하기</a></h3>
  </div>
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
	<h2 style="color:black;">내 댕댕이</h2>
		<hr style="border-color:black;">
		<div align="center">
			<div class="container" style="font-size: 30px; margin-bottom: 10px;">
				<c:forEach items="${ petList }" var="pet">
 				 <div class="row">
 				 <div class="col-1"><img src="${ pageContext.request.contextPath }/resources/img/icons/dogIcon.png"
 				  style="background: transparent; width:40px; height:40px;"></div>
  				  <div class="col-sm" style="color: black;">
   					   ${ pet.pname }
   				 </div>
 			   <div class="col-sm" style="color: black; font-size: 20px;">
  			    ${ pet.spname }
 			   </div>
 			   <div class="col-sm" style="font-size: 20px;">
  			    <button onclick="location.href='${ pageContext.request.contextPath }/board/spcode/${ pet.spcode }'"
  			     style="background: transparent; border: none;">
  			    	<img id="btnInf" src="${ pageContext.request.contextPath }/resources/img/icons/inform_icon.png"
  			    	 style="width:35px; height:35px;"></button>
  			  </div>
  			   <div class="col-sm" style="text-align: center;">
 			   <input id="btnDel" type="image" src="${ pageContext.request.contextPath }/resources/img/icons/del_icon.png"
 			    onclick="deletePet(${ pet.pno })">
  			  </div>
 			 </div>
 			 </c:forEach>
			</div>
			<br>
			<button class="btn btn-info" onclick="location.href='${ pageContext.request.contextPath }/pet'">댕댕이 등록하기</button>
			<br>
		</div>
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