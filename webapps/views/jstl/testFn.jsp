<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문자열 관련 태그</title>
</head>
<body>
	<h1>문자열 관련 태그</h1>
	<p>
		EL 괄호 안에서 사용되는 기능이다.
	</p>
	
	<c:set var="words" value="I am groot."/>
	
	<p>
		words : ${words}
	</p>
	
	<h3>fn 기능 사용하기</h3>
	
	영문자를 모두 대문자로 바꾸는 기능 : ${ fn:toUpperCase(words) } <br />
	영문자를 모두 소문자로 바꾸는 기능 : ${ fn:toLowerCase(words) } <br />
	
	groot 시작 위치 : ${ fn : indexOf(words, 'groot')} <br />
	특정 문자 분리하기 : ${ fn : substring(words, 5, 10) } <br />
	
	groot -> Iron Man : ${ fn : replace(words,'groot','Iron Man') } <br />
	문자열 갯수 : ${ fn:length(words) }
	
	<hr />
	
	<h3>split / join</h3>
	
	<c:set var="address" value="서울시, 강남구, 역삼동"/>
	
	<c:set var="splitResult" value="${fn:split(address, ', ') }"/>
	
	<p>
		원문 : ${ address } <br>
		split : ${ splitResult[0] }
	</p>
	
	<c:set var="joinResult" value="${fn:join(splitResult,' ') }"/>
	
	<p>
	join : ${joinResult }
	</p>
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>