<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/10
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Document</title>
    <link rel='stylesheet prefetch' href='../css/bootstrap.min.css'/>
    <link rel='stylesheet' href='../css/jquery-ui.css'/>
    <link rel='stylesheet' href='../css/toastr.min.css'/>
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/regist.js"></script>
    <script src="../js/toastr.min.js"></script>
    <style type="text/css">
        form{
            margin-left: 300px;
            margin-top: 100px;
        }
    </style>
</head>
<body>
<form class="form-horizontal" action="/regist.html" method="POST">
    <div class="form-group">
        <label class="col-sm-2 control-label">用户名</label>
        <div class="col-sm-2">
            <input type="text" class="form-control" name="username" id="loginName">
        </div>
        <div id="#message" style="color: red;">${registMessage}</div>
    </div>
    <div class="form-group">
        <label  class="col-sm-2 control-label">密码</label>
        <div class="col-sm-2">
            <input type="password" class="form-control" name="password" id="password">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">确认密码</label>
        <div class="col-sm-2">
            <input type="password" class="form-control" id="repassword">
        </div>
    </div>
    <div class="form-group">
        <label  class="col-sm-2 control-label">真实姓名</label>
        <div class="col-sm-2">
            <input type="text" class="form-control" name="name" id="realName">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">联系电话</label>
        <div class="col-sm-2">
            <input type="text" class="form-control" name="mobile" id="tel">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">电子邮箱</label>
        <div class="col-sm-2">
            <input type="text" class="form-control" name="email" id="email">
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default" id="regist" >注册</button>
            <button type="button" class="btn btn-default"><a href="/login.html">取消</a></button>
        </div>
    </div>
</form>
</body>
</html>
