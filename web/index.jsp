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
  <body >
  <div class="header">
      <div class="logo">
          南航愉♂悦PA交流论坛
      </div>
      <ul>
          <li class="first">登录</li>
          <li>注册</li>
      </ul>
  </div>
  <a href="hello">Hello!</a>
  <h4>New Hello!</h4>
  <a href="/reg">注册</a>
  </body>
</html>

<style>
  .header{
    height: 60px;
    background: #458fce;
  }
    .logo{
        color: red;
        line-height: 72px;
        font-size: 30px;
        font-family: 微软雅黑;
        display: inline-block;
        font-weight: 500;
    }
  .header ul li.first {
      margin-left: 30px ;
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
</style>