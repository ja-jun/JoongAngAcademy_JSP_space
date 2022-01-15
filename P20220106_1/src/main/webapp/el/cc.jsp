<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("v1", 1111);
	request.setAttribute("v1", 2222);
	session.setAttribute("v1", 3333);
	application.setAttribute("v1", 4444);	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
	EL 동작구조
	1. pageContext 저장 공간에서 v1키로 값을 추출한다. 만약 값이 존재하면 출력하고 끝...(소멸) 그러나 값이 없으면 2번
	2. request 저장 공간에서 v1키로 값을 추출한다. 만약 값이 존재하면 출력하고 끝.... 
	3. request 저장 공간에서 v1키로 값을 추출한다. 만약 값이 존재하면 출력하고 끝....
	4. application 저장 공간에서 v1키로 값을 추출한다. 만약 값이 존재하면 출력하고 끝....
	5. 모든 저장공간에서 키로 값을 추출하려고 했는데 없으면... 아무것도 출력하지 않음.
	
	위의 내용은 사실 신경 안써도 됨... 이유 : 사실상 각 저장공간에 같은 키를 이용할 일이 없음.
	 -->
	
	${v1 }<br>
	${requestScope.v1 }<br>
</body>
</html>