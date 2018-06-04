<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/21
  Time: 18:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Document</title>
    <link rel='stylesheet prefetch' href='../css/bootstrap.min.css'/>
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="col-md-3">
    </div>
    <div class="col-md-9">
        <form  style="width:300px;height:300px;border:1px solid #ccc;margin-top: 100px " action="/updatePwd" method="post">
            <div class="form-group  col-md-12">
                <label >旧密码</label>
                <input type="password" name="oldPassword" class="form-control" placeholder="请输入密码" id="old" style="width: 200px;">
            </div>
            <div class="form-group  col-md-12">
                <label>新密码</label>
                <input type="password" name="password" class="form-control" id="new1" placeholder="请输入密码(6-16位)" style="width: 200px;">
            </div>
            <div class="form-group  col-md-12">
                <label >再次输入</label>
                <input type="password" class="form-control" id="new2" placeholder="请输入密码"data-toggle="popover" data-content="" data-placement="bottom" data-html="true" style="width: 200px;">
            </div>
            <div class="form-group  col-md-12">
                <input type="submit" class="btn btn-primary" id="button" value="修改" />
               <a class="btn btn-default" href="/gohome.html">取消</a>
            </div>
        </form>
        <div style="color: red">${message}</div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        $("#new2").keyup(function(){
            $("#new2").popover('hide');
            if ($("#new1").val()!=$("#new2").val()) {
                $("#new2").popover({
                    content:"两次输入密码不一致",
                });
                $("#new2").popover('show');
            }
        });

    });
</script>
</body>
</html>
