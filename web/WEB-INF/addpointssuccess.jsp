<%@page pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>发放积分福利成功</title>
</head>
<body>
    <h1>成功发放${points}积分福利</h1><br>
    <center><button class="button" onclick="javascript:location.href='/main'" >返回</button></center>
</body>
</html>

<style>
    body{
        background: #380c32;
    }
    h1{
        text-align: center;
        color: #ffffff;
        text-shadow: 0 0 10px;
        letter-spacing: 1px;
        text-align: center;
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
        cursor: pointer;
    }
</style>