<%@page pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>编写通知</title>
</head>

<body>
    <form action="/makenotice" method="post">
        标题:<input type="text" name="title"><br>
        正文:<br><textarea rows="20" cols="150" name="message"></textarea><br>
        <input type="submit">
    </form>
</body>
</html>