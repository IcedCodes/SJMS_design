<%@ page import="com.NUAALH.User" %>
<%@ page import="org.springframework.ui.ModelMap" %><%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2018/5/3
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>欢迎界面</title>
  </head>
  <body>
  <%
      User a = (User)session.getAttribute("theuser");
      String nickname = "游客";
      if(a != null){
          nickname = a.getNickname();
      }
  %>
  <div id="header">
      <div id="logo">南航愉♂悦PA交流论坛</div>
  </div>
  <div id="nickname">
      <br><br><br>
      <h1>欢迎您:  <%out.println(nickname);%></h1>
  </div>
  <div id="ALL">
  <%if(a == null){%>
      <button class="button" onclick="javascript:location.href = '/login' ">登录</button><br>
      <%}%>
  <%if (a != null){%>
      <button class="button" onclick="javascript:location.href = '/logout' ">注销</button><br>
  <%}%>
  <button class="button" onclick="javascript:location.href = '/reg' ">注册</button><br>
  <button class="button" onclick="javascript:location.href = '/createnotice' ">添加公告</button><br>
  <button class="button" onclick="javascript:location.href = '/noticelist' ">查看公告</button><br>
  <button class="button" onclick="javascript:location.href = '/main' ">进入论坛</button><br>
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

    #header{
    height: 60px;
    background: blue;
    text-align: center;
  }
  #header #logo{
      position: relative;
      text-align: center;
      color: red;
      line-height: 72px;
      font-size: 30px;
      font-family: 微软雅黑;
      display: inline-block;
      font-weight: 500;
      text-shadow: azure;
  }
  #nickname h1{
      font-size: 20px;
      font-family: 微软雅黑;
      text-align: center;
      height: 100px;
  }
    #ALL{
        position: absolute;
        top: 50%;
        left:50%;
        margin: -150px 0 0 -150px;
        width: 300px;
        height: 300px;
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
        cursor: pointer;
    }
</style>
