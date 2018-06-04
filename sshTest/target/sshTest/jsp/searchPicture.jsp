<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/21
  Time: 16:32
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
            width: 80%;
            height: 100%;
            margin-top: 50px;
        }
        .banner{
            width: 100%;
            height: 100px;
            border-bottom: 1px solid #ccc;
        }
        .message{
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
        <img src="../images/banner.jpg" style="width: 100%;height: 100%;">
    </div>
    <div class="message">
        搜索照片:${message}
    </div>
    <div class="bottom">
        <div class="imgContainer">
        <c:if test="${not empty pictureDtoList2}">
            <c:forEach var="pictureDtoList2" items="${pictureDtoList2}">
                <ul class="imgC">
                    <li><img src="../images/${pictureDtoList2.id}.jpg" data-toggle="modal" data-target="#myModal${pictureDtoList2.id}">
                        <div class="modal fade" id="myModal${pictureDtoList2.id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>

                                    </div>
                                    <div class="modal-body">
                                        <img src="../images/${pictureDtoList2.fname}.jpg" style="height: auto">
                                        <div class="row" style="text-align: center;">名称:${pictureDtoList2.name}</div>
                                        <div class="row" style="text-align: center;">${pictureDtoList2.userName}于${pictureDtoList2.uploadTime}上传</div>
                                        <div class="row" style="text-align: center;">标签:${pictureDtoList2.tags}</div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal-dialog -->
                        </div><!-- /.modal -->
                    </li>
                    <li>照片名称:${pictureDtoList2.name}</li>
                    <li>上传时间:${pictureDtoList2.uploadTime}</li>
                    <li>上传人:<a href="/other?id=${pictureDtoList2.userId}">${pictureDtoList2.userName}</a></li>
                </ul>
            </c:forEach>
        </c:if>
        <c:if test="${empty pictureDtoList2}">
            <div><img src="../images/no.png" style="width: 1045px;height:343px;"></div>
        </c:if>
        </div>
    </div>
</div>
</body>
</html>
