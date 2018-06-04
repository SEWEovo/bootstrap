<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/21
  Time: 20:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
</head>
<link rel='stylesheet prefetch' href='../css/bootstrap.min.css'/>
<link rel='stylesheet' href='../css/toastr.min.css'/>
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/login.js"></script>
<script src="../js/toastr.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/loading.css">
<body>
		<div id="container">
<div id="load">
<form action="/login" method="post">
<div class="logo"><div id="logo1">登陆</div></div>
<div><input type="text" name="username" value="输入用户名" class="textall" id="user" ></div>
<div><input type="text" name="password" value="输入密码" class="textall" id="psd"></div>
	<div><button type="submit" class="buttonall" id="login">登录</button>
		<button type="button" class="buttonall" id="re">
			<a  href="/regist.html" style="width: 100%;height: 100%;color: white;display:block;line-height:43px;text-aline:center">注册</a>
		</button>
</div>
<div class="backMes">${message}</div>
</form>
	</div>
		</div>
		<script type="text/javascript">
            document.getElementById('user').onclick=function(){
                this.value="";
            }
            document.getElementById("psd").onclick=function(){
                this.value="";
            }
		</script>
</body>
</html>