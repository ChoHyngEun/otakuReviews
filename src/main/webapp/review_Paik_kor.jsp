<!-- branch main -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- reviewRegistration.jsp에서 리뷰를 등록한 후 redirect되는 페이지 -->
<!-- ProductServlet에 PrintWriter location을 이용하였음 -->

<!-- jstl 라이브러리 core와 sql를 사용하여 리스트를 구현해본 jsp 파일 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>빽다방 리뷰</title>
</head>
<body>

	<!-- jstl:sql 사용위한 데이터소스 입력 -->
	<sql:setDataSource
        var="dataSource"
        driver="com.mysql.cj.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/portfolio?useSSL=false"
        user="root" password="Tkfkdgo450."
    />
    
    <!-- jstl:sql query 선언 -->
    <sql:query var="resultSet" dataSource="${dataSource}">
        select * from product where product_brand = 'Paik';
    </sql:query>
    
<div align=center>

	<!-- review item list 출력 table -->
	<table border="1" class=review_table>
	
            <caption><h2>리뷰 리스트</h2></caption>
            <button type="button" onclick="location.href='reviewRegistration.jsp'">리뷰등록</button>
            <!-- th 자동 출력 -->
            <tr>
				<c:forEach var="columnName" items="${resultSet.columnNames}" >
					<th width="100"><c:out value="${columnName}" /></th>
				</c:forEach>
			</tr>
		
		<!-- td row 자동 선언 -->
        <c:forEach var="row" items="${resultSet.rowsByIndex}" >
			
			<!-- 각 row -->
			<tr class=content>
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