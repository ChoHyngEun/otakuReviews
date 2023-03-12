<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- reviewRegistration.jsp에서 리뷰를 등록한 후 redirect되는 페이지 -->
<!-- ProductServlet에 PrintWriter location을 이용하였음 -->

<!-- jstl 라이브러리 core와 sql 사용 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>review item list page</title>
</head>
<body>

	<!-- jstl:sql 사용위한 데이터소스 입력 -->
	<sql:setDataSource
        var="dataSource"
        driver="com.mysql.cj.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/portfolio"
        user="root" password="Tkfkdgo450."
    />
    
    <!-- jstl:sql query 선언 -->
    <sql:query var="resultSet" dataSource="${dataSource}">
        select * from product;
    </sql:query>
    
<div align=center>

	<h1>이곳은 리뷰 리스트를 보여주는 페이지입니다.</h1>
	
	<!-- review item list 출력 table -->
	<table border="1">
	
            <caption><h2>List of reviews</h2></caption>
            
            <!-- th 자동 출력 -->
            <tr>
				<c:forEach var="columnName" items="${resultSet.columnNames}" >
					<th width="100"><c:out value="${columnName}" /></th>
				</c:forEach>
			</tr>
		
		<!-- td row 자동 선언 -->
        <c:forEach var="row" items="${resultSet.rowsByIndex}" >
			
			<!-- 각 row -->
			<tr>
				<!-- 각 row의 column td 출력 -->
				<c:forEach var="column" items="${row}" varStatus="i">
					<td>
						<!-- 각 row의 colum td data -->
						<c:if test="${column != null}">
							<c:out value="${column}" />
						</c:if>
						<!-- data가 비어있을 경우 빈칸 출력 -->
						<c:if test="${column == null}" >
							&nbsp;
						</c:if>
					</td>
				</c:forEach>
			</tr>
		</c:forEach>
    </table><!-- review list table 종료 -->
    
</div>
</body>
</html>