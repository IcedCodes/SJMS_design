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
    <form action="/makenotice" method="post" onsubmit="return judge(this)">
        <h1>标题</h1>
        <center><input type="text" name="title" placeholder="标题"></center><br>
        <h1>正文</h1><br><center><textarea name="message"></textarea></center><br>
        <center><button class="button" input type="submit">提交</button></center>
    </form>

</body>
</html>

<style>
    body{
        background: #acfcff;
    }
    input{
        width: 1200px;
        height: 40px;
        outline: none;
        padding: 10px;
        font-size: 13px;
        text-shadow:1px 1px 1px;
        border-radius: 4px;
        text-align: center;
    }
    h1{
        text-align: center;
        font-size: 15px;
    }
    textarea{
        font-size: 20px;
        font-family: 微软雅黑;
        width: 1200px;
        height: 500px;

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
        text-align: center;
        cursor: pointer;
    }
</style>

<script>
    function judge(form) {
        var title, message;
        title = form.title.value;
        message = form.message.value;
        if(title == ""){
            alert("标题不能为空!");
            return false;
        }
        if(message == ""){
            alert("正文内容不能为空！");
            return false;
        }
        return true;
    }
</script>