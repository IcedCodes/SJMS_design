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
    <div id="login">
        <h1>登录</h1><br>
    <form action="/logincheck" method="post" onsubmit="return judge(this)">
        <input type="text" name="username" placeholder="用户名"><br>
        <input type="password" name="password" placeholder="密码"><br>
        <button class="button" type="submit">登录</button><br>
    </form>
    <button class="button" onclick="javascript:location.href='/reg'" >注册</button>
    </div>
</body>
</html>
<script>
    function judge(form) {
        var name, password;
        name = form.username.value;
        password = form.password.value;
        if(name == ""){
            alert("用户名不能为空");
            return false;
        }
        if(password == ""){
            alert("密码不能能为空");
            return false;
        }
        return true;
    }
</script>
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
</style>