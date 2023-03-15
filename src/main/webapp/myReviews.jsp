<!-- branch main -->
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html>
<head>

<title>Review History</title>
</head>
<body>

<%
	String userName= (String)session.getAttribute("userName");  
%>
	<div align=center>
	<h1><%=userName %><i>'s</i> Review History</h1>
          		
	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/portfolio"
		driver="com.mysql.cj.jdbc.Driver" user="root" password="Tkfkdgo450." />
		
	<sql:query var="resultSet" dataSource="${dataSource}">
		select * from product where username = '<%=userName %>';
	</sql:query>
	
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
</body>
</html>