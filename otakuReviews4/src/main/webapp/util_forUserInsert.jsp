<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!-- forAdmin.jsp 에서 오는 insert 요청 처리 후 forAdmin.jsp 로 다시 이동 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>util_forUserInsert</title>
</head>
<body>
	
	<%
		request.setCharacterEncoding("utf-8");
	
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
	%>
	
	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/portfolio"
		driver="com.mysql.jdbc.Driver" user="root" password="Tkfkdgo450." />
		
	<sql:update dataSource="${dataSource}" var="resultSet">
		Insert into user(first_name, last_name, username, password, address, email, phone) values (?,?,?,?,?,?,?);
		<sql:param value="<%= firstName %>" />
		<sql:param value="<%= lastName %>" />
		<sql:param value="<%= userName %>" />
		<sql:param value="<%= password %>" />
		<sql:param value="<%= address %>" />
		<sql:param value="<%= email %>" />
		<sql:param value="<%= phone %>" />
	</sql:update>
	
	<!-- Admin Page로 재이동 -->
	<%
		response.sendRedirect("forAdmin.jsp");
	%>
	
</body>
</html>