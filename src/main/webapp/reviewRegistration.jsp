<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- product 리뷰 등록 페이지 -->
<!-- 이 페이지에서 리뷰 내용을 입력하면 ProductServlet > ProductDAO를 거쳐 MySQL에 데이터가 전송됨 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product review upload page</title>
</head>
<body>
	<h1>submit product review</h1>
	<!-- product 등록 후 ProductServlet으로 전송 -->
	<form action="<%=request.getContextPath()%>/product" method="post">
		Product_Name <input type="text" name="product_name"><br>
		Product_Brand <input type="text" name="product_brand"><br>
		Product_Price <input type="text" name="product_price"><br>
		Product_review <input type="text" name="product_review"><br>
		<input type="submit" value="SUBMIT">
	</form>
</body>
</html>