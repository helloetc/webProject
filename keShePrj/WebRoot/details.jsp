<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="DAO.ItemsDao"%>
<%@ page import="entityPackge.*"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">



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
<link rel="stylesheet" href="./css/detalis.css">
<title>商品详情</title>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
  <%
	String myTabel = (String) session.getAttribute("usernumber");
			if (myTabel != null) {
				
			} else {
				response.sendRedirect("unLogDetails.jsp");
			}
	
 %>
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
					<i></i> <input type="text" placeholder="精品男装"> <a href="#"><span></span>
					</a>
				</div>

				<a class="m-shopcart" href="userCar.jsp"> <i class="shop-cart"></i> <span
					class="contont">购物车</span> </a>
			</div>
		</div>

	</div>
	<div id="top">
		<div class="tabbar">
			<div class="wrap">
				<div class="category" id="show_class">
					<div class="lineicon">
						<i class="first"></i> <i></i> <i></i>
					</div>
					<span id="all_class">所有分类</span>

					<ul class="categories" id="goods_class">
						<li><a href="#"> <img src="./img/mrcz-active.png" alt="">
								<img class="active" src="./img/mrcz.png" alt=""> <span>美容彩妆</span>
								<span class="font">&#xe658;</span> </a>
						</li>
						<li><a href="#"> <img src="./img/myed-active.png" alt="">
								<img class="active" src="./img/myed.png" alt=""> <span>母婴儿童</span>
								<span class="font">&#xe658;</span> </a>
						</li>
						<li><a href="#"> <img src="./img/yybj-active.png" alt="">
								<img class="active" src="./img/yybj.png" alt=""> <span>营养保健</span>
								<i></i> </a>
						</li>
						<li><a href="#"> <img src="./img/smjd-active.png" alt="">
								<img class="active" src="./img/smjd.png" alt=""> <span>数码家电</span>
								<i></i> </a>
						</li>
						<li><a href="#"> <img src="./img/grxh-active.png" alt="">
								<img class="active" src="./img/grxh.png" alt=""> <span>个人洗护</span>
								<i></i> </a>
						</li>
						<li><a href="#"> <img src="./img/fsxx-active.png" alt="">
								<img class="active" src="./img/fsxx.png" alt=""> <span>服饰鞋靴</span>
								<i></i> </a>
						</li>
						<li><a href="#"> <img src="./img/ydhw-active.png" alt="">
								<img class="active" src="./img/ydhw.png" alt=""> <span>运动户外</span>
								<i></i> </a>
						</li>
						<li><a href="#"> <img src="./img/sbps-active.png" alt="">
								<img class="active" src="./img/sbps.png" alt=""> <span>手表配饰</span>
								<i></i> </a>
						</li>
						<li><a href="#"> <img src="./img/qs-active.png" alt="">
								<img class="active" src="./img/qs.png" alt=""> <span>轻奢</span>
								<i></i> </a>
						</li>
						<li><a href="#"> <img src="./img/jjsh-active.png" alt="">
								<img class="active" src="./img/jjsh.png" alt=""> <span>家居生活</span>
								<i></i> </a>
						</li>
						<li><a href="#"> <img src="./img/hqms-active.png" alt="">
								<img class="active" src="./img/hqms.png" alt=""> <span>环球美食</span>
								<i></i> </a>
						</li>

					</ul>
				</div>
				<ul class="list">
					<li><a class="active" href="#">首页</a>
					</li>
					<li><a href="#">国家馆</a>
					</li>
					<li><a href="#">全球逛</a>
					</li>
					<li><a href="#">工厂店</a>
					</li>
					<li><a href="#">品质奶粉</a>
					</li>
					<li><a href="#">人气面膜</a>
					</li>
					<li><a href="#">充值</a>
					</li>

				</ul>
			</div>
		</div>

		<%
			int id=  Integer.parseInt(  request.getParameter("id"));
				           
			ArrayList<Item> list = new ArrayList<Item>();

			ItemsDao allItems = new ItemsDao();
			list = allItems.getAllItems();
			Item item = null;

			for (int i = 0; i < list.size(); i++) {
				 item = list.get(i);
				int s = item.getId();
				if(id==s){
				    break;
				 }
			}
		%>


		<div id="details_show">
			<div id="details_img">
				<img src="./img2/<%=item.getImg() %>" alt="">
			</div>

			<div id="details_about">
				<h3>标题:<%=item.getName() %></h3>
				<p>产地:<%=item.getCity() %></p>
				<p>关于:<%=item.getAbout() %></p>
				<h3>￥:<%=item.getPrice() %></h3>
				<input type="button" value="添加购物车" onclick="fun(<%=id%>,'<%=item.getImg() %>','<%=item.getName() %>','<%=item.getAbout() %>','<%=item.getPrice() %>')">
				
				<span id="tips"></span>
			</div>

		</div>

	</div>

	<script type="text/javascript" src="./jq/jquery-2.2.4.min.js"></script>
	<script>
     $(function(){
     
        
     });
     
        function fun(id,img,name,about,price){
          console.log(id)
             
            
            $.ajax({
                   url:'cartAddServlet',
                   type:'post',
                   data:{'id':id,'img':img,'name':name,'about':about,'price':price},
                   dataType:'text',
                   success:function(data){
                       $("#tips").text(data);
                   }
               });
 
         }
            
    </script>

</body>
</html>
