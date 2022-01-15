<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 서블릿 코드... Model...(코어로직...)
	int a1 = 20;
	String b1 = "안녕하세요";
	
	request.setAttribute("xxx1", a1); // html로 출력되어야 될 값을 리퀘스트 저장공간에 담는다.
	request.setAttribute("xxx2", b1);
	
	// 아래 JSP로 포워딩 된다는 가정하에...
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${xxx1 }<br>
	${xxx2 }<br>
</body>
</html>