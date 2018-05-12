<%@ page import="com.NUAALH.database.entities.NoticeEntity" %>
<%@ page import="java.util.List" %>
<%@ page import="com.NUAALH.User" %>
<%@page pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>公告列表</title>
</head>
<body>
<ol>
    <%List<NoticeEntity> e = (List<NoticeEntity>)request.getAttribute("notices");%>
    <%for(int i = 0; i < e.size(); i++){%>
    标题:<%out.print(e.get(i).getTitle());%><br>
    正文:<%out.print(e.get(i).getMessage());%><br>
    <%}%>
</ol>
</body>
</html>