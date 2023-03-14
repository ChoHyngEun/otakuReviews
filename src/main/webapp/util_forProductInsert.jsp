<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!-- forAdmin.jsp 에서 오는 insert 요청 처리 후 forAdmin.jsp 로 다시 이동 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>util_forProductInsert</title>
</head>
<body>
	
	<%
		request.setCharacterEncoding("utf-8");
	
		String product_name = request.getParameter("product_name");
		String product_brand = request.getParameter("product_brand");
		float product_price = Float.parseFloat(request.getParameter("product_price"));
		String product_review = request.getParameter("product_review");
		
	%>
	
	<!-- insert product query -->
	
	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/portfolio"
		driver="com.mysql.jdbc.Driver" user="root" password="Tkfkdgo450." />
		
	<sql:update dataSource="${dataSource}" var="resultSet">
		Insert into product(product_name, product_brand, product_price, product_review) values (?,?,?,?);
		<sql:param value="<%= product_name %>" />
		<sql:param value="<%= product_brand %>" />
		<sql:param value="<%= product_price %>" />
		<sql:param value="<%= product_review %>" />

	</sql:update>
	
	<!-- Admin Page로 재이동 -->
	<%
		response.sendRedirect("forAdmin.jsp");
	%>
	
</body>
</html>