<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录中国有嘻哈音乐网</title>
<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script src="js/cloud.js" type="text/javascript"></script>

<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script>

</head>

<body
	style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">



	<div id="mainBody">
		<div id="cloud1" class="cloud"></div>
		<div id="cloud2" class="cloud"></div>
	</div>


	<div class="logintop">
		<span>欢迎登录中国有嘻哈音乐网</span>
		<ul>
			<li><a href="#">回首页</a></li>
			<li><a href="#">帮助</a></li>
			<li><a href="#">关于</a></li>
		</ul>
	</div>

	<div class="loginbody">

		<span class="systemlogo"></span>

		<div class="loginbox">

			<form action="<%=path%>/login.do" method="post">
				<ul>
					<li><input name="user" type="text" class="loginuser"
						value="请输入用户名" onclick="JavaScript:this.value=''" /></li>
					<li><input name="pass" type="password" class="loginpwd" /></li>
					<li><input type="submit" class="loginbtn" value="登录" /><label>
					<input name="" type="checkbox" value="" checked="checked" />记住密码</label><label>
					<a href="#">忘记密码？</a></label></li>
				</ul>
			</form>

		</div>

	</div>



	<div class="loginbm">
		欢迎登录中国有嘻哈音乐网<a href="http://www.uimaker.com">uimaker.com</a>
		仅供学习交流，勿用于任何商业用途
	</div>


	<div style="display:none">
		<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
			language='JavaScript' charset='gb2312'></script>
	</div>
</body>
</html>
