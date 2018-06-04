<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/21
  Time: 16:31
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
    <style type="text/css">
        .container{
            height: 100%;
            margin-top: 50px;
            margin-left: 30%;
        }
        .upload{position:relative; display:inline-block; height:33px;line-height:33px; overflow:hidden;vertical-align:middle; cursor:pointer;}
        .upload .upload-input-file{position:absolute; right:0; top:0; font-size:100px; opacity:0; filter:alpha(opacity=0);cursor:pointer;}
        .upload .upload-url { -moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; border-radius:2px;
            border: solid 1px #ddd; width: 200px; height:30px;-webkit-line-height: 1;line-height: 30px\9;-ms-line-height: 30px; text-indent:3px;}
        .upload .upload-tip {display:none; background-color:#1c84c6; padding:2px 10px; color:#fefefe; font-size:12px !important;border-radius:3px;}
        .upload-img{
            width: 100%;
            height: 60px;
        }
        .btn .btn-default{
            height: 29px;
        }
        .tips{
            width: 300px;
            height: 100px;
            border: 1px solid #ccc;
            padding: 20px;
        }

    </style>
</head>
<body>
<div class="container">
    <form>
        <div class="upload-img">
                <span class="upload">
                    <input type="text" class="upload-url" />
                    <input type="button" class="btn btn-default" value="选择图片" />
                    <input type="file" class="upload-input-file" />
                </span>
        </div>
        <div class="upload-img">
                <span class="upload">
                    <input type="text" class="upload-url" />
                    <input type="button" class="btn btn-default" value="选择图片" />
                    <input type="file" class="upload-input-file" />
                </span>
        </div>
        <div class="upload-img">
                <span class="upload">
                    <input type="text" class="upload-url" />
                    <input type="button" class="btn btn-default" value="选择图片" />
                    <input type="file" class="upload-input-file" />
                </span>
        </div>
        <div class="upload-img">
            <div class="lcell span5">
                <span class="upload">
                    <input type="text" class="upload-url" />
                    <input type="button" class="btn btn-default" value="选择图片" />
                    <input type="file" class="upload-input-file" />
                </span>
            </div>
        </div>
        <div class="tips">
            <div>我的标签</div>
            <input type="checkbox" name="tip" value="春天" />春天
            <input type="checkbox" name="tip" value="小和山" />小和山
            <input type="checkbox" name="tip" value="美好" />美好
        </div>
        <div class="form-group" style="margin-top: 10px;">
            <label class="control-label" style="display: block;float: left;">图片标签</label>
            <input type="text" class="form-control" style="width: 100px;display: block;float: left;margin-left: 30px;height: 28px;" />
        </div>
        <div class="row" style="margin-top: 50px;">
            <a href="" class="btn btn-primary">上传图片</a>
        </div>
    </form>
</div>
<script type="text/javascript">
    $(function(){
        $(".upload .upload-input-file").change(function () {
            if ($(this).parent().html().indexOf("class=\"upload-url\"") != -1) {
                var fileUrl = $(this).val();
                $(this).parent().children(".upload-url").val(fileUrl);
            }
            else {
                var fileUrl = $(this).val();
                var urlArr = fileUrl.split("\\");
                var getName = urlArr[urlArr.length - 1];//截取路径并获取文件的名字
                $(this).parent().children(".upload-tip").text(getName).fadeIn("slow");
                //$(this).parent().children(".upload-btn").val(getName);//按钮上变成文件名称
                timeout = setTimeout(function () {
                    $(".upload-tip").fadeOut("slow");
                }, 5000);
            }
        });
    })
</script>
</body>
</html>
