<%@ page import="com.NUAALH.User" %><%--
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
      String nickname = "未登录";
      boolean login = false;
      if(a != null){
          nickname = a.getNickname();
          login = true;
      }
  %>
  <div id="header">
      <div id="logo">南航愉♂悦PA交流论坛</div>
  </div>
  <div id="ALL">
  <button class="button" onclick="javascript:location.href = '/login' ">登录</button>
  <button class="button" onclick="javascript:location.href = '/reg' ">注册</button>
  <button class="button" onclick="javascript:location.href = '/createnotice' ">添加公告</button>
  <button class="button" onclick="javascript:location.href = '/noticelist' ">查看公告</button>
  <button class="button" onclick="javascript:location.href = '/main' ">进入论坛</button>
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
    #ALL{
        position: absolute;
        top: 50%;
        left:50%;
        margin: -150px 0 0 -150px;
        width: 300px;
        height: 300px;
    }
  .header li{
        float: left;
        color: #ffffffff;
        display: inline-block ;
        width: 112px ;
        height: 72px ;
        text-align: center ;
        line-height:72px ;
        cursor: pointer ;
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
    }
</style>
