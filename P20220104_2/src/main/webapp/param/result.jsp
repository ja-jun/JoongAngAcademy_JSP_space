<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%
	request.setCharacterEncoding("utf-8"); // 무조건 항상 존재해야됨... 미국빼고...
	// 앞으로 <% .. 는 (스크립트) java코드로 빼내야 될 코드 입니다...
	String v1 = request.getParameter("v1"); // 제일 중요...!! 값을 받는 API.. 키로 값을 받는다.(Map)
	System.out.println("v1 : " + v1);		// 웹브라우저가 서버쪽으로 파라미터로 값을 전달했다. (대부분 if문 또는 DB 용도)
											// http://localhost:8081/P20220104_1/param/result.jsp?v1=qwfqwf&v2=3333
	String v2 = request.getParameter("v2"); // 제일 중요...!!
	System.out.println("v2 : " + v2);

%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
테스트...
</body>
</html>