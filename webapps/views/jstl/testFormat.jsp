<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포맷 관련 태그</title>
</head>
<body>
	<h1>포맷 관련 태그</h1>
	
	<h3>fmt:formatDate - 날짜와 시간 정보를 표현하는 태그</h3>
	
	<p> ** 형식 지정에는 java.util.Date 객체를 사용해야 한다.</p>
	
	<%-- <c:set var="toDay" value="<%= new java.util.Date() %>"/> --%>  
	 <!-- 상단에 import="java.util.*"추가하면 간편하게 사용 가능(아래처럼) -->
	 
	 <c:set var="today" value="<%= new Date() %>"/>
	 
	 <!-- ul>(li>fmt:formatDate[value=today])*8 -->
	 <ul>
	 	<li> 
	 		오늘 날짜 : <fmt:formatDate value="${today}"/>
 		</li>

	 	<li>
	 		현재 시간 : <fmt:formatDate value="${today}" type="time"/>
	 	</li>
	 	<li>
	 		날짜 시간 : <fmt:formatDate value="${today}" type="both"/>
	 	</li>
	 	<li>
	 		[Full] : <fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"/>
	 	</li>
	 	<li>
	 		[Long] : <fmt:formatDate value="${today}" type="both" dateStyle="long" timeStyle="long"/>
	 	</li>
	 	<li>
	 		[medium] : <fmt:formatDate value="${today}" type="both" dateStyle="medium" timeStyle="medium"/>
	 	</li>
	 	<li>
	 		[short] : <fmt:formatDate value="${today}" type="both" dateStyle="short" timeStyle="short"/>
	 	</li>
	 	<li>
	 		내 패턴 : <fmt:formatDate value="${today}" type="both" pattern="yyyy-MM-dd(E) HH:mm:ss(a)"/>
	 	</li>
	 </ul>
	 
	 
	 <h3>지역 설정</h3>
	 <p>
	 fmt:setLocale : ko_kr / en_us 등의 국가 지역을 설정하는 태그 <br />
	 fmt:timeZone : 특정 지역의 시간대를 설정하는 태그
	 </p>
	 
<!-- 		https://ko.wikipedia.org/wiki/%EB%A1%9C%EC%BC%80%EC%9D%BC
		
		-------------------------------------------
		
		https://ko.wikipedia.org/wiki/ISO_639
		
		https://ko.wikipedia.org/wiki/ISO_3166-1_alpha-2#KP
 -->	 
 
 	<ul>
 		<li>
 			미국 현재 시간 : <fmt:setLocale value="en_us"/>
 			<fmt:timeZone value="America/Los_Angeles">
 			<fmt:formatDate value="<%= new Date() %>" type="both" dateStyle="full" timeStyle="full"/> <br />
 			<fmt:formatNumber value="12000" type="currency"/>
 			</fmt:timeZone>
 		</li>
 		
 		
 		<li>
 			인도 현재 시간 : <fmt:setLocale value="hi_in"/>
 			<fmt:timeZone value="India/Kolkata">
 			<fmt:formatDate value="<%= new Date() %>" type="both" dateStyle="full" timeStyle="full"/> <br />
 			<fmt:formatNumber value="12000" type="currency"/>
 			</fmt:timeZone>
 		</li>
 		<li>
			한국 현재 시간 : <fmt:setLocale value="ko_kr"/>
 			<fmt:timeZone value="Asia/Seoul">
 			<fmt:formatDate value="<%= new Date() %>" type="both" dateStyle="full" timeStyle="full"/>
 			</fmt:timeZone>
		</li>
 		
 	</ul>
 	
 	<hr />
 	
 	
 	<h3>fmt:formatNumber : 숫자 데이터 형식 변환 태그</h3>
 	
 	일반 숫자 : <fmt:formatNumber value="123000456" groupingUsed="false"/> <br />
 	천단위 쉼표 : <fmt:formatNumber value="12300456" groupingUsed="true"/>
 	
 	<h3>소숫점 데이터 형식 변환</h3>
 	# : <fmt:formatNumber value="12.3" pattern="#.###"/> <br />
 	0 : <fmt:formatNumber value="12.3" pattern="0.000"/>
 	
 	<h3>백분위(%) 표기 변환</h3>
 	0.2 : <fmt:formatNumber value="0.2" type="percent"/> <br />
 	1.2 : <fmt:formatNumber value="1.2" type="percent"/>
 	
 	
 	<h3>통화 기호 표현</h3>
 	12000 : <fmt:formatNumber value="12000" type="currency" currencySymbol="￡"/>
 	
 	
 	
 	
 	
 	
	
	

</body>
</html>