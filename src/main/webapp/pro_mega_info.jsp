<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>More Info</title>
<script src="js/jquery-3.6.3.min.js"></script>
<script src="js/jquery-ui-1.10.4.custom.min.js"></script>
<script type="text/javascript" src="js/productInfo.js"></script>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/productInfo.css" rel="stylesheet" type="text/css">

</head>
<body>

<div id="wrap">

<h1 id="title">Mega Coffee</h1>

<div id="top">
	<div class="pro_img">
	  <ul class="slide1">
		<li><img src="https://mblogthumb-phinf.pstatic.net/MjAyMTA0MThfMTI5/MDAxNjE4NzQ3MDI1NDgw.0K6GVeUMDyHDupFCi5O8AdNuJKdnRSSOfxbG4rrD8x8g.dp0gIeUaX9TlUR7Yog70VofFRj8WhCV4-NUDTs480YIg.JPEG.dbwlsdl0117/IMG_7827.jpg?type=w800" width="500px" height="500px"></li>
		<li><img src="https://blog.kakaocdn.net/dn/b7hWYO/btq5gwgrqdY/Kzs2kBUU0ZU36myD9kWUK1/img.jpg" width="500px" height="500px"></li>
	  </ul>
	  <p class="controller1">
	  	<span class="prev1">&lang;</span>
	  	<span class="next1">&rang;</span>
	  </p>
	</div>

	<div class="pro_info" id="info_pro">
	<p>Brand Name : <a href="https://www.mega-mgccoffee.com/menu/?menu_category1=1&menu_category2=1">MegaCoffee</a></p>
	<p>Product Name : Megaricano</p>
	<p>Option : HOT or ICE</p>
	<p>Product price : ₩3,000</p>
	<p>Enjoy a larger size of deep and rich Megamind Global Coffee Americano with 960ml,<br> perfect for those who want more of their favorite coffee</p>
</div>
<div class="pro_info" id="info_pro2" style="display:none;">
	<p>브랜드명 : <a href="https://www.mega-mgccoffee.com/menu/?menu_category1=1&menu_category2=1">메가커피</a></p>
	<p>상품명 : 메가리카노</p>
	<p>옵션 : 뜨거운 or 차가운</p>
	<p>상품가격 : ₩3,000</p>
	<p>깊고 진한 메가MGC커피 아메리카노를 '960ml' 더 큼직하게 즐길 수 있는 대용량 커피.</p>
</div>

<input type="button" value="Korean" id="transformation" onclick="transformation()">
<input type="button" value="English" id="transformation2" onclick="transformation2()">
<input type="button" value="HOME" id="transformation3" onclick="transformation3()">
<script>
	function transformation() {
		document.getElementById('info_pro').style.display = 'none';
		document.getElementById('info_pro2').style.display = 'block';
	}
	function transformation2() {
		document.getElementById('info_pro').style.display = 'block';
		document.getElementById('info_pro2').style.display = 'none';
	}
	function transformation3() {
		 window.location.href = "/portfolio";
	}
</script>
	
</div>

<div id="middle">
	<ul class="slide2">
		<li><img src="https://mblogthumb-phinf.pstatic.net/MjAxOTA5MTlfMTg1/MDAxNTY4ODE5OTkxNTEy.E4bUtEENg7yQyODyJO_V2kYrWc-QyzKMFD_iFvFFwVAg.T3v7s8tzyV59EXq7LPtVLZgOSfApi5-8UGFsqwU1KVEg.JPEG.leegiho9999/coffee_sample_info.jpg?type=w800" width="1200px" height="500px"></li>
		<li><img src="./images/big2.jpg" width="1200px" height="500px"></li>
	</ul>
    <p class="controller2">
	  	<span class="prev2">&lang;</span>
	  	<span class="next2">&rang;</span>
	</p>
</div>

<div id="bottom">
	
	<%@ include file="review.jsp" %>

</div>

</div>
	
</body>
</html>