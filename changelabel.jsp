<%@page language="java" import="mo.*" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%
	int id=Integer.parseInt(request.getParameter("id"));
	Label lab=new Label().selectedId(id);
	
	Sort sort=new Sort();
	Iterator<Sort> it=sort.selectAll();
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
        	<form method="post" class="form-x" action="updatelabel">
                <div class="form-group">
                    <div class="label"><label for="sitename">标签</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="name" size="50" value="<%=lab.getName() %>" placeholder="标签名" />
                    	<input type="hidden" class="input" id="sitename" name="id" size="50" value="<%=lab.getId()%>" placeholder="Id" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">分类</label></div>
                    <div class="field">
                    	<select name="sort">
                    	<%while(it.hasNext()){
							Sort so=it.next();                    		
                    		%>
                    		<option value="<%=so.getId()%>" <%if(so.getId()==lab.getSort()) out.println("selected='selected'"); %>> <%=so.getName()%></option>
                    		<%} %>
                    	</select>
                    </div>
                </div>
                <div class="form-button"><button class="button bg-main" type="submit" ">修改</button></div>
            </form>
        </div>
      </div>
    </div>
</div>

</body>
</html>