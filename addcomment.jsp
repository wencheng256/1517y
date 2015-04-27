<%@page language="java" import="mo.*" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%
	User user=new User();
	Iterator<User> ituser=user.selectAll();
	Travel tra=new Travel();
	Iterator<Travel> ittra=tra.selectAll();
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>拼图后台管理-后台管理</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <link type="image/x-icon" href="/favicon.ico" rel="shortcut icon" />
    <link href="/favicon.ico" rel="bookmark icon" />
</head>

<body>
<%@include file="content.jsp" %>

<div class="admin">

    <div class="tab">
      <div class="tab-body">
        <br />
        <div class="tab-panel active" id="tab-set">
        	<form method="post" class="form-x" action="addcomment">
                <div class="form-group">
                    <div class="label"><label for="sitename">标题</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="name" size="50" placeholder="标题" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">内容</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="content" size="50" placeholder="内容" />
                    </div>
                </div>
                
               
                <div class="form-group">
                    <div class="label"><label for="sitename">用户</label></div>
                    <div class="field">
                    	<select name="user">
                    	<%while(ituser.hasNext()){
							User use=ituser.next();                    		
                    		%>
                    		<option value="<%=use.getId()%>"><%=use.getName() %></option>
                    		<%} %>
                    	</select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">旅游项目</label></div>
                    <div class="field">
                    	<select name="travel">
                    	<%while(ittra.hasNext()){
							Travel travel=ittra.next();                    		
                    		%>
                    		<option value="<%=travel.getId()%>"><%=travel.getName() %></option>
                    		<%} %>
                    	</select>
                    </div>
                </div>
                <div class="form-button"><button class="button bg-main" type="submit">提交</button></div>
            </form>
        </div>
      </div>
    </div>
</div>

</body>
</html>