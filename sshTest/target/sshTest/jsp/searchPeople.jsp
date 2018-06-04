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
        .people{
            width: 100%;
            height: 230px;
            border-bottom: 1px solid #ccc;
        }
        li{
            list-style: none;
        }
        .people-message{
            width: 100%;
            height: 50px;
        }
        .people-message li{
            float: left;
            margin-right: 10px;
        }
        .people-message li:nth-child(8){
            width: 100%;
        }
        .aa{
            margin-top: 5px;
        }

    </style>
</head>
<body>
<div class="container">
    <div class="banner">
        <img src="../images/banner.jpg" style="width: 100%;height: 100%;">
    </div>
    <div class="message">
        搜索用户:${message}
    </div>
<c:if test="${not empty userList}">
<c:forEach var="userList" items="${userList}">
    <div class="people">
        <div class="aa">
            <ul class="people-message">
                <li>${userList.name}</li>
                <li>${userList.city}</li>
                <li>${userList.gender}</li>
                <li>上传${userList.pictureNum}张照片</li>
                <li>关注${userList.concernedNum}人</li>
                <li>粉丝${userList.concernerNum}人</li>
                <li>
                    <c:choose>
                        <c:when test="${userList.state eq 1}">
                            <form action="/concern.html" method="get">
                                <input type="text" name="concerned_id" value="${userList.id }" style="display: none;">
                                <input type="submit" name="type" class="btn btn-default" value="取消关注">
                            </form>
                        </c:when>
                        <c:otherwise>
                            <form action="/concern.html" method="get">
                                <input type="text" name="concerned_id" value="${userList.id }" style="display: none;">
                                <input type="submit" name="type" class="btn btn-default" value="关注ta">
                            </form>
                        </c:otherwise>
                    </c:choose>
                </li>
                <li>${userList.intro}</li>
            </ul>
        </div>
        <div>
            <ul>
                <c:if test="${not empty userList.picId1}">
                    <li style="float: left"><img src="../images/${userList.picId1}.jpg" style="width: 150px;height: 150px;margin: 5px;"></li>
                </c:if>
                <c:if test="${not empty userList.picId2}">
                    <li style="float: left"><img src="../images/${userList.picId2}.jpg" style="width: 150px;height: 150px;margin: 5px;"></li>
                </c:if>
                <c:if test="${not empty userList.picId3}">
                    <li style="float: left"><img src="../images/${userList.picId3}.jpg" style="width: 150px;height: 150px;margin: 5px;"></li>
                </c:if>
                <c:if test="${not empty userList.picId4}">
                    <li style="float: left"><img src="../images/${userList.picId4}.jpg" style="width: 150px;height: 150px;margin: 5px;"></li>
                </c:if>
            </ul>

        </div>
    </div>
</c:forEach>
</c:if>
    <c:if test="${empty userList}">
        <div><img src="../images/no.png" style="width: 1045px;height:343px;"></div>
    </c:if>

</div>
</body>
</html>
