<!-- branch main -->
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html>
<head>
<title>리뷰 히스토리</title>
</head>
<body>

<%
	String userName= (String)session.getAttribute("userName");
	String password= (String)session.getAttribute("password");
%>
	<div align=center class="wrap">
	
          		
	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/portfolio"
		driver="com.mysql.cj.jdbc.Driver" user="root" password="Tkfkdgo450." />
	
	<!-- my information -->
	<sql:query var="resultSet" dataSource="${dataSource}">
		select * from user where username = '<%=userName %>' and password = '<%=password %>';
	</sql:query>
	
	<div class = "my_info">
	<h1><%=userName %><i> 님의</i> 유저 정보입니다.</h1>
		<table border="1">
		<tr>
			<c:forEach var="columnName" items="${resultSet.columnNames}" >
				<th width="100"><c:out value="${columnName}" /></th>
			</c:forEach>
		</tr>
		<c:forEach var="row" items="${resultSet.rowsByIndex}" >
			<tr>
			<c:forEach var="column" items="${row}" varStatus="i">
			<td>
				<c:if test="${column != null}">
					<c:out value="${column}" />
				</c:if>
                		
				<c:if test="${column == null}" >
					&nbsp;
				</c:if>
			</td>
			</c:forEach>
		</tr>
		</c:forEach>
	</table>
	</div>
	
	<!-- my review history -->
	<sql:query var="resultSet" dataSource="${dataSource}">
		select * from product where username = '<%=userName %>';
	</sql:query>
	
	<div class="my_reviews">
	<h1><%=userName %><i> 님의</i> 리뷰 히스토리입니다.</h1>
	<table border="1">
		<tr>
			<c:forEach var="columnName" items="${resultSet.columnNames}" >
				<th width="100"><c:out value="${columnName}" /></th>
			</c:forEach>
		</tr>
		<c:forEach var="row" items="${resultSet.rowsByIndex}" >
			<tr>
			<c:forEach var="column" items="${row}" varStatus="i">
			<td>
				<c:if test="${column != null}">
					<c:out value="${column}" />
				</c:if>
                		
				<c:if test="${column == null}" >
					&nbsp;
				</c:if>
			</td>
			</c:forEach>
		</tr>
		</c:forEach>
	</table>
	</div>
	
	
	
	</div>
</body>
</html>