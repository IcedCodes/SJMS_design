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
    <div id="login">
        <h1>登录</h1><br>
    <form action="/logincheck" method="post">
        <input type="text" name="username" placeholder="用户名"><br>
        <input type="password" name="password" placeholder="密码"><br>
        <button class="button" type="submit">登录</button><br>
    </form>
    <button class="button" onclick="javascript:location.href='/reg'" >注册</button>
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
        font-family: 微软雅黑;
        margin: 0;
        background: #4A374A;
    }
    #login{
        position: absolute;
        top: 50%;
        left:50%;
        margin: -150px 0 0 -150px;
        width: 300px;
        height: 300px;
    }
    #login h1{
        color: #ffffff;
        text-shadow: 0 0 10px;
        letter-spacing: 1px;
        text-align: center;
    }
    h1{
        font-size: 2em;
        margin: 0.67em 0;
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
    button{
        width: 300px;
        min-height: 20px;
        display: block;
        background-color: #4a77d4;
        border: 1px solid #3762bc;
        color: #fff;
        padding: 9px 14px;
        font-size: 15px;
        line-height: normal;
        border-radius: 5px;
        margin: 0;
        text-align: center;
    }
</style>