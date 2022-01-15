<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	// 참고 여기는 JSP  아님...
	int a = 30;
	request.setAttribute("v1", a);
	
	// 포워딩해서 아래로 간다는 가정 하에....
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${v1 > 50 }"> <!-- "" 바로 앞뒤에 스페이스 절대 하면 안된다. 참고로 else는 없다. -->
		50보다 큽니다.
	</c:if>
	
	<c:if test="${v1 <= 50 }">
		50보다 작거나 같습니다.
	</c:if>
	
</body>
</html>