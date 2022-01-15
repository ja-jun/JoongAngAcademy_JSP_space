<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int a = 20;
	int b = 20;
	String c = "30";
	String d = "49";

	
	request.setAttribute("v1", a);
	request.setAttribute("v2", b);
	request.setAttribute("v3", c);
	request.setAttribute("v4", d);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${v1 }<br>
	${v2 }<br>
	${v3 }<br>
	${v1 >= v2 }<br>
	${v1 == v2 }<br>
	${v1 < v2 }<br>
	${v1 == v3 }<br>
	${v3 == v4 }<br> <!-- 자바에선 불가능하나 JSP는 자바가 아니라서 자동으로 equals호출해서 사용가능.  -->
	
	${!empty v5 }<br> <!-- v5가 존재하냐?? -->
	${!empty v4 }<br> <!-- 로그인 성공했냐? 이때 이걸 쓴다. session 값이 존재하냐? -->
	
</body>
</html>