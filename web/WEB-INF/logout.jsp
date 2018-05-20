<%@page pageEncoding="UTF-8" %>
<link rel = "stylesheet" href="css/button.css">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>注销</title>
</head>
<body>
<div id="logout">
    <h1>注销成功</h1><br>
    <%session.invalidate();%>
    <button class="button" onclick="javasrcipt:location.href = '/'">返回</button>
</div>
</body>
</html>

<style>
    body{
        background: #4A374A;
    }
    #logout{
        position: absolute;
        top: 50%;
        left:50%;
        margin: -150px 0 0 -150px;
        width: 300px;
        height: 300px;
    }
    #logout h1{
        color: #eb9286;
        text-shadow: 0 0 10px;
        letter-spacing: 1px;
        text-align: center;
    }
    h1{
        font-size: 2em;
        margin: 0.67em 0;
    }
</style>