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

<h1 id="title">Paik's Coffee</h1>

<div id="top">
	<div class="pro_img">
	  <ul class="slide1">
		<li><img src="https://st.kakaocdn.net/product/gift/product/20210811152940_e375829cb6384613b739d498109632e5.jpg" width="500px" height="500px"></li>
		<li><img src="http://paikdabang.com/wp-content/uploads/2018/05/%EC%97%B0%EC%9C%A0.png" width="500px" height="500px"></li>
	  </ul>
	  <p class="controller1">
	  	<span class="prev1">&lang;</span>
	  	<span class="next1">&rang;</span>
	  </p>
	</div>

	<div class="pro_info" id="info_pro">
	<p>Brand Name : <a href="https://www.starbucks.co.kr/index.do">Paik's Coffee</a></p>
	<p>Product Name : Condensed Milk Latte</p>
	<p>Option : HOT or ICE</p>
	<p>Product price : ₩3,500</p>
	<p>Sweet and aromatic Vietnamese-style condensed milk latte</p>
</div>
<div class="pro_info" id="info_pro2" style="display:none;">
	<p>브랜드명 : <a href="https://www.starbucks.co.kr/index.do">빽다방</a></p>
	<p>상품명 : 달달연유라떼</p>
	<p>옵션 : 뜨거운 or 차가운</p>
	<p>상품가격 : ₩3,500</p>
	<p>달달하고 향긋한 베트남식 연유라떼</p>
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
		<li><img src="http://www.menupan.com/common/service/img_proxy.asp?src=http%3A%2F%2Fpostfiles5.naver.net%2FMjAxNjExMTNfMjk3%2FMDAxNDc5MDQ1MzQxODMw.2L3SLBhbLGz7kQXdsu87dFca__RsnSgVCxSdwkckdtgg.5TRcGX5qAiAYkjvezK_eRfqHZi7aIX25BkFuSXtlapsg.JPEG.misarang75%2Fdd.jpg%3Ftype%3Dw773" width="1200px" height="500px"></li>
		<li><img src="/images/paik's_n.jpg" width="1200px" height="500px"></li>
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