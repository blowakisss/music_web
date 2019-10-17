<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>中国有嘻哈音乐网</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

</head>


<body>

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
		</ul>
	</div>

	<div class="mainindex">

		<div class="welinfo">														
			<span><img src="images/sun.png" alt="天气" /></span> <b>${sessionScope.users.user}您好，欢迎使用中国有嘻哈音乐网</b>(admin@uimaker.com)
			<a href="#">帐号设置</a>
		</div>

		<div class="welinfo">
			<span><img src="images/time.png" alt="时间" /></span> <i>您上次登录的时间：2018-10-09
				15:22</i> （不是您登录的？<a href="#">请点这里</a>）
		</div>

	</div>



	<div style="display:none">
		<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
			language='JavaScript' charset='gb2312'></script>
	</div>
</body>
</html>
