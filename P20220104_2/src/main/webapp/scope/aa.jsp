<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 4가지 저장공간이 있다.
	// pageContext, request, session, application
	// 4가지 저장공간은 모두 setAttribute, getAttribute 메소드 제공...
	// 키와 값으로 넣을 수 잇다(내부 자료구조 Map)
	// 값의 타입은 Object 이다... 즉 다형성에 의해서 아무값이나 넣을 수 있다. 키는 항상 String
	// 4가지 저장공간은 라이프사이클이 다르다...!!!
		// 특히 중요한 저장공간 2개 : request(MVC 핵심), session(인증 정보 담는 용도, 로그인)
		// 로그인에 성공하면... session.setAttribute..누가 로그인했는가?? 정보를 담을것..
		// session.getAttribute..를 통해서.. 로그인을 했는지 안했는지 판단할 것... null값이 나오면 로그인을 안한 것
		// session은 1)하나의 접속이 유지될때까진 생존한다. 2) 접속당 1개(브라우저당)
		// request은 1)요청당 1개, 2)요청이 끝날때까지, MVC 에서의 핵심(forwarding)

	pageContext.setAttribute("v1", "page 값");
	request.setAttribute("v2", "request 값");
	session.setAttribute("v3", "session 값");
	application.setAttribute("v4", "application 값");
	
	String v1 = (String)pageContext.getAttribute("v1"); // 값을 string으로 넣었으니까...리턴 타입 object
	System.out.println(v1);			  					// 값을 넣을때는 아무렇게나 넣을 수 있지만 뽑을 때는 type casting을 해줘야한다.
													
	String v2 = (String)request.getAttribute("v2");
	System.out.println(v2);
	
	String v3 = (String)session.getAttribute("v3");
	System.out.println(v3);
	
	String v4 = (String)application.getAttribute("v4");
	System.out.println(v4);
	
	// 주의 사항... : 키가 값이 없을떄 .. 익셉션 아님.. 정상적으로 null값 리턴한다... 이거 잘 이용해야된다...
	String v7 = (String)session.getAttribute("v7");
	System.out.println(v7);	 	
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	1: ${v1 }<br> <!-- 키값은 v1.. EL(EXPRESSION LANGUAGE) JSP문법(JQUERY 아님) : ?? getAttribute 결과값을 출력 용도-->
	2: ${v2 }<br>
	3: ${v3 }<br>
	4: ${v4 }<br>
	
</body>
</html>