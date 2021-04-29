<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="ko">
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<html>
		
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Do+Hyeon|Jua|Nanum+Gothic|Noto+Sans+KR&display=swap" rel="stylesheet">
        <!-- CSS -->
       
         <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/style.css">
        <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/media-queries.css">
      
       
<!-- Top menu -->
<!-- 높이가 안 맞는 문제가 발생하여서 style.css에서 navbar-no-bg의 높이값도 5rem으로 지정하였음. -->
<div style="height:5rem; ">
      <nav class="navbar navbar-dark fixed-top navbar-expand-md navbar-no-bg"  >
      
         <div class="container-fluid" >
            <a class="navbar-brand" href="${ pageContext.request.contextPath }/">
               
            </a>
             <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                 <span class="navbar-toggler-icon"></span>
             </button>
             <div class="collapse navbar-collapse" id="navbarNav">
                 <ul class="navbar-nav ml-auto"  >
                     <li class="nav-item"  >
                         <a class="nav-link" href="${ pageContext.request.contextPath }/board"  >ARTICLES</a>
                     </li>
                     <c:if test="${ loginVO.mid == 'admin' }">
                     <li class="nav-item">
                         <a class="nav-link" href="${ pageContext.request.contextPath }/post">POSTING</a>
                     </li>
                     </c:if>
                     <!-- 로그인 안됐을때 -->
                     <c:if test="${ empty loginVO }">
                     <li class="nav-item">
                         <a class="nav-link" href="${ pageContext.request.contextPath }/login">LOGIN</a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" href="${ pageContext.request.contextPath }/signup">SIGN UP</a>
                     </li>
                     </c:if>
                     <!-- 로그인 됐을때 -->
                     <c:if test="${ not empty loginVO }">
                     <li class="nav-item">
                         <a class="nav-link" href="${ pageContext.request.contextPath }/mypage">MY PAGE</a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link" href="${ pageContext.request.contextPath }/logout">LOG OUT</a>
                        
                     </li>
                     </c:if>
                     <li class="nav-item">
                         <a class="nav-link" href="${ pageContext.request.contextPath }/naverApi">Maps</a> 
                     </li>
                 </ul>
             </div>
          </div>
          
      </nav> 
      </div>
      

<!-- Javascript -->
      <script src="${ pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
      <script src="${ pageContext.request.contextPath }/resources/js/jquery-migrate-3.0.0.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
      <script src="${ pageContext.request.contextPath }/resources/js/jquery.backstretch.min.js"></script>
        <script src="${ pageContext.request.contextPath }/resources/js/wow.min.js"></script>
        <script src="${ pageContext.request.contextPath }/resources/js/waypoints.min.js"></script>
        <script src="${ pageContext.request.contextPath }/resources/js/scripts.js"></script>
</html>