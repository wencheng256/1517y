<%@page language="java" import="mo.*" import="java.util.Iterator" contentType="text/html; charset=UTF-8" %>
<%!Ticket ticket = new Ticket(); %>
<%!int size=20; %>
<%int now=Integer.parseInt(request.getParameter("page")==null?"1":request.getParameter("page")); %>
<%int start=(now-1)*size;%>
<%Iterator<Ticket> it=ticket.selectAll(start, size); %>
<%int count=ticket.getCount(); %>
<%int countpage=count%size==0?count/size:count/size+1; %>
<%int prev=now==1?1:now-1;
  int next=now==countpage?now:now+1;
%>

<!DOCTYPE html>
<html lang="zh-cn">
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
            <a href="addticket.jsp"><input type="button" class="button button-small border-green" value="添加门票" /></a>
            <input type="button" class="button button-small border-yellow" value="批量删除" />
            <input type="button" class="button button-small border-blue" value="回收站" />
        </div>
        <table class="table table-hover">
        	<tr><th width="45">选择</th><th width="120">旅游项目名</th><th width="*">提示</th><th width="*">价格</th><th width="*">图片</th><th width="*">内容</th><th width="*">标签</th><th width="*">所属城市</th><th width="*">卖家</th><th width="100">操作</th></tr>
        	<%while(it.hasNext()) {
        		Ticket ti=it.next();
        	%>
            <tr><td><input type="checkbox" name="id" value="1" /></td><td><%=ti.getName()%></td><td><%=ti.getTip()%></td><td><%=ti.getPrice()%></td><td><%=ti.getImage()%></td><td><%=ti.getContent()%></td><td><%=ti.getLabel()%></td><td><%=ti.getCityname()%></td><td><%=ti.getSellername()%></td><td><a class="button border-blue button-little" href="changeticket.jsp?id=<%=ti.getId() %>">修改</a> <a class="button border-yellow button-little" href=" deleteticket?id=<%=ti.getId() %>" >删除</a></td></tr>
            <%} %>
        </table>
        <div class="panel-foot text-center">
            <ul class="pagination"><li><a href="ticket.jsp?page=<%=prev%>">上一页</a></li></ul>
            <ul class="pagination pagination-group">
            <%
            	int i=1;
            	int maxpage=countpage>5?5:countpage;
            	while(i<=maxpage){
            %>
                <li><a href="ticket.jsp?page=<%=i%>" <%if(i==now){out.println("class='active'");} %>><%=i %></a></li>
            <%
            	i++;
            	} %>
            	<li><a href="">…</a></li>
            </ul>
            <ul class="pagination"><li><a href="ticket.jsp?page=<%=next%>">下一页</a></li></ul>
        </div>
    </div>
    </form>
    <br />
    <p class="text-right text-gray">基于<a class="text-gray" target="_blank" href="#">拼图前端框架</a>构建</p>
</div>

</body>
</html>