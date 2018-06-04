<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/21
  Time: 17:08
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
    <link rel='stylesheet' href='../css/bootstrap-select.min.css'/>
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
</head>
<style type="text/css">
    .form-control{
        width: 150px;
    }
    form{
        margin-top: 100px;
    }

</style>
<body>
<div class="container">
    <div class="col-md-3">
    </div>
    <div class="col-md-9">
        <form class="form-horizontal" action="/updateUser" method="post">
            <div class="form-group">
                <label class="col-sm-2 control-label">用户名</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="username" value="${person.username}" />
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">姓名</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="name" value="${person.name}" />
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">性别</label>
                <div class="col-sm-10">
                    <input type="radio" name="gender"  value="男" ${person.gender == "男"?'checked':''} />男
                    <input type="radio" name="gender"  value="女" ${person.gender == "女"?'checked':''} />女
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">省份</label>
                <div class="col-sm-10">
                    <select name="province" class="selectpicker form-control" id="province" onChange="changeSelect()">
                        <option value="浙江省" ${person.province == "浙江省" ? 'selected' : ''}>浙江省</option>
                        <option value="山东省" ${person.province == "山东省" ? 'selected' : ''}>山东省</option>
                        <option value="江苏省" ${person.province == "江苏省" ? 'selected' : ''}>江苏省</option>
                        <option value="北京市" ${person.province == "北京市" ? 'selected' : ''}>北京市</option>
                        <option value="天津市" ${person.province == "天津市" ? 'selected' : ''}>天津市</option>
                        <option value="上海市" ${person.province == "上海" ? 'selected' : ''}>上海市</option>
                    </select>

                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">城市</label>
                <div class="col-sm-10">
                    <select name="city" id="city" class="selectpicker form-control">
                        <option value="杭州市" ${person.city == "杭州市" ? 'selected' : ''}>杭州市</option>
                        <option value="绍兴市" ${person.city == "绍兴市" ? 'selected' : ''}>绍兴市</option>
                        <option value="湖州市" ${person.city == "湖州市" ? 'selected' : ''}>湖州市</option>
                        <option value="宁波市" ${person.city == "宁波市" ? 'selected' : ''}>宁波市</option>
                        <option value="金华市" ${person.city == "金华市" ? 'selected' : ''}>金华市</option>
                        <option value="嘉兴市" ${person.city == "嘉兴市" ? 'selected' : ''}>嘉兴市</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">邮箱</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="email" value="${person.email}" />
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">手机</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="mobile" value="${person.mobile}" />
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">QQ</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="QQ" value="${person.QQ}" />
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">给大家的一句话</label>
                <div class="col-sm-10">
                    <textarea name="intro" rows="4" style="resize:none;width: 300px;margin-right: 20px;">>${person.intro}</textarea>
                </div>
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-primary" id="button" style="margin-left: 150px;" value="修改" />
                <button class="btn btn-primary" style="margin-left: 50px;">取消</button>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript">
        var city = [[ "绍兴市" ,"嘉兴市"],["潍坊市" ,"淄博市", "威海市", "烟台市", "菏泽市" ,"日照市" ,"德州市" ],
            ["无锡市" ,"常州市", "扬州市", "徐州市", "苏州市" ,"连云港" ],["北京市"],["天津市"],["上海市"]];
        function changeSelect(){
            var provinceSel = document.getElementById("province");
            var citySel = document.getElementById("city");

            clearSelect(citySel);   //清空列表框中原有数据

            var index = provinceSel.selectedIndex;
            for(var i=0;i<city[index].length;i++){
                citySel.options[i] = new Option(city[index][i]);
            }
        }
        function clearSelect(select) {//清空列表框中的信息
            while(select.length > 0){
                select.options[0] = null;   //将列表框中的第一项删除
            }
        }
</script>
</body>
</html>
