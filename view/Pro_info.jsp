<%@page import="com.portfolio.productpage.ProductpageVo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.portfolio.productpage.ReviewVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product info page</title>
</head>
<body>
	<h1>Product Page</h1>
	<div class="product_img">
		<img alt="images/americano.jpg" src="coffee" width="100px" height="70px">
	</div>
	<div class="pro_info">
		<p>Brand Name : Starbucks</p>
		<p>Product Name : Americano</p>
		<p>Product Price : $3</p>
		<p>This is Americano</p>
	</div>
	
	<%
	ProductpageVo Pro_info = new ProductpageVo();
	ArrayList<ReviewVo> schList = new ArrayList<ReviewVo>();
	
	if(request.getAttribute("pro_info") == null) {
		response.sendRedirect("/");
	}else {
		Pro_info = (ProductpageVo) request.getAttribute("Pro_info");
	}
	
	String img = "";
	%>

</body>
</html>