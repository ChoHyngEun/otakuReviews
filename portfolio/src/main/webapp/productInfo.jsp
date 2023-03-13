<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/productInfo.css" rel="stylesheet" type="text/css">
<title>More Info</title>
</head>
<body>

<div id="wrap">

<h1 id="title">Starbucks Coffee</h1>

<div id="top">
	<div class="pro_img">
	  <ul class="slide1">
		<li><img src="images/hot_americano.jpg" width="400px" height="400px"></li>
		<li><img src="images/ice_americano.jpg" width="400px" height="400px"></li>
	  </ul>
	  <p class="controller">
	  	<span class="prev">&lang;</span>
	  	<span class="next">&rang;</span>
	  </p>
	</div>

	<div class="pro_info">
		<p>Brand Name : <a href="https://www.starbucks.co.kr/index.do">Starbucks</a></p>
		<p>Product Name : Americano</p>
		<p>Option : HOT or ICE</p>
		<p>Product price : ₩3,000</p>
		<p>it's a bit bitter than another brand coffee shops</p>
	</div>
</div>

<div id="middle">
	<img src="images/big1.jpg" width="1200px" height="500px">
	<img src="images/big2.jpg" width="1200px" height="500px">
</div>

<div id="bottom">
	
	<%@ include file="review.jsp" %>
	
</div>

</div>
	
</body>
</html>