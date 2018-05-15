<%@page pageEncoding="UTF-8" %>
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
    </h1>
        <button class="button" onclick="javascript:location.href= '/logout' ">注销</button><br>
        <button class="button" onclick="javascript:location.href = '/' ">返回欢迎界面</button><br>
    </div>
</body>
</html>

<style>
    html{
        width: 100%;
        height: 100%;
        overflow: hidden;
    }
</style>