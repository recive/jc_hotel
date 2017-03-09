<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.jc_hotel.bean.Users" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

//获取session中的数据

Users user = (Users)request.getSession().getAttribute("user");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link type="text/css" rel="stylesheet" href="<%=basePath%>/css/common.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>/css/index.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>/css/service.css" />
<link rel="stylesheet" href="<%=basePath%>/css/orbit.css">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>北京空港锦程宾馆</title>
</head>
<body>
	<div id="demo2" class="jcContact">
     	<div class="jcConraper">
	         <!-- 自定义部分 -->
	         <div style=" background:url(img/c02.png) no-repeat 0 0; height:44px;"></div>
	         <ul>
	             <li style="font-size:20px; text-align:center; font-weight:bold; color:#ff6600; padding:15px 0 5px;">010-64586462</li>
	             <li style="background:url(img/c04.png) no-repeat center 0; height:140px;"></li>
	         </ul>
	         <div style="background:url(img/c05.png) no-repeat 0 0; height:11px;"></div>
	         <div style="line-height:22px; padding:5px 18px 25px;">
	             <span style="display:block; float:left; height:22px; line-height:22px; font-size:13px; font-weight:bold; color:#555555;">Jc_hotel</span>
	             <a href="tencent://message/?uin=420360613" style="display:block; float:right; width:74px; height:22px; background:red; "><img src="img/c06.png" height="22" width="74" border="0" /></a>
	             <div class="clear"></div>
	         </div>
	         <div style="background:url(img/c07.png) no-repeat; height:13px;"></div>
	         <!-- 自定义部分 结束 -->
	     </div>
		 <div class="jcConBtn"></div>
	</div>
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
				<img src="img/logo.jpg" alt="北京空港锦城宾馆" title="jc_hotel" width="350px" height="80px">
			</div>
			<div class="top_head_navigation">
				<ul class="top_head_navigation_ul">
					<li class="top_head_navigation_li"><a href="#">首页</a></li>
					<li class="top_head_navigation_li"><a href="jsp/aboutUs.jsp">关于我们</a></li>
					<!--<li class="top_head_navigation_li"><a href="#">客房预订</a></li>-->
					<li class="top_head_navigation_li"><a href="jsp/product.jsp">产品介绍</a></li>
					<li class="top_head_navigation_li"><a href="jsp/address.jsp">交通位置</a></li>
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
				<img alt="预定流程" src="img/ydlc.png" />
			</div>
		</div>
		<div class="content_right">
			<div style="width: 680px; height: 382px; margin: 0 auto;">
				<div id="featured">
					<a class="orbit-item" href="" data-caption="#htmlCaption1"><img src="img/beauty1.jpg" alt="img1"></a>
					<a class="orbit-item" href="" data-caption="#htmlCaption2"><img src="img/beauty2.jpg" alt="img1"></a>
					<a class="orbit-item" href="" data-caption="#htmlCaption3"><img src="img/beauty3.jpg" alt="img1"></a>
					<a class="orbit-item" href="" data-caption="#htmlCaption4"><img src="img/beauty4.jpg" alt="img1"></a>
				</div>
				<span class="orbit-caption" id="htmlCaption1">美丽的海景</span>
				<span class="orbit-caption" id="htmlCaption2">还想再去一次</span>
				<span class="orbit-caption" id="htmlCaption3">令人心旷神怡的地方</span>
				<span class="orbit-caption" id="htmlCaption4">这样的天空，这样的美食</span>
			</div>	
			
			<div class="content_right_article">
				<table>
					<tr>
						<td>
							<b style="font-size: 14px;">宾馆简介</b>
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京空港锦程宾馆（首都机场原空港花园酒店 Airport Jincheng Hotel），是一家经济实惠型商务宾馆。坐落于首都机场道口华谊桥西，交通便捷，地理位置优越。紧邻机场高速，距1号2号3号航站楼仅有5分钟的车程，新国展8分钟，市中心15分钟。 宾馆周边大型购物 、餐饮及休闲娱乐场所齐全。宾馆中式的装修风格、环保的实木家具、整洁的房间，高效的对客服务，给您焕然一新的感觉和家一样的温暖，是您出差旅游，商务洽谈，生活休闲的理想场所。宾馆每天都有班车来往于机场航站楼，为广大宾客提供免费接送服务。我们本着诚信经营，安全舒适的服务理念和细致入微的信念宗旨，酒店全体员工将以饱满的热情欢迎您的光临，会让您有一个美好的旅行。 宾馆提供旅游咨询服务、票务预订、卫星电视、公共区域免费Wi-Fi、送餐服务、叫醒服务、停车服务、机场免费班车接送机等服务
						</td>
					</tr>
					<tr>
						<td>
							<b style="font-size: 14px;">开业时间：</b>2012年
						</td>
					</tr>
					<tr>
						<td>
							<b style="font-size: 14px;">房间数量（间）：</b>40
						</td>
					</tr>
					
					<tr>
						<td>
							<b>周围环境：</b>距离机场10分钟脚程，我宾馆近期将会有配套餐厅开放，欢迎光临！
						</td>
					</tr>
				</table>
			</div>
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
	
	
	
<script src="js/index.js" type="text/javascript"></script>	
<script type="text/javascript" src="js/jquery-1.8.3.min.js" ></script>
<script src="js/jQuery-jcContact.js" type="text/javascript"></script>
<script src="js/jquery.orbit.min.js"></script>
<script>
	$(function(){
		$('#demo2').jcContact({
			speed:700,
			position:'top',
			posOffsetY : 50,
			btnPosition : 'top',
			btnPosoffsetY : 44 ,
			float:'right',
			Event : "mouseover"			  
		});
	});
</script>
<script>
$(window).load(function() {
	$('#featured').orbit({
		bullets : true,
		startClockOnMouseOut : true,
		captionAnimation : 'slideOpen'
	});
});
</script>
</body>
</html>