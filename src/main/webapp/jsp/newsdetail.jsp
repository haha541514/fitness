<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
</head>
 
<body>
  
<div class="wrap">

<div class="banner">
<div class="head">
         <jsp:include page="/jsp/tree.jsp"></jsp:include>
         <jsp:include page="/jsp/QQCommunicate.jsp"></jsp:include>
 </div>
<div class="banner_text">健身秘诀，互相学习分享的空间</div>
<div class="choice">
   <div class="choicebutton1"><a href="book.html">查看教程</a></div>
   <div class="choicebutton2"><a href="${pageContext.request.contextPath }/news/to_newsadd.do">分享教程</a></div>
</div> 
</div>

<div class="searchback">

</div>

<div class="cotent">
	

	<br><br>
	<!--  
		1. WHY 使用 form 标签呢 ?
		可以更快速的开发出表单页面, 而且可以更方便的进行表单值的回显
		2. 注意:
		可以通过 modelAttribute 属性指定绑定的模型属性,
		若没有指定该属性，则默认从 request 域对象中读取 command 的表单 bean
		如果该属性值也不存在，则会发生错误。
	-->
	<br><br>
	
		<input value="${news.newsTitle}"/>
		<br/><br/><br/>
		新闻卷稿人<input value="${newscontent.newscShuming}"/>
		<br/><br/><br/>
		<textarea style="width: 760;height: 860;">${newscontent.newscContent}</textarea>
		<br/><br/><br/>
		 联系电话:<font> ${newscontent.newscPhone}</font>
		热线电话:<font> ${newscontent.newscHotline}</font>
		
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
