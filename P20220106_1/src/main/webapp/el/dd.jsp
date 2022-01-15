<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="a.a.a.StudentVo" %> <!-- 쓸 일이 없는 코드 jsp에서만 쓰기 위함. -->
<%
	// 출력되어야 될 데이터...
	int value = 10;
	request.setAttribute("v1", value);
	
	StudentVo vo = new StudentVo("한조", 39, 70);
	request.setAttribute("v2", vo);
	
	StudentVo vo2 = new StudentVo("트래", 15, 99);
	request.setAttribute("qwer", vo2);
	
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${v1 }<br>
	
	<!-- EL...
	첫번째 4가지 저장공간에서 값을 뽑는다...(v2)
	두번째 . 위에서 뽑아온 값이 객체면... getter를 호출해서 리턴된 결과를 출력함. ( .name => getName()를 호출함)
		
	내가 request저장 공간에 넣은게 클래스 객체면  .이후 필드명 쓰면 된다.	
	 -->
	 
	${v2.name }<br>
	${v2.score }<br>
	${v2.age }<br>
	
	${qwer.name }<br>
	${qwer.age }<br>
	${qwer.score }<br>
	
</body>
</html>