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
    <title>发表帖子</title>
   <link href="${pageContext.request.contextPath }/css/mycss5.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
 
<div class="wrap">
<div class="head">
     
       
 </div>
<div class="banner"></div>
<div class="content">
  <div class="left">
   <div class="photo"><img src="${pageContext.request.contextPath }/img/talk/2_03.jpg" /></div>
   <div class="name">Alice</div>
   <div class="report"><a href="talk - 副本.html">发表新帖</a></div>
   <!--<div class="other">
     <img src="img/talk/111_07.jpg" style="margin-left:20px;"/>消息<img src="img/talk/页3_07.jpg" style="margin-left:40px;"/>收藏
   </div>-->
  </div>
  
  <div class="right">
    <div class="right_title">
     标题 <input type="title" class="right_title_box" value="" />
     </div>
     
     <div class="right_content_t">正文</div>
     <div class="right_content_box">
     <textarea rows="100" cols="100" class="right_content"></textarea>
     </div>
     <div class="publishes">发布</div>
     <div class="back"><a href="${pageContext.request.contextPath }/jsp/talk.jsp">返回</a></div>
     
  </div>

</div>



</div>


  </body>
</html>
