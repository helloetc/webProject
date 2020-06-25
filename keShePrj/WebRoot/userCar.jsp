<%@page import="java.sql.ResultSet"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="DAO.*"%>
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

<title>购物车</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
* {
	margin: 0;
	padding: 0;
}

.show {
	width: 90%;
	border:solid 1px;
}
.show::after{
            content: "";
            display: block;
            clear: both;
        }
.img_about{
	margin-left:50px;
}

.img,.about {
	float: left;
	height: 100px;
}

.img {
	width: 100px;
	height: 100px;
	background-color: #ccc;
	overflow: hidden;
}
.img img{
	width: 100%;
	height: 100%;
	
}

.about {
	width: 260px;
	height: 100px;
	overflow: hidden;
	background-color: burlywood;
}

.about span {
	font-size: 1.2em;
	color: red;
}

.del button {
	float: left;
	/* height: 100px; */
	margin-top: 72px;
	background-color: crimson;
	color: #fff;
}
</style>

</head>

<body>
	<div id="wrap">
		<%
		double allPrice = 0;
			selectTabel getAllCol = new selectTabel();
			String myTabel = (String) session.getAttribute("usernumber");
			// 		myTabel = "carttable" + myTabel;
		//	System.out.println("=============================");
		//	System.out.println(myTabel);

			ResultSet res = getAllCol.getAllCol(myTabel);
			if(myTabel != null){
			while (res.next()) {
			
			allPrice += Integer.parseInt(res.getString("price"));
		%>


		<div class="show">
		id:<%=res.getString("id")%>
			<div class="img_about">
				<div class="img">
					<img src="./img2/<%=res.getString("img")%>" alt="">
				</div>
				<div class="about">
					这是商品的关于信息：<br>
					<%=res.getString("about")%>

				</div>
				价格：<span><%=res.getString("price")%></span>
			</div>
			<div class="del">
				<button onclick="del(<%=res.getString("id")%>)" >删除商品</button>
			</div>

		</div>
	
		<%
			}
			}else{
				out.println("还没登录，请先登录");
			}
		%>
		
	    <div style="text-align: right; width:90%;  margin-bottom: 50px;">总价格：￥<%=allPrice%></div>	
	</div>
	
	 <script type="text/javascript" src="./jq/jquery-2.2.4.min.js"></script>
	 <script>
        function del(id){
        console.log(id);

            $.ajax({
                url:"cartDelServlet",
                type:"POST",
                data:{"id":id},
                dataType:"text",
                success:function(data){
                    window.location.href="userCar.jsp"
                }
            })
        }
    </script>
	
</body>
</html>
