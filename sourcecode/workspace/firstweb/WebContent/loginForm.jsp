<%@page  import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form action=""  method="post">
		输入用户名：<input  type="text"  name="userName"/><br/>
		输入密码：<input  type="password"  name="password"/><br/>
		
		<input  type="submit"  value="提交"/>
		
		<jsp:useBean id="login"   class="com.crgjava.bean.Login"   />
		<jsp:setProperty  name="login"    property="*"   />
		<p>用户名：<jsp:getProperty  name="login"    property="userName"    /></p>
		<p>密码：<jsp:getProperty  name="login"    property="password"    /></p>
	    <p>服务器：<%=request.getRemoteAddr() %></p>
	    <table>
	    <%
	   	     Connection con =null;
	         Statement stmt=null;
	         Class.forName("com.mysql.jdbc.Driver");
	         String url="jdbc:mysql://localhost:3306/crg?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true";
	         con=DriverManager.getConnection(url,"root","root");
	         stmt=con.createStatement();
	         String sql="select * from t_test";
	         ResultSet rs=null;
	         rs=stmt.executeQuery(sql);
	         while(rs.next()){
	    %>
	      <tr>
	           <td><%=rs.getInt("id") %></td>
	           <td><%=rs.getString("name") %></td>
	      </tr>
	      <%
	         }
	         rs.close();
	         stmt.close();
	         con.close();
	      %>
	   </table>
	    
	</form>	

</body>
</html>