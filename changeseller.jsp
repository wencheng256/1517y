<%@page language="java" import="mo.*" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%
	int id=Integer.parseInt(request.getParameter("id"));
	Seller se=new Seller().selectedId(id);
	
	role ro= new role();
	Iterator<role> it= ro.selectAll();
	 
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
        	<form method="post" class="form-x" action="updateseller">
                <div class="form-group">
                   <div class="form-group">
                    <div class="label"><label for="sitename">用户名</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="name" size="50"  value="<%=se.getName()%>"  placeholder="用户名" />
                    	<input type="hidden" class="input" id="sitename" name="id" size="50"  value="<%=se.getId()%>"  placeholder="商品名称" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">姓名</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="realname" size="50"  value="<%=se.getRealname()%>" placeholder="姓名" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">密码</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="password" size="50"  value="<%=se.getPassword()%>" placeholder="密码" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">电话号码</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="phonenum" size="50"  value="<%=se.getPhonenum()%>" placeholder="电话号码" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">邮箱</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="postbox" size="50"  value="<%=se.getPostbox()%>" placeholder="邮箱" />
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="label"><label for="sitename">角色</label></div>
                    <div class="field">
                    	<select name="role">
                    	<%while(it.hasNext())
                    	{ role rol=it.next();%>	
                    		<option value="<%=rol.getId()%>" <%if(rol.getId()==se.getRole()) out.println("selected='selected'"); %>><%=rol.getName()%></option>
                    	<%} %>
                    	</select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">商品简介</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="productinf" size="500"  value="<%=se.getProductinf()%>" placeholder="商品简介" />
                    </div>
                </div>
                <div class="form-button"><button class="button bg-main" type="submit" >修改</button></div>
            </form>
        </div>
      </div>
    </div>
</div>

</body>
</html>