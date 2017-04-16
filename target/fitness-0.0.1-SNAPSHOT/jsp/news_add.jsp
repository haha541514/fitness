<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>添加新闻</title>
   <link href="${pageContext.request.contextPath }/css/mycss6.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath }/SpryAssets_book/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />
	<script src="${pageContext.request.contextPath }/SpryAssets/SpryTabbedPanels.js" type="text/javascript"></script>
  </head>
  
  <body>
 
<div class="wrap">

<div class="banner">
<div class="head">
             <jsp:include page="/jsp/tree.jsp"></jsp:include>
 </div>
<div class="banner_text">健身秘诀，互相学习分享的空间</div>
<div class="choice">
   <div class="choicebutton1"><a href="book.html">查看教程</a></div>
   <div class="choicebutton2"><a href="#">分享教程</a></div>
</div> 
</div>

<div class="searchback">
  <input type="text" name="search" class="search"/> 
</div>

<div class="cotent">

  <div class="box1">
    <div class="publish">发布</div>
    <div class="back">返回</div>
  </div>
  
  <div class="box2">
    <div class="title">
    <div class="title_text">标题</div>
     <input type="title" class="title_box" value="" />
     </div>
     <div class="style">
    <div class="style_text">类型</div>
     <form>
     <select name="锻炼技巧" class="style_box">
      <option value="jiqiao">锻炼技巧</option>
      <option value="jiqiao">装备指南</option>
      <option value="jiqiao">合理饮食</option>
      <option value="jiqiao">健身知识</option>
      </select>
      </form>
           </div>
  </div>
  
 <div class="box3">
  <textarea rows="100" cols="800" class="content_t"></textarea>
     </div>
     </div>
  
</div>

<div class="foot">
     <div class="copyriht">联系我们：<img src="${pageContext.request.contextPath }/img/index/phone_13_13.jpg"/>+1234567890  <img src="${pageContext.request.contextPath }/img/index/letter_13_13.jpg" />     12456789@foxmail.com<br/>copyright©124569455568885TTTTDA</div>
     </div> 
</div>


</div>
<script type="text/javascript">
var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
</script>
 

 



  </body>
</html>
