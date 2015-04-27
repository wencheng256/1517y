<%@page language="java" import="mo.*" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%
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
        	<form method="post" class="form-x" action="addticket"  ENCTYPE="multipart/form-data">
                <div class="form-group">
                    <div class="label"><label for="sitename">门票名</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="name" size="50" placeholder="门票名" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">提示</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="tip" size="50" placeholder="提示" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">价格</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="price" size="50" placeholder="价格" />
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
                    <div class="label"><label for="sitename">内容</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="content" size="50" placeholder="内容" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">标签</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="label" size="50" placeholder="标签" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">城市</label></div>
                    <div class="field">
                    	<select name="city">
                    	<%while(itci.hasNext()){
							City city=itci.next();                    		
                    		%>
                    		<option value="<%=city.getId()%>"><%=city.getName() %></option>
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
                    		<option value="<%=seller.getId()%>"><%=seller.getName() %></option>
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