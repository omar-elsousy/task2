<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
			List<String> orders=(List<String>)session.getAttribute("myOrders");
			
			if(orders==null){
				orders=new ArrayList();
				session.setAttribute("myOrders",orders);
			}
			
			String order= request.getParameter("order");
			if(order!=null){
				orders.add(order);
			}
			
			for(String or : orders){
				out.print("<h1>"+or+"</h1>");
			}
		%>
</body>
</html>