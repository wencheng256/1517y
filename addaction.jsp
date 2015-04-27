<%@page language="java" import="mo.*" import="java.util.*" contentType="text/html; charset=utf-8" %>

<%
	Action act=new Action();
	Iterator<Action> it1=act.select_dir();
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
        	<form method="post" class="form-x" action="addaction">
                <div class="form-group">
                    <div class="label"><label for="sitename">动作名</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="action_name" size="50" placeholder="动作名" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">链接</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="link" size="50" placeholder="链接" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">可否</label></div>
                    <div class="field">
                    	是<input type="radio" value="1" name="enable">否<input type="radio" value="0"  name="enable">
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">有无父动作</label></div>
                    <div class="field">
                    	<select name="parent">
                    	<%while(it1.hasNext()){ Action a=it1.next(); %>
                    		<option value="<%=a.getId()%>"><%=a.getAction_name() %></option>
                    	<%} %>
                    	</select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">是否是文件夹</label></div>
                    <div class="field">
                    	是<input type="radio" value="1" name="is_dir">否<input type="radio" value="0"  name="is_dir">
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