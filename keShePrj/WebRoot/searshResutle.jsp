<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="DAO.ItemsDao"%>
<%@ page import="entityPackge.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>考拉首页</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="./css/common.css">
<link rel="shortcut icon" href="./img/favico.ico">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/top.css">
<link rel="stylesheet" href="./css/main.css">
<link rel="stylesheet" href="./css/footer.css">
<style>
.show_goods {
	float: left;
	margin-left: 20px;
	margin-top: 25px;
	width:262px;
	height:310px;
	border:solid 1px;
}

.show_goods  p {
	font-size: 15px;
	color: black;
	height:23px;
	 overflow: hidden;
}

.show_goods span {
	font-size: 17px;
	color: red;
}
.goods_img img{
 	width:262px;
 	 overflow: hidden;

}
</style>

</head>

<body>
	<div id="header">
		<!-- 广告 -->
		<div class="ad">
			<a href="#"> <img src="./img/ad-banner.jpg" alt="" width="1920px"
				height="80px"> </a>
		</div>
		<!-- 导航 -->
		<div class="nav">
			<div class="wrap">
				<div class="nav-left">
					<div class="welcome">考拉欢迎你！</div>

					<div class="account">
						<a href="log.jsp">登录</a> <a href="register.jsp">免费注册</a> <a class="phone" href="#">手机考拉
							<div class="twocode">
								<span class="arrow"></span> <img src="./img/twocode.png" alt="">
								<span class="txt"> 新人下载APP <br> 领10元无门槛红包 </span>

							</div> </a>


					</div>
				</div>

				<div class="nav-right">
					<div class="group1">
						<a href="#">个人中心 <i></i> </a> <a href="#">客户服务 <i></i> </a> <a
							href="#">充值中心 <i></i> </a> <a href="#">消费者权益 <i></i> </a> <a
							href="#">更多 <i></i> </a>
					</div>
					<div class="group2">
						<a href="#">每日签到</a> <a href="#">我的订单</a>
					</div>
				</div>


			</div>
		</div>

		<!-- logo-search-cart -->
		<div class="operation">
			<div class="wrap">
				<a href="#"> <img src="./img/logo-new.png" alt=""> </a>
				<div class="search">
					<i></i> <input type="text" placeholder="精品男装" id="searshInput"> <span id="toSearsh" onclick="searsh()"></span>
					
				</div>

				<a class="m-shopcart" href="#"> <i class="shop-cart"></i> <span
					class="contont">购物车</span> </a>
			</div>
		</div>

	</div>
	<div id="top">

		<div class="tabbar">
			<div class="wrap">
				<div class="category">
					<div class="lineicon">
						<i class="first"></i> <i></i> <i></i>
					</div>
					<span>所有分类</span>

					<ul class="categories">
						<li><a href="myClass.jsp?checkClass=美妆"> <img src="./img/mrcz-active.png" alt="">
								<img class="active" src="./img/mrcz.png" alt=""> <span>美容彩妆</span>
								<span class="font">&#xe658;</span> </a></li>
						<li><a href="myClass.jsp?checkClass=母婴"> <img src="./img/myed-active.png" alt="">
								<img class="active" src="./img/myed.png" alt=""> <span>母婴儿童</span>
								<span class="font">&#xe658;</span> </a></li>
						<li><a href="myClass.jsp?checkClass=健康"> <img src="./img/yybj-active.png" alt="">
								<img class="active" src="./img/yybj.png" alt=""> <span>营养保健</span>
								<i></i> </a></li>
						<li><a href="myClass.jsp?checkClass=数码"> <img src="./img/smjd-active.png" alt="">
								<img class="active" src="./img/smjd.png" alt=""> <span>数码家电</span>
								<i></i> </a></li>
						<li><a href="myClass.jsp?checkClass=个护"> <img src="./img/grxh-active.png" alt="">
								<img class="active" src="./img/grxh.png" alt=""> <span>个人洗护</span>
								<i></i> </a></li>
						<li><a href="myClass.jsp?checkClass=服饰"> <img src="./img/fsxx-active.png" alt="">
								<img class="active" src="./img/fsxx.png" alt=""> <span>服饰鞋靴</span>
								<i></i> </a></li>
						<li><a href="myClass.jsp?checkClass=户外"> <img src="./img/ydhw-active.png" alt="">
								<img class="active" src="./img/ydhw.png" alt=""> <span>运动户外</span>
								<i></i> </a></li>
						<li><a href="myClass.jsp?checkClass=配饰"> <img src="./img/sbps-active.png" alt="">
								<img class="active" src="./img/sbps.png" alt=""> <span>手表配饰</span>
								<i></i> </a></li>
						<li><a href="myClass.jsp?checkClass=轻奢"> <img src="./img/qs-active.png" alt="">
								<img class="active" src="./img/qs.png" alt=""> <span>轻奢</span>
								<i></i> </a></li>
						<li><a href="myClass.jsp?checkClass=家居"> <img src="./img/jjsh-active.png" alt="">
								<img class="active" src="./img/jjsh.png" alt=""> <span>家居生活</span>
								<i></i> </a></li>
						<li><a href="myClass.jsp?checkClass=美食"> <img src="./img/hqms-active.png" alt="">
								<img class="active" src="./img/hqms.png" alt=""> <span>环球美食</span>
								<i></i> </a></li>

					</ul>
				</div>
				<ul class="list">
					<li><a class="active" href="index1.jsp">首页</a></li>
					<li><a href="#">国家馆</a></li>
					<li><a href="#">全球逛</a></li>
					<li><a href="#">工厂店</a></li>
					<li><a href="#">品质奶粉</a></li>
					<li><a href="#">人气面膜</a></li>
					<li><a href="#">充值</a></li>

				</ul>
			</div>
		</div>

		<div class="banner">
			<a class="swiper" href="#"> <img src="./img/banner.jpg" alt="">
				<span class="control wrap"> <i class="prev"></i> <i
					class="next"></i> </span> <span class="dots wrap"> <span
					class="dot"> <i class="active"></i> <i></i> <i></i> <i></i>

				</span> </span> </a>
			<div class="service">
				<ul class="wrap">

					<li><a href="#">考拉直营</a></li>
					<li><a href="#">全球直营</a></li>
					<li><a href="#">假一赔十</a></li>
					<li><a href="#">售后无忧</a></li>

				</ul>
				<div class="blur"></div>

			</div>
		</div>

	</div>
	<div id="main">

		<%
			ArrayList<Item> list = new ArrayList<Item>();
			
			String searshWord = request.getParameter("searshWord");
			ItemsDao allItems = new ItemsDao();
			
			list = allItems.getSearshItems(searshWord);

			for (int i = 0; i < list.size(); i++) {
				Item item = list.get(i);
		%>

		<a href="./details.jsp?id=<%=item.getId()%>">
			<div class="show_goods">
				<div class="goods_img">
					<center>
						<img alt="" src="./img2/<%=item.getImg()%>  ">
					</center>
				</div>

				<p>
					商品介绍：
					<%=item.getAbout()%>
				</p>

				<span>￥ <%=item.getPrice()%></span>
			  </div> 
		</a>




		<%
			}
		%>



	</div>
	<div style="display: block; clear: both;"></div>

	<div class="sidebar">
		<a class="sidebar-item" href="#">签到</a> <a class="sidebar-item"
			href="#">购物车</a> <a class="sidebar-item" href="#">APP</a> <a
			class="sidebar-item" href="javascript:;">TOP</a>

	</div>
	<div id="footer">
		<div class="foot-top">
			<div class="list">
				<div class="list-item">
					<div class="btnicon">正</div>
					<strong>正品承诺</strong> <span>正品保障 假一赔十</span>
				</div>
				<div class="list-item">
					<div class="btnicon">低</div>
					<strong>低价保障</strong> <span>缩减中间环节 确保低价</span>
				</div>
				<div class="list-item">
					<div class="btnicon">退</div>
					<strong>30天无忧退货</strong> <span>国内退货 售后无忧</span>
				</div>
				<div class="list-item">
					<div class="btnicon">邮</div>
					<strong>满88包邮</strong> <span>部分特殊商品除外</span>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript" src="./jq/jquery-2.2.4.min.js"></script>
	<script type="text/javascript">
		function searsh(){
			var searshWord  = $("#searshInput").val();
			console.log(searshWord);
			if(searshWord !="" &&searshWord !=null){
				 window.location.href="searshResutle.jsp?searshWord=" + searshWord ;
			}
			
		}
	</script>
	
</body>
</html>
