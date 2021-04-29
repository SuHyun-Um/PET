<%@ page session="false" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=83bfuniegk&submodules=geocoder"></script>
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/signinmobile.css">


</head>

<body style="background-color:#F8F1EB">
<div class="container-fluid" style="padding-left: 0px; padding-right: 0px; text-align:center;">
	<header>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>
	<div class="text-center" style="margin-top:1rem; margin-left:10%; padding:0; white-space:nowrap; width:80%; color:black; display:block; margin-bottom:1rem;  ">
   <h5 id="title1"
            style="color:#444444;">한밤중에 <strong style="color:#85C0FF; font-size:1.2em;">댕댕이가</strong><br>아픈가요?</h5>
  <h5 id="title2"
           style="color:#444444;" >24시간 동물병원 위치를 알려드려요</h5>
 </div>
 
<div id="map" style="width:95%;height:500px;margin:auto;"></div>
<script>

    // 현재위치 만들어주기
    var map = new naver.maps.Map('map', {
        center: new naver.maps.Point(304359, 550480),
        zoom: 10,
        mapTypes: new naver.maps.MapTypeRegistry({
            'normal': naver.maps.NaverMapTypeOption.getNormalMap({
                projection: naver.maps.TM128Coord
            }),
            'terrain': naver.maps.NaverMapTypeOption.getTerrainMap({
                projection: naver.maps.TM128Coord
            }),
            'satellite': naver.maps.NaverMapTypeOption.getSatelliteMap({
                projection: naver.maps.TM128Coord
            }),
            'hybrid': naver.maps.NaverMapTypeOption.getHybridMap({
                projection: naver.maps.TM128Coord
            })
        }),
        mapTypeControl: true
    });

    var infowindow = new naver.maps.InfoWindow();

    function onSuccessGeolocation(position) {
        var location = new naver.maps.LatLng(position.coords.latitude,
            position.coords.longitude);

        var utmk = naver.maps.TransCoord.fromLatLngToUTMK(location);
        var tm128 = naver.maps.TransCoord.fromUTMKToTM128(utmk);

        map.setCenter(tm128); // 얻은 좌표를 지도의 중심으로 설정합니다.
        infowindow.setContent('<div style=" width:12rem; text-align:center; white-space: pre-line;  padding:10px; color:black;">' +
            "현재위치 " + tm128 + '</div>'); // 현재위치 나타내기
        infowindow.open(map, tm128);
    }
    function onErrorGeolocation() {
        var center = map.getCenter();
        infowindow.setContent('<div style=" width:115px; text-align:center; padding:10px; color:black;">' +
            '<h5 style="margin-bottom:5px;color:black;">Geolocation failed!</h5>' + "latitude: " + center.lat() + "<br />longitude: " + center.lng() + '</div>');
        infowindow.open(map, center);
    }
    $(window).on("load", function () {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(onSuccessGeolocation, onErrorGeolocation);
        } else {
            var center = map.getCenter();
            infowindow.setContent('<div style=" width:115px; text-align:center; padding:10px; color:black;"><h5 style="margin-bottom:5px;color:#f00;">Geolocation not supported</h5></div>');
            infowindow.open(map, center);
        }
    });	

    // 마커들을 배열로 만들어주기위해 선언해 주는것들
    var markers = [], infoWindows = [];

<c:forEach items="${hosList}" var="hos">
        var marker = new naver.maps.Marker({
            map: map,
            title : '${hos.title}',
            position: new naver.maps.Point('${hos.mapx}', '${hos.mapy}'),
            icon: {
                url: ' ',
                size: new naver.maps.Size(24, 24),   //  size 속성은 이미지의 크기, origin 속성은 (0, 0), anchor 속성은 이미지의 중앙 하단 포인터를 기본값으로 설정합니다
                origin: new naver.maps.Point(0, 0),
                anchor: new naver.maps.Point(12, 24)
        }
        });
        var infoWindow = new naver.maps.InfoWindow({
            content: '<div style="width:28rem; height:10rem text-align:center; white-space: pre-wrap;  line-height:2rem; font-size:2rem; margin-top:0px; margin-bottom:0;padding:0px; color:black;"><strong>'+'${hos.title}' + '</strong>' + '<h1 style="line-height:1rem; margin-top:0px; margin-bottom:0; padding:0; text-align:left; font-size:1rem; padding:10px; font-size:1rem;">' 
            +'${hos.address}' +'</h1>'+'<h1 style="text-align:left; line-height:1rem;  margin-bottom:0; padding:0; font-size:1rem; padding:10px; font-size:1rem;">' + '${hos.roadAddress}'+'</h1>'+ '<h1 style=" line-height:1rem; margin-top:0px; margin-bottom:0; padding:0; text-align:left; font-size:1rem; padding:10px; font-size:1rem;">전화번호 ${hos.telephone}'+'</h1></div>'
        });
    markers.push(marker);
    infoWindows.push(infoWindow);
</c:forEach>
    // 해당 마커의 인덱스를 seq라는 클로저 변수로 저장하는 이벤트 핸들러를 반환합니다.
    function getClickHandler(map,markers,i동,seq) {
        return function(e) {
            var marker = markers[seq],
                infoWindow = infoWindows[seq];

            if (infoWindow.getMap()) {
                infoWindow.close();
            } else {
                infoWindow.open(map, marker);
            }
        }
    }

    for (var i=0, ii = markers.length; i < ii; i++) {
        naver.maps.Event.addListener(markers[i], 'click', getClickHandler(map, markers, infoWindows, i));
    }
</script>
</div>
	<footer style="margin-top:5rem;">
		<jsp:include page="/WEB-INF/jsp/include/footer.jsp" />
	</footer>

</body>
</html>