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
			String selectedPlace = "No place";
			Cookie[] cookies=request.getCookies();
			if(cookies!=null){
				for(Cookie co : cookies){
					if(co.getName().equals("place")){
						selectedPlace=co.getValue();
						break;
					}
				}
			}
		%>
		
		<p>Fav place is <%= selectedPlace %></p>
		
</body>
</html>