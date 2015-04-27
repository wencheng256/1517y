<%@ page language="java" import="java.util.*,mo.*" pageEncoding="utf-8"%>
<%! Seller seller=new Seller(); %>
<%!int size=20; %>
<%int now=Integer.parseInt(request.getParameter("page")==null?"1":request.getParameter("page")); %>
<%int start=(now-1)*size;%>
<%Iterator<Seller> it=seller.selectAll(start,size); %>
<%int count=seller.getCount(); %>
<%int countpage=count%size==0?count/size:count/size+1; %>
<%int prev=now==1?1:now-1;
  int next=now==countpage?now:now+1;
%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>1517游后台管理-后台管理<%=countpage %></title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
    <script src="js/respond.js"></script>
    <script src="js/admin.js"></script>
    <link type="image/x-icon" href="/favicon.ico" rel="shortcut icon" />
    <link href="/favicon.ico" rel="bookmark icon" />

  </head>
  
  <body>
  <%@include file="content.jsp" %>
  
  <div class="admin">
	<form method="post">
    <div class="panel admin-panel">
    	<div class="panel-head"><strong>内容列表</strong></div>
        <div class="padding border-bottom">
            <input type="button" class="button button-small checkall" name="checkall" checkfor="id" value="全选" />
            <a href="addseller.jsp"><input type="button" class="button button-small border-green" value="添加卖家" /></a>
            <input type="button" class="button button-small border-yellow" value="批量删除" />
            <input type="button" class="button button-small border-blue" value="回收站" />
        </div>
        <table class="table table-hover">
        	<tr><th width="45">选择</th><th width="80">用户名</th><th width="80">姓名</th><th width="80">密码</th><th width="80">电话</th><th width="60">邮箱</th><th width="60">角色</th><th width="300">商品简介</th><th width="100">操作</th></tr>
        	<%while(it.hasNext()){
        		
        		Seller se= it.next();%>
        	 <tr><td><input type="checkbox" name="id" value="1" /></td><td><%=se.getName() %></td><td><%=se.getRealname() %></td><td><%=se.getPassword()%></td><td><%=se.getPhonenum() %></td><td><%=se.getPostbox() %></td><td><%=se.getRolename()%></td><td><%=se.getProductinf() %></td><td><a class="button border-blue button-little" href=" changeseller.jsp?id=<%=se.getId()%>">修改</a> <a class="button border-yellow button-little" href="deleteseller?id=<%=se.getId() %>" >删除</a></td></tr>
        
        <% }%>
        </table>
        <div class="panel-foot text-center">
            <ul class="pagination"><li><a href="seller.jsp?page=<%=prev%>">上一页</a></li></ul>
            <ul class="pagination pagination-group">
            <%
            	int i=1;
            	int maxpage=countpage>5?5:countpage;
            	while(i<=maxpage){
            %>
                <li><a href="seller.jsp?page=<%=i%>" <%if(i==now){out.println("class='active'");} %>><%=i %></a></li>
            <%
            	i++;
            	} %>
                
            
            	<li><a href="">…</a></li>
            </ul>
            <ul class="pagination"><li><a href="seller.jsp?page=<%=next%>">下一页</a></li></ul>
        </div>
    </div>
    </form>
    <br />
    
</div>

  </body>
</html>
