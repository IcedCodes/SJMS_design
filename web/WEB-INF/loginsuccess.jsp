<%@ page import="com.NUAALH.User" %>
<%@page pageEncoding="UTF-8" %>
<link rel = "stylesheet" href="css/button.css">
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
    %>
    <div id="info">
    <div class="nickname">
        <h1>欢迎您<% out.println(a.getNickname());;%></h1>
    </div>
    <br>
    <button class="button" onclick="javascript:location.href='/main'">进入论坛</button>
    </div>
</body>
</html>

<style>
    body{
        font-family: 微软雅黑;
        margin: 0;
        background: #4A374A;
    }
    #info{
        position: absolute;
        top: 50%;
        left:50%;
        margin: -150px 0 0 -150px;
        width: 300px;
        height: 300px;
    }
    .nickname h1{
        color: #ffffff;
        text-shadow: 0 0 10px;
        letter-spacing: 1px;
        text-align: center;
    }
</style>