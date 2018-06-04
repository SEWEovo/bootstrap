<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/21
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Document</title>
    <link rel='stylesheet prefetch' href='../css/bootstrap.min.css'/>
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <style type="text/css">
        .container{
            margin-top: 5%;
            width: 80%;
            height: 100%;
        }
        .banner{
            width: 100%;
            height: 200px;
            border-bottom: 1px solid #ccc;
        }
        .myPic{
            width: 160px;
            height: 160px;
        }
        .banner-left{
            margin-left: 5%;
            width: 20%;
            height: 200px;
            display: block;
            float: left;
        }
        .banner-right{
            width: 68%;
            height: 200px;
            display: block;
            float: right;
        }
        textarea{
            display: block;
            float: left;
        }
        .middle{
            width: 100%;
            height: 50px;
        }
        .bottom{
            width: 100%;
            height: 530px;
            border-top: 1px solid #ccc;
        }
        .imgContainer{
            margin-top: 30px;
            width: 100%;
            height: 85%;
        }
        li{
            list-style: none;
        }
        ul{
            width: 200px;
            height: 230px;
            display: block;
            float: left;
        }
        ul li:nth-child(1){
            width: 180px;
            height: 150px;
        }
        li{
            margin-left: -30px;
        }
        img{
            width: 100%;
            height: 100%;
        }

    </style>
</head>
<body>
<div class="container">
    <div class="banner">
        <div class="banner-left">
            <div class="myPic">
                <img style="width: 100%;height: 100%;" src="../images/${person.id}.jpg" >
            </div>
            <div class="btn btn-default" >修改头像</div>
        </div>
        <div class="banner-right">
            <div class="row">
                ${person.name}
                <a href="/updateUser.html">修改个人信息</a>
                <a href="/updatePwd.html">修改密码</a>
            </div>
            <div class="row">
                ${person.city}
            </div>
            <div class="row">
                ${person.gender}
            </div>
            <div  class="row" style="margin-top: 10px;">
                <form action="updateIntro.html" method="post">
                    <textarea name="intro" class="form-control" row="4" style="resize:none;width: 300px;margin-right: 20px;">${person.intro}</textarea>
                    <input type="submit"  class="btn btn-primary" value="修改简介" />
                </form>
            </div>
            <div class="row" style="margin-top: 10px;">
                <div style="display: block;float: left;">关注${faneds}人</div>
                <div style="margin-left: 100px;">粉丝${fans}人</div>
            </div>
        </div>
    </div>
    <div class="middle">
        <form action="/searchPicTag" method="post">
            <div class="form-group">
                <label class="col-sm-2 control-label">搜索图片标签</label>
                <div class="col-sm-6">
                    <input  name="tag" class="form-control" style="width: 500px;display: block;float: left;" />
                </div>
                <div class="col-sm-4">
                    <input type="submit" class="btn btn-primary" value="搜索" style="display: block;float: left;" />
                </div>
            </div>
        </form>

    </div>
    <div class="bottom">
        <div class="imgContainer">
            <c:forEach var="userList" items="${userList}">
                <ul class="imgC">
                    <li><img src="../images/${userList.fname}.jpg" ></li>
                    <li>照片名称:${userList.name}</li>
                    <li>上传时间:${userList.uploadTime}</li>
                    <li>上传人:${userList.userName}</li>
                    <li><a class="btn btn-primary" href="/deletePicById?id=${userList.id}">删除</a></li>
                </ul>
            </c:forEach>
        </div>
    </div>

</div>
</body>
</html>
