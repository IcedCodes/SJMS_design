<%@ page import="com.NUAALH.database.entities.UserEntity" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2018/5/9
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<link rel = "stylesheet" href="css/button.css">
<%@page pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户</title>
</head>
<body>
    <ol>
        <%for (UserEntity e:(List<UserEntity>)request.getAttribute("users")){%>
        <li>ID:<%out.print(e.getId());%></li>
        <li>姓名:<%out.print(e.getUsername());%></li>
        <%}%>
    </ol>
</body>
</html>
