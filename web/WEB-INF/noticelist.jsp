<%@ page import="com.NUAALH.database.entities.NoticeEntity" %>
<%@ page import="java.util.List" %>
<%@page pageEncoding="UTF-8" %>
<link rel = "stylesheet" href="css/button.css">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>公告列表</title>
</head>
<body>

    <div id="noticeinfo">
        <center>
            <output id="title"></output><br>
            <output id="nickname"></output><br>
            <output id="date"></output><br>
            <textarea id="message" readonly="true"></textarea><br>
        </center>
    </div>
    <br><br>
    <center><button class="button" onclick="lastinfo()">上一条</button><br>
        <button class="button" onclick="nextinfo()">下一条</button><br>
        <button class="button" onclick = "javascript:location.href = '/main'">返回</button>
    </center>
</body>
</html>

<style>
    body{
        background: #b1f4b3;
    }
    #noticeinfo{
        position: center;
    }
    input{
        width: 1200px;
        height: 40px;
        margin-bottom: 10px;
        outline: none;
        padding: 10px;
        font-size: 13px;
        text-shadow:1px 1px 1px;
        border: 1px solid #312E3D;
        border-bottom-color: #56536A;
        border-radius: 4px;
    }
    textarea{
        width: 1200px;
        height: 500px;
    }
    #title{
        color: black;
        font-size: 30px;
        text-align: center;
    }
    #nickname{
        color: black;
        font-size: 20px;
        text-align: center;
    }
    #date{
        color: black;
        font-size: 15px;
        text-align: center;
    }
    #message{
        color: black;
        font-size: 15px;
    }
</style>

<script>
    var title = new Array();
    var nickname = new Array();
    var message = new Array();
    var date = new Array();
    var count;
    var i = 0;
    <%
         List<NoticeEntity> e = (List<NoticeEntity>)request.getAttribute("notices");
         int i;
         for(i = 0; i < e.size(); i++){
    %>
        title[<%=i%>] = '<%=e.get(i).getTitle()%>';
        nickname[<%=i%>] = "作者:\t" + '<%=e.get(i).getNickname()%>';
        message[<%=i%>] ='<%=e.get(i).getMessage()%>';
        date[<%=i%>] = "发布时间:\t" + '<%=e.get(i).getTime()%>';
    <%}%>
    <%{%>
        count = <%=e.size()%>;
        document.getElementById("title").value = title[i];
        document.getElementById("nickname").value = nickname[i];
        document.getElementById("message").value = message[i];
        document.getElementById("date").value = date[i];
    <%}%>
    function nextinfo() {
        i++;
        if(i == count)
        {
            alert("已经是最早的公告!");
            i--;
            return;
        }
        console.log("i:" + i);
        console.log("\ntitle:" + title[i]);
        console.log("\nnickname:" + nickname[i]);
        console.log("\ndate:" + date[i]);
        console.log("\nmessage:" + message[i]);
        document.getElementById("title").value = title[i];
        document.getElementById("nickname").value = nickname[i];
        document.getElementById("message").value = message[i];
        document.getElementById("date").value = date[i];
    }
    function lastinfo() {
        i--;
        if(i == -1)
        {
            alert("已经是最新的公告!");
            i++;
            return;
        }
        console.log("i:" + i);
        console.log("\ntitle:" + title[i]);
        console.log("\nnickname:" + nickname[i]);
        console.log("\ndate:" + date[i]);
        console.log("\nmessage:" + message[i]);
        document.getElementById("title").value = title[i];
        document.getElementById("nickname").value = nickname[i];
        document.getElementById("message").value = message[i];
        document.getElementById("date").value = date[i];
    }
</script>
