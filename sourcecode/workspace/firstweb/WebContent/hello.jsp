<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>直接的纯jsp实现</title>
</head>
<body>
      <div>hello world</div>
     <%! String a="搭建的第一个么？",mlink="http://www.baidu.com"; %> <!-- 声明要加叹号，后面要加分号 -->
     <%! String print(int i){ return String.valueOf(i);} %>
     <%= print(10) %><!-- 表达式要加等号 ,后面不加分号-->
     <a href='<%= mlink %>' >百度</a> <!-- 这个本意要跳转到百度，必须用单引号，不能用双引号啊，不然的话是相对地址了 -->
     <a href="http://www.163.com">网易</a>
</body>
</html>