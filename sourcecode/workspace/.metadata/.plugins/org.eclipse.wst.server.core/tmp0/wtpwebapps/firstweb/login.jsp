<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<jsp:useBean id="login"   class="com.crgjava.bean.Login"   />
		<jsp:setProperty  name="login"    property="userName"  value="陈荣光"   />
		<jsp:setProperty  name="login"    property="password"  value="123456"   />
		
		<p>用户名：<jsp:getProperty  name="login"    property="userName"    /></p>
		<p>密码：<jsp:getProperty  name="login"    property="password"    /></p>
		
		
		
</body>
</html>