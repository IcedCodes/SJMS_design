<%@page pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册</title>
</head>
<body>
<div id="register">
    <h1>注册</h1>
    <form action="/register" method="post" accept-charset="UTF-8" onsubmit="return judge(this)">
        <input type="text"  id="name" name="name" placeholder="用户名"><br>
        <input type="text" id="nickname" name="nickname" placeholder="昵称"><br>
        <input type="password" id="password" name="password" placeholder="密码"><br>
        <button class="button" input type="submit">注册</button>
    </form>

</div>
</body>
</html>
<script>
    function judge(form) {
        var name, nickname, password;
        name = form.name.value;
        nickname = form.nickname.value;
        password = form.password.value;
        if(name == ""){
            alert("用户名不能为空！");
            return false;
        }
        if(nickname == ""){
            alert("昵称不能为空！");
            return false;
        }
        if(password == ""){
            alert("密码不能为空！");
            return false;
        }
        return true;
    }
</script>
<style>
    html{
        width: 100%;
        height: 100%;
        overflow: hidden;
    }
    body{
        font-family: 微软雅黑;
        margin: 0;
        background: #3762bc;
    }
    #register{
        position: absolute;
        top: 50%;
        left:50%;
        margin: -150px 0 0 -150px;
        width: 300px;
        height: 300px;
    }

    #register h1{
        color: #ffffff;
        text-shadow: 0 0 10px;
        letter-spacing: 1px;
        text-align: center;
    }
    h1 {
        font-size: 2em;
        margin: 0.67em 0;
    }

    input{
        width: 300px;
        height: 40px;
        margin-bottom: 10px;
        outline: none;
        padding: 10px;
        font-size: 13px;
        color: #fff;
        text-shadow:1px 1px 1px;
        border: 1px solid #312E3D;
        border-bottom-color: #56536A;
        border-radius: 4px;
        background-color: #2D2D3F;
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