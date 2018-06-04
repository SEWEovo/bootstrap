<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/21
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Document</title>
    <link rel='stylesheet prefetch' href='../css/bootstrap.min.css'/>
    <link rel='stylesheet' href='../css/toastr.min.css'/>
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/toastr.min.js"></script>
    <style type="text/css">
        .container{
            width: 80%;
            height: 100%;
            margin-top: 50px;
        }
        .top{
            width: 100%;
            height: 200px;
        }
        .left{
            width: 67%;
            display: block;
            float: left;
        }
        .banner{
            width: 100%;
            height: 70%;
        }
        .search{
            width: 100%;
            height: 30%;
            margin-top: 5px;
        }
        .right{
            width: 29%;
            height: 100%;
            display: block;
            float: left;
        }
        .myPic{
            width: 150px;
            height: 150px;
            margin-left: 100px;
        }
        .middle{
            width: 100%;
            height: 530px;
            border-top: 1px solid #ccc;
            margin-top: 10px;
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
    <div class="top">
        <div class="left">
            <div class="banner">
                <img style="width: 100%;height: 100%;" src="../images/a.jpeg">
            </div>
            <div class="search">
                <form method="POST" action="/search.html">
                    <input type="text" id="message" name="message" class="form-control" style="width:70%;float: left;margin-left: 30px;margin-right: 10px;"/>
                    <button class="btn btn-default" type="submit" value="查询" id="search">查询</button>
                    <div class="row" style="margin-left: 30px">
                        <input type="radio" name="search" value="pic" />照片
                        <input type="radio" name="search" value="user" />用户
                    </div>

                </form>
            </div>
        </div>

        <div class="right">
            <div class="myPic">
                <img src="../images/${person.head_pic}.jpg" style="width: 100%;height: 100%;">
            </div>
            <div style="margin-left: 140px;"><a href="/gohome.html?id=${person.id}">我的空间</a></div>
            <div style="margin-left: 130px;height: 30px;"><a class="btn btn-default" href="/addPic">上传图片</a>
            </div>
        </div>

    </div>
    <div class="middle">
        <div style="display: block;float: left;">关注用户的照片</div>
        <div style="margin-left: 400px;">
            <a href="">上一页</a>
            <a href="" style="margin-left: 50px;">下一页</a>
        </div>
        <div class="imgContainer">
<c:forEach var="pictureList" items="${pictureList}">
            <ul class="imgC">
                <li><img src="../images/${pictureList.picId}.jpg" data-toggle="modal" data-target="#myModal${pictureList.picId}">

                    <div class="modal fade" id="myModal${pictureList.picId}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>

                                </div>
                                <div class="modal-body">
                                    <img src="../images/${pictureList.picId}.jpg" style="height: auto">
                                    <div class="row" style="text-align: center;">名称:${pictureList.picName}</div>
                                    <div class="row" style="text-align: center;">${pictureList.edName}于${pictureList.picUploadTime}上传</div>
                                    <div class="row" style="text-align: center;">标签:${pictureList.tags}</div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div><!-- /.modal-content -->
                        </div><!-- /.modal-dialog -->
                    </div><!-- /.modal -->

                </li>
                <li>照片名称:${pictureList.picName}</li>
                <li>上传时间:${pictureList.picUploadTime}</li>
                <li>上传人:<a href="/other.html?id=${pictureList.edId}">${pictureList.edName}</a></li>
            </ul>
</c:forEach>
        </div>
        <div style="margin-left: 400px;margin-bottom: 10px;">
            <a href="">上一页</a>
            <a href="" style="margin-left: 50px;">下一页</a>
        </div>
    </div>
    <div class="bottom">
        <div style="display: block;float: left;">最新上传的照片</div>
        <div style="margin-left: 400px;">
            <a href="">上一页</a>
            <a href="" style="margin-left: 50px;">下一页</a>
        </div>
        <div class="imgContainer">
            <c:forEach var="pictureList2" items="${pictureList2}">
                <ul class="imgC">
                    <li><img src="../images/${pictureList2.id}.jpg">
                    </li>
                    <li>照片名称:${pictureList2.name}</li>
                    <li>上传时间:${pictureList2.uploadTime}</li>
                    <li>上传人:<a href="/other.html?id=${pictureList2.userId}">${pictureList2.userName}</a></li>
                </ul>
            </c:forEach>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        toastr.options = {

            "closeButton": true, //是否显示关闭按钮

            "debug": false, //是否使用debug模式

            "positionClass":'toast-center-center',//弹出窗的位置

            "showDuration": "300",//显示的动画时间

            "hideDuration": "300",//消失的动画时间

            "timeOut": "1000", //展现时间

            "extendedTimeOut": "1000",//加长展示时间

            "showEasing": "swing",//显示时的动画缓冲方式

            "hideEasing": "linear",//消失时的动画缓冲方式

            "showMethod": "fadeIn",//显示时的动画方式

            "hideMethod": "fadeOut" //消失时的动画方式

        };
        $("#search").click(function(){
            if ($("#message").val()=="") {
                toastr.error("请输入查询信息！");
                return false;
            }
            var type=$('input:radio[name="search"]:checked').val();
            if(type==null){
                toastr.error("请选择查询类别！");
                return false;
            }
        });
        });
</script>
    </body>
</html>