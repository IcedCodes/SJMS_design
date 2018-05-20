<%@ page import="com.NUAALH.User" %>
<%@page pageEncoding="UTF-8" %>
<link rel = "stylesheet" href="css/button.css">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>个人主页</title>
</head>
<body>
    <div id="userinfo">
    <h1>欢迎您:${nickname}<br>
    用户名:${username}<br>
    您的用户类型: <%
            User a = (User)session.getAttribute("theuser");
            if(a.getUsertype() == 0)out.println("普通用户组");
            else if(a.getUsertype() == 99)out.println("超级管理员");
        %>
        <br>
    您的积分: <%
            out.println(a.getPoints() + "分");
        %>
    </h1>
        <button class="button" onclick="javascript:location.href= '/logout' ">注销</button><br>
        <button class="button" onclick="javascript:location.href = '/' ">返回欢迎界面</button><br>
        <button class="button" onclick="javascript:location.href = '/noticelist'">查看公告</button><br>
        <%if(a.getUsertype() == 99){%>
        <button class="button" onclick="javascript:location.href = '/createnotice'">添加公告</button><br>
        <form action="/addpoints" method="post" onsubmit="return judge(this)"><br>
        <input type="number" name="points" placeholder="输入积分数目"><br>
        <button class="button" input type="submit">发放积分福利</button>
        </form>
        <%}%>
    </div>
</body>
</html>

<style>
    html{
        width: 100%;
        height: 100%;
        overflow: hidden;
    }
    body{
        background: #4A374A;
    }
    input{
        width: 300px;
        height: 40px;
        margin-bottom: 10px;
        outline: none;
        padding: 10px;
        font-size: 13px;
        color: #fff;
        text-shadow:1px 1px 1px;
        border: 1px solid #312E3D;
        border-bottom-color: #56536A;
        border-radius: 4px;
        background-color: #2D2D3F;
    }
</style>
<script>
    function judge(form) {
        var points = form.points.value;
        if(points == ""){
            alert("请输入发放的积分数目");
            return false;
        }
        return true;
    }
</script>