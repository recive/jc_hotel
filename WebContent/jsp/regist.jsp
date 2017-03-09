<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.jc_hotel.bean.Users" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

//获取session中的数据

Users user = (Users)request.getSession().getAttribute("user");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link type="text/css" rel="stylesheet" href="../css/common.css" />
<link type="text/css" rel="stylesheet" href="../css/index.css" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>北京空港锦程宾馆</title>
</head>
<body>
	<div class="top">
		<div class="top_login">
			<div class="top_login_regist">
				欢迎访问北京空港锦程宾馆
				<%
					if(null != user){
				%>		
						锦程宾馆欢迎您！${user.username}
						<a href="user/getUser.shtml?uid=${user.uid}">查看个人资料</a>
				<%
					}else{
				%>
					<a href="jsp/login.jsp" style="color:red">登录</a>
					<a href="jsp/regist.jsp">注册</a>
				<%		
					}
				%>
			</div>
		</div>
		<div class="top_head">
			<div class="top_head_logo">
				<img src="../img/logo.jpg" alt="北京空港锦城宾馆" title="jc_hotel" width="350px" height="80px">
			</div>
			<div class="top_head_navigation">
				<ul class="top_head_navigation_ul">
					<li class="top_head_navigation_li"><a href="../index.jsp">首页</a></li>
					<li class="top_head_navigation_li"><a href="aboutUs.jsp">关于我们</a></li>
					<li class="top_head_navigation_li"><a href="product.jsp">产品介绍</a></li>
					<li class="top_head_navigation_li"><a href="address.jsp">交通位置</a></li>
				</ul>
			</div>
		</div>
		
	</div>
	<div class="content">
		<div class="content_left">
			<div class="content_left_contact" >
				<p><b style="font-size: 14px;">联系方式</b></p>
				<ul>
					<li>电话：<b>010-64586462</b></li>
					<li>QQ：<b>123456789</b></li>
				</ul>
			</div>
			<div class="content_left_process">
				<p><b style="font-size: 14px;">预定流程</b></p>
				<img alt="预定流程" src="../img/ydlc.png" />
			</div>
		</div>
		<div class="content_right">
			<form action="../user/addUser.shtml" method="post">
				<table>
					<tr>
						<td>昵称：</td>
						<td><input type="text" name="username"/></td>
					</tr>
					<tr>
						<td>用户名：</td>
						<td><input type="text" name="account"/></td>
					</tr>
					<tr>
						<td>密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
						<td><input type="text" name="password"/></td>
					</tr>
					<tr>
						<td>再次输入密码：</td>
						<td><input type="text" name="repassword" /></td>
					</tr>
					<tr>
						<td>电话：</td>
						<td><input type="text" name="tellPhone"></td>
					</tr>
					<tr>
						<td>E-mail：</td>
						<td><input type="text" name="email"></td>
					</tr>
					<tr>
						<td>QQ：</td>
						<td>
							<input type="text" name="QQ">
						</td>
					</tr>
					<tr>
						<td>
							<input type="submit" value="注册"/>
						</td>
						<td>
							<input type="reset" value="取消"/>
						</td>
					</tr>
				</table>
			</form>
		</div>
		
	</div>
	<div class="bottom">
		<div class="bottom_classification">
			<div class="bottom_classification_div">
				<ul class="bottom_classification_ul">
					<li>关于我们</li>
					<li class="bottom_classification_li" target="_blank"><a href="#">关于北京空港锦程宾馆</a></li>
					<li class="bottom_classification_li" target="_blank"><a href="#">联系我们</a></li>
				</ul>
				<ul class="bottom_classification_ul">
					<li>商务合作</li>
					<li class="bottom_classification_li"target="_blank"><a href="#">招商加盟</a></li>
				</ul>
				<ul class="bottom_classification_ul">
					<li>宾馆地址</li>
					<li class="bottom_classification_li" target="_blank"><a href="#">宾馆详细地址</a></li>
				</ul>
				<ul class="bottom_classification_ul">
					<li>合作伙伴</li>
					<li class="bottom_classification_li"><a href="http://www.ctrip.com/" target="_blank">携程旅行网</a></li>
					<li class="bottom_classification_li"><a href="http://www.qunar.com/" target="_blank">去哪儿网</a></li>
					<li class="bottom_classification_li"><a href="http://hotel.elong.com/" target="_blank">艺龙旅行网</a></li>
				</ul>
			</div>
		</div>
		<div class="bottom_copyright">
			<p class="bottom_copyright_p">
				<span>版权所有:北京空港锦程宾馆</span>
				 地址： 朝阳区首都机场道口华谊桥西（空港花园酒店旁）</br>
					联系电话：022-29395865 QQ：123456789 邮箱：lbxjyw@126.com 技术支持：<a href="#">菜鸟recive</a></br>
					ICP备案号：京ICP证060961号
			</p>
		</div>
	</div>
	
	
	
	
	
	
<script src="../js/index.js" type="text/javascript"></script>
</body>
</html>