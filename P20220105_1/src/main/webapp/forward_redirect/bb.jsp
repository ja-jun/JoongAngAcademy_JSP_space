<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 이부분은 서블릿쪽이다....(JAVA)
	// 리다이렉트... 리퀘스트 2번 bb.jsp => target.jsp 링크가 이동함.
	
	String value = "안녕하세요!!!bb"; // 출력되어야될 데이터...
 	request.setAttribute("data", value); 
		// request.setAttribute => 데이터 이미 소멸되서 redirect 아무 의미 없음.
		// servlet에서 servlet로 갈때 MVC 모델 만들때 : request, redirect(무조건), EL 사용
	
	response.sendRedirect("./target.jsp");
%>