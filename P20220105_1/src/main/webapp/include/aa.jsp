<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- include 대상이 되는 jsp는 절대 구조맞추는 것을 신경써야 된다. -->
	<jsp:include page="./bb.jsp"></jsp:include>	
	<!-- jsp문법에서 제공하는 것(html아님) 2개의 jsp가 실행됨. html문법 틀렸음.(body안에 html이 들어갔음) -->

	aa입니다.
</body>
</html>