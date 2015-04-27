<%@page language="java" import="mo.*" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%
	int id=Integer.parseInt(request.getParameter("id"));
	Adv adv=new Adv().selectedId(id);
	
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
        	<form method="post" class="form-x" action="updateadv" ENCTYPE="multipart/form-data">
                
                <div class="form-group">
                    <div class="label"><label for="sitename">广告名</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="name" size="50"  value="<%=adv.getName()%>"  placeholder="用户名" />
                    	<input type="hidden" class="input" id="sitename" name="id" size="50"  value="<%=adv.getId()%>"  placeholder="ID" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">图片</label></div>
                    <div class="field">
						<input type="file"  id="sitename" name="image1"  placeholder="图片" />
                    	<input type="file"  id="sitename" name="image2"  placeholder="图片" />
                    	<input type="file"  id="sitename" name="image3"  placeholder="图片" />
                    	<input type="file"  id="sitename" name="image4"  placeholder="图片" />
                    	<input type="file"  id="sitename" name="image5"  placeholder="图片" />
                    	<input type="hidden" name="image" value="<%=adv.getImage()%>">                    
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">位置提示</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="loc" size="50"  value="<%=adv.getLoc()%>" placeholder="位置提示" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">链接</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="link" size="50"  value="<%=adv.getLink()%>" placeholder="链接" />
                    </div>
                </div>
                
                
                <div class="form-button"><button class="button bg-main" type="submit" href=" updateuser">修改</button></div>
            </form>
        </div>
      </div>
    </div>
</div>

</body>
</html>