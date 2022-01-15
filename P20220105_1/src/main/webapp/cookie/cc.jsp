<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 제한사항2. 영어만 된다...!!(한글 안된다고 생각하기)
	Cookie c1 = new Cookie("q1", "qwer");
	response.addCookie(c1);
	
	Cookie c2 = new Cookie("q2", "11111");
	response.addCookie(c2);

	Cookie c3 = new Cookie("q3", "eeeee");
	response.addCookie(c3);

	Cookie c4 = new Cookie("q4", "ttttt");
	response.addCookie(c4);

	Cookie c5 = new Cookie("q5", "22222");
	response.addCookie(c5);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
cc...
</body>
</html>