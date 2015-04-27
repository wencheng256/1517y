<%@page language="java" import="mo.*" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%
	int id=Integer.parseInt(request.getParameter("id"));
	Travel tra=new Travel().selectedId(id);
	City ci=new City();
	Iterator<City> itci=ci.selectAll();
	Seller se=new Seller();
	Iterator<Seller> itse=se.selectAll();
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
        	<form method="post" class="form-x" action="updatetravel"  ENCTYPE="multipart/form-data">
                <div class="form-group">
                    <div class="label"><label for="sitename">旅游项目名</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="name" size="50"  value="<%=tra.getName() %>" placeholder="旅游项目名" />
                    	<input type="hidden" class="input" id="sitename" name="id" size="50"  value="<%=tra.getId() %>" placeholder="Id" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">提示</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="tip" size="50" value="<%=tra.getTip() %>" placeholder="提示" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">价格</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="price" size="50"  value="<%=tra.getPrice() %>" placeholder="价格" />
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
                    	<input type="hidden" name="image" value="<%=tra.getImage()%>">
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">内容</label></div>
                    <div class="field">
                    
                    <textarea  type="text/plain"  name="content" id="editor"  style="width:900px;height:500px;"><%=tra.getContent() %></textarea>
                    
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">标签</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="label" size="50"  value="<%=tra.getLabel() %>" placeholder="标签" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">城市</label></div>
                    <div class="field">
                    	<select name="city">
                    	<%while(itci.hasNext()){
							City city=itci.next();                    		
                    		%>
                    		<option value="<%=city.getId()%>" <%if(city.getId()==tra.getCity()) out.println("selected='selected'"); %>> <%=city.getName() %></option>
                    		<%} %>
                    	</select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">卖家</label></div>
                    <div class="field">
                    	<select name="seller">
                    	<%while(itse.hasNext()){
							Seller seller=itse.next();                    		
                    		%>
                    		<option value="<%=seller.getId()%>" <%if(seller.getId()==tra.getSeller())out.println("selected='selected'"); %>> <%=seller.getName() %></option>
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

<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor("editor");
 </script>

</body>
</html>