<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
</head>
<%
   // 변수를 설정한다.
   int result = 0;
   int num1 = 0;
   int num2 = 0;
   String o = "+";

   // POST 로 젼달된 경우만 수행
   if (request.getMethod().equals("POST")) {

      // 연산자를 가지고 온다.
      o = request.getParameter("Calculator");
      
       num1 = Integer.parseInt(request.getParameter("num1"));
       num2 = Integer.parseInt(request.getParameter("num2"));

      
      // 각 연산자별로 처리한다.
      if (o.equals("+")) {
         result = num1 + num2;
      }
      else if (o.equals("-")) {
         result = num1 - num2;
      }
      else if (o.equals("*")) {
         result = num1 * num2;
      }
      else if (o.equals("/")) {
         result = num1 / num2;
      }
      else if (o.equals("%")) {
    	  result = num1 % num2;
      }
  }
%>


<body>
<h1>계산기</h1>
<form name=numer method=post action = "./Calculator.jsp">
<INPUT TYPE="text" NAME="num1" width=200 size="5">
<SELECT NAME="Calculator">
   <option>+</option>
   <option>-</option>
   <option>*</option>
   <option>/</option>
   <option>%</option>
</SELECT>

<INPUT TYPE="text" NAME="num2" width=200 size="5">
<input type="submit" value="계산" name="B1">
</from>
<hr>
<%=num1 %> <%=request.getParameter("Calculator") %> <%=num2 %> = <%=result %>
</BODY>
</HTML>