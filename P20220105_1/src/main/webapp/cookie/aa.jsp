<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 쿠키 vs 세션 
	
	// JAVA... (service == 코어로직, 비지니스 로직)
	//int value = 10;
	String value = "10";
	// 세션.. 모든게 장점, 항상 옳다. 그러나 세션을 유지하기 위해선 보완적으로 쿠키를 써야한다. 
	session.setAttribute("v1", value); // 서버 메모리(RAM)에 저장...
	
	// 쿠키 활용... 제한사항 1. 문자 밖에 못 넣는다. 길이의 제한이 있다... 보안적으로 매우 취약(언제든지 쉽게 변조 가능)
	// 쿠키 소멸 조건 : 웹브라우저 끄면 쿠키를 소멸한다.(외국사이트에 쿠키 허용 묻는 것(법적) : 너 컴퓨터 하드를 써서 저장하겠다... 서버쪽 램을 쓰지 않겠다는 의미)
	Cookie c1 = new Cookie("v1", value + "");
	response.addCookie(c1); // 쿠키를 클라이언트가 저장하게 유도한다...	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	aa...
</body>
</html>