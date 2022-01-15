<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%
	// 출력되어야될 데이터가...
	
	ArrayList<String> names = new ArrayList<String>();
	
	names.add("한조1");
	names.add("트레이서...");
	names.add("한조2");
	names.add("한조3");
	names.add("한조4");
	names.add("한조5");

	request.setAttribute("names", names);
	
	for(String x : names){
		
	}
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${names }" var="qwer">
		${qwer }<br>
	</c:forEach>
</body>
</html>