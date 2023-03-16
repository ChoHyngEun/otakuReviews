<!-- branch main -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>자세히 보기</title>
<script src="js/jquery-3.6.3.min.js"></script>
<script src="js/jquery-ui-1.10.4.custom.min.js"></script>
<script type="text/javascript" src="js/productInfo.js"></script>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/productInfo.css" rel="stylesheet" type="text/css">

</head>
<body>

<div id="wrap">

<h1 id="title">빽다방</h1>

<div id="top">
	<div class="pro_img1">
		<img src="images/hot_americano.jpg" width="500px" height="500px">
		<img src="images/ice_americano.jpg" width="500px" height="500px">
		
	  <p class="controller1">
	  	<span class="prev1">&lang;</span>
	  	<span class="next1">&rang;</span>
	  </p>
	  </div>

	<div class="pro_info">
		<p>브랜드명 : <a href="https://paikdabang.com">Paik's</a></p>
		<p>상품명 : Americano</p>
		<p>옵션 : 따뜻한 음료 or 따뜻한 음료</p>
		<p>가격 : 2달러</p>
		<p>그냥 뭐.. 나쁘지는 않습니다.</p>
	</div>
</div>

<div id="middle">
	<div class="pro_img2">
		<img src="images/big1.jpg" width="1200px" height="500px">
		<img src="images/big2.jpg" width="1200px" height="500px">
    <p class="controller2">
	  	<span class="prev2">&lang;</span>
	  	<span class="next2">&rang;</span>
	</p>
	</div>
</div>

<div id="bottom">
	
	<%@ include file="review_Paik.jsp" %>

</div>

</div>
	
</body>
</html>