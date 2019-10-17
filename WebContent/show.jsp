<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path%>/js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
	
		  //修改
		$(".tiptop a").click(function() {
			$(".tip").fadeOut(200);
		});

/* 		$(".sure").click(function() {
			$(".tip").fadeOut(100);
		}); */
	
		// 修改
		$(".cancel").click(function() {
			$(".tip").fadeOut(100);
		});
		
		$("#click").click(function(){
			$("#form").submit();
		});
		
	});
</script>

</head>


<body>

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
			<li><a href="#">歌曲信息表</a></li>
			<li><a href="#">歌曲管理表</a></li>
		</ul>
	</div>

	<div class="rightinfo">

		<div class="tools">

			<ul class="toolbar">
				<li id="click"><span><img src="<%=path%>/images/t03.png" /></span>删除</li>
				
			</ul>
			<input name="name" type="text" placeholder="请输入歌曲或歌手名称"  class="dfinput" />
			<a href="javascript:void(0)" id="submit_search" class="easyui-linkbutton c1" style='font-size:20px'>查询</a>
			<!-- <button style='font-size:21px'>搜索</button> -->
		</div>


		<table class="tablelist">
			<thead>
				<tr>
					<th>全选</th>
					<th>编号</th>
					<th>歌曲</th>
					<th>歌手</th>
					<th>专辑</th>
					<th>时长</th>
					<th>试听</th>
					<th>操作</th>
				</tr>
			</thead>
			<form id="form" action="<%=path%>/remove.do">
				<tbody id="tb">
					<c:forEach var="milktea" items="${list}">   
						<tr>                       
							<td><input type="checkbox" value="${milktea.id }" name="id" /></td>
							<td id="td">${milktea.id }</td>
							<td>${milktea.name }</td>
							<td>${milktea.type }</td>
							<td>${milktea.price }</td>
							<td>${milktea.num }</td>
							<td><a href="<%=path%>/playmusic.html">在线试听</a></td>
							<td><a href="#" class="tablelink"
								onclick="update(${milktea.id })">修改</a> </td>
								
						</tr>
					</c:forEach>
				</tbody>
			</form>
		</table>

		<div class="tip">
			<div class="tiptop">
				<span>提示信息</span><a></a>
			</div>

			<div class="tipinfo">
				<span><img src="<%=path%>/images/ticon.png" /></span>
				<div class="tipright">
					<p id="pn">是否确认对信息的修改 ？</p>
					<cite>如果是请点击确定按钮 ，否则请点取消。</cite>
				</div>
			</div>

			<div class="tipbtn">
				<input id="intSure" type="button" class="sure" value="确定" />&nbsp;
				<input name="" type="button" class="cancel" value="取消" />
			</div>

		</div>

	</div>
	
	<script>
	var byId=0;
	function update(id){
		byId =id;
		$(".tip").fadeIn(200);
	}
	$("#intSure").click(function(){
		window.location.href="<%=path%>/showById.do?id="+ byId;
						});
	</script>

	<script type="text/javascript">
		$('.tablelist tbody tr:odd').addClass('odd')};
	</script>

	<div style="display:none">
		<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
			language='JavaScript' charset='gb2312'></script>
	</div>
</body>
</html>
