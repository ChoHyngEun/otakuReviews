<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>


<!DOCTYPE html>
<html>
<head>

<title>관리자 페이지</title>
</head>
<body>

<%
	boolean statusCheck = false;
%>
	
<%
	String userName = (String)session.getAttribute("userName");
	String password = (String)session.getAttribute("password");
%>
	<!-- see if user is admin -->
<%
	if(userName.equals("admin")&&password.equals("Tkfkdgo450.")){
		statusCheck = true;
	}else{
		statusCheck = false;
	}
%>

	<%
	/* if not signed in, send em back to index.jsp */
	if(!statusCheck){
		%>
		
		<script>
			alert("경고! 관리자만 접근 가능한 페이지입니다.");
			history.back();
		</script>
		
		<%
	}
	
	%>
	
	<div align=center>
	<h1>환영합니다, 관리자님.</h1>
	<i><b>주의</b></i><br>
	<i>이 페이지는 'on delete cascade & on update cascade' 쿼리 기반으로 만들어져있습니다.<br>
	그러므로, 유저 삭제시 해당 유저의 모든 리뷰도 삭제됩니다.</i>
	<h2>======================================== User ======================================</h2>
	<!-- select User sql query -->
	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/portfolio"
		driver="com.mysql.cj.jdbc.Driver" user="root" password="Tkfkdgo450." />
		
	<sql:query var="resultSet" dataSource="${dataSource}">
		select * from user;
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
			</td>
			</c:forEach>
		</tr>
		</c:forEach>
	</table>
	
	<!-- user insert form -->
	<!-- send data to util_foruserInsert.jsp so the jsp can process the data -->
	<form method="post" action="util_forUserInsert.jsp">
		<p> 이름 : <input type="text" placeholder="Michael" name="firstName"> </p>
		<p> 성 : <input type="text" placeholder="Jackson" name="lastName"> </p>
		<p> 아이디 : <input type="text" placeholder="Michael0078" name="userName"> </p>
		<p> 비밀번호 : <input type="password" placeholder="password" name="password"> </p>
		<p> 주소 : <input type="text" placeholder="145 S Glenmar Rd" name="address"> </p>
		<p> 이메일 : <input type="text" placeholder="otaku777@gmail.com" name="email"> </p>
		<p> 전화번호 : <input type="phone" placeholder="01099998888" name="phone"> </p>
		<p> <input type="submit" value="Add">
	</form>
	
	<!-- user delete form -->
	<!-- send data to util_foruserDelete.jsp so the jsp can process the data -->
	<form method="post" action="util_forUserDelete.jsp">
		<p> 데이터 No. : <input type="text" name="id"> </p>
		<p> <input type="submit" value="Delete"> </p>
	</form>
	
	
	<h2>========================================= 리뷰 =====================================</h2>
	<!-- select product sql query -->
	<sql:query var="resultSet" dataSource="${dataSource}">
		select * from product;
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
			</td>
			</c:forEach>
		</tr>
		</c:forEach>
	</table>
	
	<!-- product insert form -->
	<!-- send data to util_forProductInsert.jsp so the jsp can process the data -->
	<form method="post" action="util_forProductInsert.jsp">
		<p> 상품명 : <input type="text" placeholder="Americano" name="product_name"> </p>
		<p> 브랜드 : <input type="text" placeholder="Starbucks" name="product_brand"> </p>
		<p> 가격 : <input type="text" placeholder="3.5" name="product_price"> </p>
		<p> 별점 : <input type="text" placeholder="integers (1 to 5)" name="star"></p>
		<p> 리뷰내용 </p>
		<textarea rows="10" placeholder="dope!" name="product_review"></textarea>
		<p> 아이디 : <input type="text" placeholder="admin" name="userName"></p>
		<p> <input type="submit" value="Add">
	</form>
	
	<!-- product delete form -->
	<!-- send data to util_forProductDelete.jsp so the jsp can process the data -->
	<form method="post" action="util_forProductDelete.jsp">
		<p> 데이터 No. : <input type="text" name="product_id"> </p>
		<p> <input type="submit" value="Delete"> </p>
	</form>
	
	
	<h2>========================================================================================</h2>
	</div>
</body>
</html>