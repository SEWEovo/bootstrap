<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/21
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
            border-bottom: 1px solid #ccc;
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
                <img style="width: 100%;height: 100%;" src="../images/${userDtoList.head_pic}.jpg">
            </div>
        </div>

        <div class="banner-right">
            <div class="row">
                <a href="" style="display: block;float:left;">${userDtoList.name}</a>
                <c:choose>
                    <c:when test="${YNfans eq 1}">
                        <form action="/concern.html" method="get">
                            <input type="text" name="concerned_id" value="${userDtoList.id }" style="display: none;">
                            <input type="submit" name="type" class="btn btn-default" value="取消关注">
                        </form>
                    </c:when>
                    <c:otherwise>
                        <form action="/concern.html" method="get">
                            <input type="text" name="concerned_id" value="${userDtoList.id }" style="display: none;">
                            <input type="submit" name="type" class="btn btn-default" value="关注ta">
                        </form>
                    </c:otherwise>
                </c:choose>
            </div>
                <div class="row"> ${userDtoList.gender}</div>
                <div class="row">${userDtoList.city}</div>
                <div class="row">${userDtoList.intro}</div>
                <div class="row" style="margin-top: 10px;">
                    <div style="display: block;float: left;">关注${faneds}人</div>
                    <div style="margin-left: 100px;">粉丝${fans}人</div>
                </div>
        </div>
    </div>
    <div class="bottom">
        <div class="imgContainer">
            <c:forEach var="userList" items="${userList}">
                <ul class="imgC">
                    <li><img src="../images/${userList.fname}.jpg"  data-toggle="modal" data-target="#myModal${userList.id}">
                        <div class="modal fade" id="myModal${userList.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>

                                    </div>
                                    <div class="modal-body">
                                        <img src="../images/${userList.fname}.jpg" style="height: auto">
                                        <div class="row" style="text-align: center;">名称:${userList.name}</div>
                                        <div class="row" style="text-align: center;">${userList.userName}于${userList.userName}上传</div>
                                        <div class="row" style="text-align: center;">标签:${userList.tags}</div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal-dialog -->
                        </div><!-- /.modal -->
                    </li>
                    <li>照片名称:${userList.name}</li>
                    <li>上传时间:${userList.uploadTime}</li>
                    <li>上传人:${userList.userName}</li>
                </ul>
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>
