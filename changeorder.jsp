<%@page language="java" import="mo.*" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%
	int id=Integer.parseInt(request.getParameter("id"));
	Order order=new Order().selectedId(id);
	
	User user=new User();
	Iterator<User> ituser=user.selectAll();
	
	Travel tra=new Travel();
	Iterator<Travel> ittra=tra.selectAll();
	
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
        	<form method="post" class="form-x" action="updateorder">
                <div class="form-group">
                    <div class="label"><label for="sitename">订单名</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="name" size="50"  value="<%=order.getName() %>" placeholder="订单名" />
                    	<input type="hidden" class="input" id="sitename" name="id" size="50"  value="<%=order.getId() %>" placeholder="Id" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">价格</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="price" size="50" value="<%=order.getPrice() %>" placeholder="价格" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">状态</label></div>
                    <div class="field">
                    	<input type="text" class="input" id="sitename" name="state" size="50" value="<%=order.getState() %>" placeholder="状态" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">卖家</label></div>
                    <div class="field">
                    	<select name="seller">
                    	<%while(itse.hasNext()){
							Seller seller=itse.next();                    		
                    		%>
                    		<option value="<%=seller.getId()%>" <%if(seller.getId()==order.getSeller()) out.println("selected='selected'"); %>> <%=seller.getName() %></option>
                    		<%} %>
                    	</select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label"><label for="sitename">旅游项目</label></div>
                    <div class="field">
                    	<select name="travel">
                    	<%while(ittra.hasNext()){
							Travel travel= ittra.next();                    		
                    		%>
                    		<option value="<%=travel.getId()%>" <%if(travel.getId()==order.getTravel())out.println("selected='selected'"); %>> <%=travel.getName() %></option>
                    		<%} %>
                    	</select>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="label"><label for="sitename">用户</label></div>
                    <div class="field">
                    	<select name="user">
                    	<%while(ituser.hasNext()){
							User us=ituser.next();                    		
                    		%>
                    		<option value="<%=us.getId()%>" <%if(us.getId()==order.getUser()) out.println("selected='selected'"); %>> <%=us.getName() %></option>
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