<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>上传视频</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="${pageContext.request.contextPath }/css/mycss2.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath }/SpryAssets2/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />
	<script src="${pageContext.request.contextPath }/SpryAssets2/SpryTabbedPanels.js" type="text/javascript"></script>
</head>
 
<body>

<div class="wrap1">


 <div class="head">
            <jsp:include page="/jsp/tree.jsp"></jsp:include>
 </div>
 
 <div class="main1">
   <div class="pic"><a href="#"><img src="${pageContext.request.contextPath }/img/video/images/页2---副本_03.png"/></a></div>
</div>



</div>
<div class="foot">
     <div class="copyriht">联系我们：<img src="${pageContext.request.contextPath }/img/index/phone_13_13.jpg"/>+1234567890  <img src="${pageContext.request.contextPath }/img/index/letter_13_13.jpg" />     12456789@foxmail.com<br/>copyright©124569455568885TTTTDA</div>
     </div>
</div>

  </body>
</html>
