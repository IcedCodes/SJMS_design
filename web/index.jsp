<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2018/5/3
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>起始界面</title>
  </head>
  <body>
  <div class="header">
    <div class="login">
      <span><a href="javascript:void(0)">登录</a></span>
      <span>|</span>
      <span><a href="javascript:void (0)">注册</a> </span>
    </div>
  </div>
  <div class="banner">

  </div>
  <a href="hello">Hello!</a>
  </body>
</html>

<style>
  .header{
    height: 60px;
    background: #458fce;
  }
  .login{
    float: right;
    color: aqua;
    line-height: 72px;
    margin-right: auto;
  }
  .header ul li.login{
    background-color: azure;
  }
  .banner{
    height: 380px;
    overflow: hidden;
    background-color: #cccccc;
  }
</style>