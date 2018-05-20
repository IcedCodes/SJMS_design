<%@page pageEncoding="UTF-8" %>
<link rel="stylesheet" href="/css/button.css">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>请登录</title>
</head>
<body>
    <center>
        <h1>您必须登录才能进行下一步操作</h1><br><br>
        <h2>已有账号:</h2><button class="button" onclick="javascript:location.href = '/login' ">登录</button>
        <h2>还没有账号:</h2><button class="button" onclick="javascript:location.href = '/reg' ">注册</button>
    </center>
</body>
</html>

<style>
    h1{
        font-size: 30px;
        font-family: 微软雅黑;
        text-align: center;
        height: 100px;
    }
    h2{
        font-size: 20px;
        font-family: 微软雅黑;
        text-align: center;
        height: 100px;
    }
    body{
        background: #4c2b48;
    }
</style>