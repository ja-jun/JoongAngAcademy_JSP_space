<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- html 주석... 웹브라우저 기준, 보안 취약(관리자 비번 1111 등) -->
	<%-- jsp 주석... 처음부터 java변환도 안됨... 보안 강화(중요한 내용) --%>
	
	<!--  파라미터 보내는 법 1 -->
	<!--  a 요청... 파라미터를 확정적인 경우에... 활용... -->
	<a href="./result.jsp">결과로 이동하기...1</a><br>
	<a href="./result.jsp?v1=qwer">결과로 이동하기...2</a><br>
	<a href="./result.jsp?v2=1111">결과로 이동하기...3</a><br>
	<a href="./result.jsp?v1=1111&v2=qqqq">결과로 이동하기...4</a><br>
	
	<!--  파라미터 보내는 법 2 : 입력 양식을 활용하는 법... 사용자가 입력한 값을 보내야 될 때...!! -->
	<br>
	
	<!-- 
	1. 입력양식을 감싸는 form태그 존재...
	2. form태그에 action으로 경로 설정...
	3. submit 버튼이 존재 할 것... 혹은 <button>전송</button>
	4. 각 입력 양식에 name 속성을 제대로 붙일 것(이걸 왜케 놓치지????)  
	5. 보내는 방식 설정(get, post)... 설정하지 않으면 get방식(디폴트) method속성으로 두개다  설정가능.  
		참고1. a태그는 무조건 get방식(파라미터로 링크로 보내는 방식)
		참고2. get방식(select와 관련, 링크가 중요한 경우 많이 쓰임. url링크 복사) : URL에 쿼리스트링으로 포함해서 보낸다, 내용이 노출된다. 내용크기(길이)의 제한이 있다(데이터양), charset을 알 수 없다.(영어를 제외한, utf-8등), (한글처리에 불리함)
		참고3. post방식(insert와 관련, 게시판 등, 대부분 쓰임) : header에 숨겨서 보낸다. 내용 크기의 제한 없다... 캐릭터셋을 알 수 있다.(한글처리에 유리)
	-->
	
	<form action="./result.jsp" method="post">
	v1 : <input type="text" name="v1"><br>
	v2 : <input type="text" name="v2"><br>
	<input type="submit" value="전송">
	</form>
	
</body>
</html>