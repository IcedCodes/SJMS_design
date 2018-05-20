<%@page pageEncoding="UTF-8" %>
<link rel = "stylesheet" href="css/button.css">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>登入失败</title>
</head>
<body>
<div id="fail">
    <h1>用户名或密码错误</h1><br>
    <button class="button" onclick="javasrcipt:location.href = '/login'">返回</button>
</div>
</body>
</html>

<style>
    body{
        background: #0c51ff;
    }
    #fail{
        position: absolute;
        top: 50%;
        left:50%;
        margin: -150px 0 0 -150px;
        width: 300px;
        height: 300px;
    }
    #fail h1{
        color: #000000;
        text-shadow: 0 0 10px;
        letter-spacing: 1px;
        text-align: center;
    }
    h1{
        font-size: 2em;
        margin: 0.67em 0;
    }
</style>