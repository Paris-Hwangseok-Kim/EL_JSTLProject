<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Core 라이브러리 사용하기</title>
</head>
<body>
	<h1>Core 라이브러리 사용하기</h1>
	
	<h3>c:set - 변수 선언</h3>
	
	<c:set var="num1" value="100"/>
	<c:set var="num2" value="200"/>
	<c:set var="result" value="${ num1 + num2 }" scope="session"/>
	
	<p>
		num1 값 : ${ num1 } <br>
		num2 값 : ${ num2 } <br>
		result 값 : ${ result }
	</p>
	
	<h3>c:set 응용 1</h3>
	
	<c:set var="colorArr">
		red, orange, yellow, green, blue, navy, purple
	</c:set>
	
	<p>
		내용 확인 : ${ colorArr }
	</p>
	
	<h3>c:remove - 객체 삭제하기</h3>
	<c:set var="result" scope="session"/>
	
	<p>
		result 확인 : ${ result }
	</p>
	
	<h3>c:out - 화면 출력 태그</h3>
	일반 출력 : <c:out value="<h2> 일반 출력 </h2>"/>   <br>
	태그로 인식 : <c:out value="<h2> 일반 출력 </h2>" escapeXml="false"/> <br>
	기본 값 출력 : <c:out value="${ param.data }" default="전달 값 없음" />
	
	<hr>
	
	
	<h3>JSTL - 조건문</h3>
	
	<h4>c:if - 조건문</h4>
	<p>** if문 하나밖에 없음</p>
	<c:if test="${ num1 > num2 }">
	
		<p>num1이 더 큽니다!</p>
		
	</c:if>
	<c:if test="${ num1 < num2 }">
	
		<p>num2가 더 큽니다!</p>
		
	</c:if>
	
	<h4>c:choose - 자바 switch/if와 비슷함</h4>
	<c:set var="type" value="dd" />
	<c:choose>
		<c:when test="${ type eq 'A' }">
			당신은 A타입입니다.
		</c:when>
		<c:when test="${ type eq 'B' }">
			당신은 B타입입니다.
		</c:when>
		<c:otherwise>
			해당 타입은 없습니다.
		</c:otherwise>	
	</c:choose>
	
	<h3>c:forEach - 자바 반복문</h3>
		
		<h4>일반 반복문</h4>
		<c:forEach var="i" begin="1" end="10" step="2" >
			반복 확인 : ${ i } <br>
		</c:forEach>
		
		
	<h4>문자열 반복</h4>
	   <!--  red, orange, yellow, green, blue, navy, purple  -->
	<c:forEach var="color" items="${ colorArr }">
	
		<p style="background: ${ color };"> ${ color } 색상입니다. </p>
		
	</c:forEach>
	
	<br />
	
	<h3>ArrayList 반복하기</h3>
	<%
		java.util.ArrayList<String> movies = new java.util.ArrayList<>();
	
		movies.add("사운드오브뮤직");
		movies.add("소울");
		movies.add("가타카");
		movies.add("미나리");
		movies.add("우뢰매");
		movies.add("밀리언달러베이비");
	%>
	
	<ul>
		<c:forEach items="<%= movies %>" var="title" varStatus="st">
		
			<li> 제목 : ${ title } / 번호 : ${ st.index } / 반복수 : ${ st.count } </li>
		
		</c:forEach>
	</ul>
	
	<h3>c:url - 주소를 저장하는 태그</h3>
		
		<c:url var="testURL" value="/views/jstl/testCore.jsp">
			<c:param name="data" value="전송 값 테스트"/>
		</c:url>
		
		<a href="${ testURL }">이동하기</a>

	<h3>c:import - jsp :include하고 비슷함</h3>
	<c:import url="import.jsp">
		<c:param name="data" value="전송 확인"/>
	</c:import>

	<h3>c:catch - 자바(try-catch)</h3>
	<c:set var="data1" value="null"/>
	<c:set var="data2" value="100"/>
	<c:catch var="e">
	data1 / data2 : ${data1/data2}
	</c:catch>
	
	<br />
	<c:if test="${!empty e }">
	문제 발생	! : ${e.message }
	</c:if>
	
	
	<hr />
	
	<h3>c:redirect - response.sendRedirect()와 동일</h3>
	
	<c:set var="check" value="2"/>
	
	<c:if test="${check ==1 }">
		<c:redirect url="../../index.html"/>
	</c:if>
	
	
	
	
	
	
	
	
	
	
	
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</body>
</html>