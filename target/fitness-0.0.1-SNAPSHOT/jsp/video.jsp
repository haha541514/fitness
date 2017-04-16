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
    <title>课程</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
<link href="${pageContext.request.contextPath }/css/mycss2.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/cssSpryAssets2/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath }/cssSpryAssets2/SpryTabbedPanels.js" type="text/javascript"></script>
</head>
 
<body>

<div class="wrap">


 <div class="head">
       <jsp:include page="/jsp/tree.jsp"></jsp:include>
 </div>
 
 <div class="main">
   <div class="upload"><img src="${pageContext.request.contextPath}/img/video/upload_03.jpg" /></div>
   <div class="top">
      <div class="title1">健身频道</div>      
      <div class="banner"><img src="${pageContext.request.contextPath}/img/video/banner_07.jpg" /></div>
      <div class="rightbar">
        <div id="TabbedPanels1" class="TabbedPanels">
          <ul class="TabbedPanelsTabGroup">
            <li class="TabbedPanelsTab" tabindex="0">会员推荐</li>
            <li class="TabbedPanelsTab" tabindex="0">教练推荐</li>
          </ul>
          <div class="TabbedPanelsContentGroup">
            <div class="TabbedPanelsContent">
              <li>哑铃高级全身锻炼视频&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mike</li>
              <li>哑铃高级全身锻炼视频&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mike</li>
              <li>哑铃高级全身锻炼视频&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mike</li>
              <li>哑铃高级全身锻炼视频&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mike</li>

              <li>哑铃高级全身锻炼视频&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mike</li>
            </div>
            <div class="TabbedPanelsContent">
              <li>哑铃高级全身锻炼视频&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mike</li>
              <li>哑铃高级全身锻炼视频&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mike</li>
              <li>哑铃高级全身锻炼视频&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mike</li>
              <li>哑铃高级全身锻炼视频&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mike</li>
              <li>哑铃高级全身锻炼视频&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mike</li>
            </div>
          </div>
        </div>
      </div>
   </div>
   <div class="title2">官方推荐</div>
   <div class="line">
   <div class="list1">
     <li><img src="${pageContext.request.contextPath }/img/video/inv-003_01.jpg" /></li>
      <li><img src="${pageContext.request.contextPath }/img/video/inv-003_01.jpg" /></li>
       <li><img src="${pageContext.request.contextPath }/img/video/inv-003_01.jpg" /></li>
   </div>
   <div class="list1">
     <li><img src="${pageContext.request.contextPath }/img/video/inv-003_01.jpg" /></li>
      <li><img src="${pageContext.request.contextPath }/img/video/inv-003_01.jpg" /></li>
       <li><img src="${pageContext.request.contextPath }/img/video/inv-003_01.jpg" /></li>
   </div>
   <div class="title2">好友推荐</div>
   <div class="line"></div>
   <div class="list1">
     <li><img src="${pageContext.request.contextPath }/img/video/inv-003_01.jpg" /></li>
      <li><img src="${pageContext.request.contextPath }/img/video/inv-003_01.jpg" /></li>
       <li><img src="${pageContext.request.contextPath }/img/video/inv-003_01.jpg" /></li>
   </div> 
</div>



</div>
<div class="foot">
     <div class="copyriht">联系我们：<img src="${pageContext.request.contextPath }/img/index/phone_13_13.jpg"/>+1234567890  <img src="${pageContext.request.contextPath }/img/index/letter_13_13.jpg" />     12456789@foxmail.com<br/>copyright©124569455568885TTTTDA</div>
     </div>
</div>
<script type="text/javascript">
var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
</script>

  </body>
</html>
