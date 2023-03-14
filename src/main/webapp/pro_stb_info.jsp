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

<h1 id="title">Starbucks Coffee</h1>

<div id="top">
	<div class="pro_img">
	  <ul class="slide1">
		<li><img src="./images/hot_americano.jpg" width="500px" height="500px"></li>
		<li><img src="./images/ice_americano.jpg" width="500px" height="500px"></li>
	  </ul>
	  <p class="controller1">
	  	<span class="prev1">&lang;</span>
	  	<span class="next1">&rang;</span>
	  </p>
	</div>

	<div class="pro_info" id="info_pro">
	<p>Brand Name : <a href="https://www.starbucks.co.kr/index.do">Starbucks</a></p>
	<p>Product Name : Americano</p>
	<p>Option : HOT or ICE</p>
	<p>Product price : ₩3,000</p>
	<p>it's a bit bitter than another brand coffee shops</p>
</div>
<div class="pro_info" id="info_pro2" style="display:none;">
	<p>브랜드명 : <a href="https://www.starbucks.co.kr/index.do">스타벅스</a></p>
	<p>상품명 : 아메리카노</p>
	<p>옵션 : 뜨거운 or 차가운</p>
	<p>상품가격 : ₩3,000</p>
	<p>다른 브랜드 커피숍보다 조금 씁쓸한 맛이 있습니다.</p>
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
		<li><img src="./images/big1.jpg" width="1200px" height="500px"></li>
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