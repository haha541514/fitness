<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %><!-- jstl时间标签库 -->
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>课程</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
<link href="${pageContext.request.contextPath }/css/mycss6.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/SpryAssets_book/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath }/css/SpryAssets/SpryTabbedPanels.js" type="text/javascript"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript">
 $(function(){
	 var opname = '<%=session.getAttribute("opname")%>';
	if(opname != "" && opname != 'null'){
		$('#login').hide();
		$('#login1').show();
	}

})

</script>

</head>
 
<body>
  
<div class="wrap">

<div class="banner">
<div class="head">
         <jsp:include page="/jsp/tree.jsp"></jsp:include>
         <jsp:include page="/jsp/QQCommunicate.jsp"></jsp:include>
           	<div class="login" id="login"><a href="${pageContext.request.contextPath }/login.jsp">登录</a>丨<a href="${pageContext.request.contextPath }/register.jsp">注册</a> 
    		</div>
         <div id="login1" style="display: none;" class="login"><font color="#3AC0F5"><%=session.getAttribute("opname")%>,您已经登陆&nbsp;|<a href="${pageContext.request.contextPath }/userController/loginout.do">login out</a></font>
    	</div>
 </div>
<div class="banner_text">健身秘诀，互相学习分享的空间</div>
<div class="choice">
   <div class="choicebutton1"><a href="book.html">查看教程</a></div>
   <div class="choicebutton2"><a href="${pageContext.request.contextPath }/news/to_newsadd.do">分享教程</a></div>
</div> 
</div>

<div class="searchback">
 <!--   <input type="text" name="search" class="search"/> -->
</div>

<div class="cotent">

  <table border="1" cellpadding="10" cellspacing="0">
			<tr>
				<th>新闻标题</th>
				<th>发布时间</th>
				<th>发布类型</th>
				
				<th>发布人</th>
				<th>详情</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<!-- ${requestScope}操作的是request的作用域，相当于request.getAttribute();不过EL比这个更智能些，它不用强制类型转换就可以拿到了真实对象的值。 -->
			<c:forEach items="${allnews}" var="news">
				<tr>
					<td>${news.newsTitle }</td>
					<td><fmt:formatDate value="${news.newsCreatetime}" /></td>
					<td>${news.ntype.newstType }</td>
					<td>${news.operator.opName }</td>
					<td><a href="news/newsdetail/${news.newsId}.do">详情</a></td>
					<td><a href="news/editnews.do?newsId=${news.newsId}">Edit</a></td>
					<td><a href="news/deletenews/${news.newsId}.do">Delete</a></td>   
				</tr>
			</c:forEach>
		</table>
		
		
 </div>
</div>


<div class="foot">
     <div class="copyriht">联系我们：<img src="${pageContext.request.contextPath }/img/index/phone_13_13.jpg"/>+1234567890  <img src="${pageContext.request.contextPath }/img/index/letter_13_13.jpg" />     12456789@foxmail.com<br/>copyright©124569455568885TTTTDA</div>
</div> 




<script type="text/javascript">
var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
</script>
  </body>
</html>
