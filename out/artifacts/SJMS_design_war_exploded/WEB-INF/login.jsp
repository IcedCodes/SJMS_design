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
    <form action="/logincheck" method="post">
        用户名:<input type="text" name="username"><br>
        密码:<input type="text" name="password"><br>
        <input type="submit">
    </form>
</body>
</html>