<%@page language="java" import="mo.*" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%
	role ro=new role();
	Iterator<role> itro=ro.selectAll();
	Action act=new Action();
	Iterator<Action> itact=act.selectAll();
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
        	<form method="post" class="form-x" action="addrole_action">
                <div class="form-group">
                    <div class="label"><label for="sitename">可否</label></div>
                    <div class="field">
                    	是<input type="radio" value="1" name="enable">否<input type="radio" value="0"  name="enable">
                    </div>
                </div>
                
                
               
                <div class="form-group">
                    <div class="label"><label for="sitename">角色</label></div>
                    <div class="field">
                    	<select name="role">
                    	<%while(itro.hasNext()){
							role rol=itro.next();                    		
                    		%>
                    		<option value="<%=rol.getId()%>"><%=rol.getName() %></option>
                    		<%} %>
                    	</select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">动作</label></div>
                    <div class="field">
                    	<select name="action">
                    	<%while(itact.hasNext()){
							Action action=itact.next();                    		
                    		%>
                    		<option value="<%=action.getId()%>"><%=action.getAction_name() %></option>
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