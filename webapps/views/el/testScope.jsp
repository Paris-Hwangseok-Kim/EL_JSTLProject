<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 현재 페이지에서만 사용하는 변수
	pageContext.setAttribute("test4", "페이지 영역 입니다.");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 영역 확인</title>
</head>
<body>
	<h1>EL 영역 확인</h1>
	
	<h3>각 영역 확인</h3>
	<p>
		page 영역 : ${ pageScope.test4 } <br />
		request 영역 : ${ requestScope.test1 } <br />
		session 영역 : ${ sessionScope.test2 } <br />
		application 영역 : ${ applicationScope.test3 } 
	</p>
	
	<hr />
	
	<h3>scope 생략 시 ...</h3>
	<h3>result 출력 : ${result}</h3>
	
	<p>
		만약 scope(ex: requestScope) 선언 없이 단순히 객체를 호출한다면,<br>
		page &gt; request &gt; session &gt; application 순으로<br>
		값을 자동으로 찾아간다. <br>
		** param 은 제외!
	</p>

	<span style="color:red;">
		** 객체의 이름이 겹치면 직접 scope를 명시해야 한다!
	</span>
	
	
</body>
</html>