<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Otaku Review World</title>
<style type="text/css">

	ul{
		list-style: none;
	}
	.top{
		float: right;
	}
	.top ul li{
		font-size: 2vw;
		float: right;
		margin-right: 2vw;
		list-style: none;
	}
	a{
		text-decoration: none;
	}
	
</style>
</head>
<body>
<div class="top">
		
        <ul>
            <li><a href="review.jsp">All Reviews</a></li>
            <li><a href="reviewRegistration.jsp">Leave a Review</a></li>
            <%
                String username= (String)session.getAttribute("userName");  
          		
                if (username == null) {
            %>
            <li><a href="userRegistration.jsp">Sign Up</a></li>
            <li><a href="login.jsp">Sign In</a></li>

        <% } else {
         %>
         
            <li>Hi, <%=username %></li>
            
            <form action="logout" method="get">
            	<input type="submit" value="Logout" />
        	</form>
        	
        <% }%>
        </ul>
		
</div>
<a href="index.jsp"><img src = "images/otaku.jpg"></a>
</body>
</html>