<%@ page language="java" import="mo.*,com.*" contentType="text/html; charset=utf-8" %>
<%MyLogger.start(); %>
<%
	Seller seller=(Seller)session.getAttribute("seller");
	if(seller!=null)
	{
		
		response.sendRedirect("index.jsp");
	}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>1517游后台管理-后台管理</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
    <script src="js/respond.js"></script>
    <script src="js/admin.js"></script>
    <link type="image/x-icon" href="/favicon.ico" rel="shortcut icon" />
    <link href="/favicon.ico" rel="bookmark icon" />

  </head>

<body>
<div class="container">
    <div class="line">
        <div class="xs6 xm4 xs3-move xm4-move">
            <br /><br />
            <div class="media media-y">
                <img src="images/logo.png" class="radius" alt="后台管理系统" />
            </div>
            <br /><br />
            <form action="login" method="post">
            <div class="panel">
                <div class="panel-head"><strong>1517游后台管理系统</strong></div>
                <div class="panel-body" style="padding:30px;">
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="text" class="input" name="realname" placeholder="姓名" />
                            <span class="icon icon-user"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="password" class="input" name="pass" placeholder="登录密码" />
                            <span class="icon icon-key"></span>
                        </div>
                    </div>
                </div>
                <div class="panel-foot text-center"><input type="submit" value="登录后台" class="button button-block bg-main text-big"></div>
            </div>
            </form>
            
        </div>
    </div>
</div>
 
</body>

</html>