<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	    <style>
        *{
            margin: 0;
            padding: 0;
        }
        #wrap{
            min-width: 1090px;
            width: 100%;
            border: solid;
        }
        #header{
            height: 80px;
           background-image: url(./img2/header_bg.jpg);
           background-size: 100% 100%;
           width: 100%;
        }
        #header2{
            height: 100px;
           background-image: url(./img2/header_bg2.jpg);
           background-size: 100% ;
           width: 100%;
        }
        #main{
            height: 600px;
            background-image: url(./img2/body_bg.jpg);
            background-size: 100% 100%;
            width: 100%;
            position: relative;
        }
        #footer{
            height: 152px;
            background-image: url(./img2/footer_img.jpg);
            width: 100%;
            background-size: 100% 100%;
        }
        #log{
            position: absolute;
            width: 350px;
            top: 100px;
            right: 180px;
            font-size: 1.2em;
            font-weight: bold;
            background-color: #fff;
        }
        #log_header{
            width: 100%;
            height: 52px;
            font-size: 1.2em;
            font-weight: bold;
            color: brown;
            text-align: center;
            line-height: 50px;
            background-color: rgb(200, 231, 231);
        }
        #log_footer{
            background: url(./img2/register_footer.jpg);
            height: 43px;
            background-size: 100% 100%;
            margin: 5px 0px 0px 0px;
        }
        #log_main{
            height: 210px;
            margin-top: 20px;
        }
        #log_main input:nth-child(1){
            margin-top: 20px;
            width: 190px;
            height: 30px;
        }
        #log_main input:nth-child(3){
            margin-top: 20px;
            height: 30px;
            width: 190px;
        }
        #log_main input:nth-child(5){
            margin-top: 20px;
            height: 30px;
            width: 200px;
            border-radius: 5px;
            border: none;
            background-color:  #e31436;
            font-size: 1.1em;
            margin-left: 60px;
        }
        #tips{
            text-align: center;
            font-size: 12px;
            color: red;
             margin-top: -35px;
             margin-left:40px
        }
    </style>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	

  </head>
  
  <body>
  <body>
    <div id="wrap">
        <header id="header"></header>
        <header id="header2"></header>
        <main id="main">
        
            <div id="log">
                <div id="log_header">手机登录</div>
                <div id="log_main">
                    <form action="">
                        <center>
                            账号：
                            <input type="text" name="username"id="username" >
                            <br>
                            密码：
                            <input type="password" id="password">
                            <br>
                            <input type="button" value="提交" onclick="sub()">
                        </center>
                      
                    </form>

                </div>
              <div id="tips"> </div>
                <div id="log_footer"></div>
            </div>
        </main>
        <footer id="footer"></footer>
    </div>
    
    <script type="text/javascript" src="./jq/jquery-2.2.4.min.js"></script>
    <script type="text/javascript">
    	 function sub(){
    	 
    	 var name = $("#username").val();
    	 var password = $("#password").val();
    	 
    	
    	 
          $.ajax({
              url:'logServlet',
              type:"post",
              data:{"username":name,"password":password},
              dataType:"text",
              success:function(data){
                 $('#tips').text(data);
                 console.log(data);
                 if(data == ""){
                 	 window.location.href = "index1.jsp";
                 }
              //  
                 
              }
              
          })
           console.log(name,password);
      }
    </script>
    
  </body>
</html>
