<%@ page import="com.NUAALH.User" %>
<%@page pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>登录</title>
</head>
<body>
    <%
        User a = (User)session.getAttribute("theuser");
        if(a == null){
            out.println("用户名或密码错误");
        }
        else {
            out.println("欢迎"+ a.getNickname() +"登录");
        }
    %>
    <br>
    <a href="/main">进入论坛</a>
</body>
</html>