<%@page language="java" import="mo.*" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%
	Adv adv=new Adv();
	Iterator<Adv> it=adv.selectAll();
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>拼图后台管理-后台管理</title>
    
    <script type="text/javascript" charset="utf-8" src="ue/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ue/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="ue/lang/zh-cn/zh-cn.js"></script>
    
    
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
        	<form method="post" class="form-x" action="addadv" ENCTYPE="multipart/form-data">
                <div class="form-group">
                    <div class="label"><label for="sitename">广告名</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="name" size="50" placeholder="广告名" />
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
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">提示位置</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="loc" size="50" placeholder="提示位置" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">链接</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="link" size="50" placeholder="链接" />
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