<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- 스크립트릿에서 선언된 변수는 지역변수 --%>

<%
	for(int i = 1; i <= 5; i++) {	
%>
<H<%=i %>> H<%=i %> </H> 
<%
	} //같은 곳에서 꺽새를 닫지 않아도 동작할수있다.
%>
</body>
</html>