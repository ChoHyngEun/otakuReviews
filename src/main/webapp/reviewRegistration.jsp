<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- product 리뷰 등록 페이지 -->
<!-- 이 페이지에서 리뷰 내용을 입력하면 ProductServlet > ProductDAO를 거쳐 MySQL에 데이터가 전송됨 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feeling Salty?</title>
</head>
<body>
	<div align=center>
	<h1>Feeling salty?</h1>
	<i>leave a review on any product</i>
	<i>show'em who the real boss is</i>
	<br><hr><br>
	<a href="index.jsp"><img src = "images/otaku.jpg"></a>
	<!-- product 등록 후 ProductServlet으로 전송 -->
	<form action="<%=request.getContextPath()%>/product" method="post">
		Product Name: <input type="text" placeholder="Americano" name="product_name"><br><br>
		Product Brand: <input type="text" placeholder="Starbucks" name="product_brand"><br><br>
		Product Price($): <input type="text" placeholder="2.5" name="product_price"><br><br>
		Your Comment:<br><br>
		<textarea rows="10" placeholder="dope!" name="product_review"></textarea><br><br>
		<input type="submit" value="SUBMIT">
	</form>
	</div>
</body>
</html>