<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	// 참고 여기는 JSP  아님...
	int a = 6;
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
	<!-- if else if ... else 와 동일, 참고로 choose 뒤에 <!-- 주석 달 수 없다. -->
	<c:choose><%-- 이 주석은 가능... 그러나 choose when 사이에다가 아무것도 쓰지 말자... --%>
		<c:when test="${v1 < 10 }">
			<div>10보다 작습니다.</div>
		</c:when>
		<c:when test="${v1 < 20 }">
			20보다 작습니다.
		</c:when>
		<c:otherwise>
			그 이외 경우 입니다.
		</c:otherwise>
	</c:choose>

</body>
</html>