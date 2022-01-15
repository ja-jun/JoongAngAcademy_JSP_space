<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<%
	int v1 = (int)request.getAttribute("v1");

	if(v1 > 50){
		out.println("50보다 큽니다.");
	} else {
		out.println("50보다 작습니다.");
	}
%>
	
</body>
</html>