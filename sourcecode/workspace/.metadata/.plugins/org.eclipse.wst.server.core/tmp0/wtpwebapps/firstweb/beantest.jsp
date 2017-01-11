<%@page import="com.crgjava.bean.TestBean" %>
<%@page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>调用后面的bean</title>
</head>
<body>
      <div>hello world bean</div>
     <%
           TestBean t=new TestBean();
           String a= t.testStr();
     %>
     <div><%=a %></div>
     <jsp:include page="hello.jsp"  flush="true" />
</body>
</html>