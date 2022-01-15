<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
 	// 이부분은 서블릿쪽이다....(JAVA)
 	// 포워딩... 리퀘스트 1번
 	
 	String value = "안녕하세요!!!aa"; // 출력되어야될 데이터...
 	request.setAttribute("data", value); // servlet에서 jsp로 갈때 MVC 모델 만들때 : request, forward(무조건), EL 사용
 	 	
 	request.getRequestDispatcher("./target.jsp").forward(request, response);
%>
