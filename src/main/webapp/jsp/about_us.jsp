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
    <title>关于我们</title>
    <script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<link href="${pageContext.request.contextPath}/css/mycss7.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
 <div class="wrap">

 <div class="head">

     <jsp:include page="/jsp/tree.jsp"></jsp:include>

    </div>
 <div class="main">
  <div class="back">
    <div class="title">关于我们</div>
    <div class="text"> <p>我们给予你的不仅仅是健康，肌肉
更是一个交流平台。</p>
    <p> 在这里，每一个会员可以基于自己
的爱好互相交流学习。我们提供的是一
个拥有良好氛围的平台</p></div>
  </div>
 </div>
 
 <div class="foot">
     <div class="copyriht">联系我们：<img src="${pageContext.request.contextPath }/img/index/phone_13_13.jpg"/>+1234567890  
     <img src="${pageContext.request.contextPath }/img/index/letter_13_13.jpg" />     12456789@foxmail.com<br/>copyright©124569455568885TTTTDA</div>
     </div> 
</div>
 



  </body>
</html>
