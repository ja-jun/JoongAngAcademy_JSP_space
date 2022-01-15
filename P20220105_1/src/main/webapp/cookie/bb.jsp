<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// JAVA...
	
	// 세션에서 값 뽑아 오는 법...
	String v1 = (String)session.getAttribute("v1");
	System.out.println("세션에서 뽑은 v1 값: " + v1);
	
	// 쿠키에서 값을 뽑아 오는 법...
	Cookie [] cookies = request.getCookies();
	
	if(cookies != null) {
		for(Cookie ccc : cookies){
			if(ccc.getName().equals("v1")){
				String cookValue = ccc.getValue();
				System.out.println("쿠키에서 뽑은 v1 값 : " + cookValue);
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	bbb....
</body>
</html>