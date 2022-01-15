<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="a.a.a.*" %>
<%
	// 자료구조를... 넣을 수 있다...(핵심...)
	HashMap<String,Object> map = new HashMap<String,Object>();

	map.put("v1", "안녕하세요");
	map.put("v2", "111");
	map.put("v3", "222");
	
	StudentVo st1 = new StudentVo("베인", 40, 77);
	map.put("v4", st1);
	
	// map.get("v1");
	
	request.setAttribute("xx", map);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!--EL
	(엄청 중요 무조건 외워라!!!) 첫번째 .이전의 키워드는 우선 4가지 저장공간에서 값을 뽑아온다.(스타트) 
		두번째 키워드가 존재하는데... 이때 첫번째에서 뽑아온 값이 map이면 두번째 키워드로 get을 호출하고 출력...( v1 => .get("v1") )
		 
	 -->

	${xx.v1 }<br>
	<!-- ${xx.v1.name }<br> 익셉션발생 v1.name이 없다. -->
	${xx.v2 }<br>
	${xx.v3 }<br>	
	${xx.v4.name }<br>
	${xx.v4.score }<br>
	${xx.v4.age }<br>
</body>
</html>