
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();//  获取项目名
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>中国有嘻哈音乐网</title>
<link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
<link href="<%=path%>/css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path%>/js/jquery.js"></script>
<script type="text/javascript" src="<%=path%>/js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/select-ui.min.js"></script>
<script type="text/javascript" src="<%=path%>/editor/kindeditor.js"></script>
<script type="text/javascript">
	$(document).ready(function(e) {
		$(".select1").uedSelect({
			width : 345
		});
		$(".select2").uedSelect({
			width : 167
		});
		$(".select3").uedSelect({
			width : 100
		});
	});
</script>

</head>

<body>

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
			<li><a href="#">修改歌曲信息</a></li>
		</ul>
	</div>

	<div class="formbody">

		<div class="formtitle">
			<span>基本信息</span>
		</div>

		<form action="<%=path%>/set.do" method="post">
			<input type="hidden" name="id" value="${requestScope.milktea.id}" />
			<ul class="forminfo">
				<li><label>歌曲</label><input name="name" type="text"
					class="dfinput" value="${milktea.name}" /><i>名称不能超过30个字符</i></li>
				
				<li><label>歌手</label><input name="type" type="text"
					class="dfinput" value="${milktea.name}" /><i>名称不能超过30个字符</i></li>
				
				<li><label>专辑</label><input name="price" type="text"
					class="dfinput" value="${milktea.price}" /><i>不能为空</i></li>
				<li><label>时长</label><input name="num" type="text"
					class="dfinput" value="${milktea.num}" /><i>不能为空</i></li>
				<li><label>&nbsp;</label><input name="" type="submit"
					class="btn" value="确认修改" /></li>
			</ul>
		</form>

	</div>
	<script>
	$("#select").val("${milktea.type}");
	</script>

	<div style="display:none">
		<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
			language='JavaScript' charset='gb2312'></script>
	</div>
</body>
</html>
