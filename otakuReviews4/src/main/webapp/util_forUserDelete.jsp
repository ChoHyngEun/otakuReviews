<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!-- forAdmin.jsp 에서 오는 delete 요청 처리 후 forAdmin.jsp 로 다시 이동 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>util_forUserDelete</title>
</head>
<body>
	
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		
	%>
	
	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/portfolio"
		driver="com.mysql.jdbc.Driver" user="root" password="Tkfkdgo450." />
		
	<sql:update dataSource="${dataSource}" var="resultSet">
		delete from user where id=?;
		<sql:param value="<%= id %>" />
	</sql:update>
	
	<!-- auto-start from lowest available id number query -->
	<sql:update dataSource="${dataSource}">
		alter table user auto_increment=1;
	</sql:update>
	
	<!-- Admin Page로 재이동 -->
	<%
		response.sendRedirect("forAdmin.jsp");
	%>
	
</body>
</html>