<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/21
  Time: 20:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Document</title>
    <link rel='stylesheet prefetch' href='../css/bootstrap.min.css'/>
    <link rel='stylesheet' href='../css/toastr.min.css'/>
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/login.js"></script>
    <script src="../js/toastr.min.js"></script>
    <style type="text/css">
        form{
            margin-top: 150px;
            margin-left: 500px;
            display: block;
            padding: 20px;
        }
    </style>
</head>
<body>
<form class="form-horizontal" method="POST" action="/login.html" >
    <div class="form-group">
        <label class="col-sm-2 control-label">用户名</label>
        <div class="col-sm-2">
            <input type="text" class="form-control" name="username" id="loginName">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">密码</label>
        <div class="col-sm-2">
            <input type="password" class="form-control" name="password" id="password">
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" id="login" class="btn btn-default" style="margin-left: -70px;">用户登录</button>
            <button class="btn btn-default"><a href="/regist">注册</a></button>
        </div>
    </div>
    <div class="form-group">
        <div style="color: red;">${message.loginMessage}</div>
    </div>
</form>
</body>
</html>
