<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>First step done success</h1>
		
		<%
			String place=request.getParameter("place");
			Cookie cookie = new Cookie("place",place);
			response.addCookie(cookie);
		%>
		
		<a href="final.jsp">Go to main page</a>
</body>
</html>