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
	
<link href="<%=basePath%>/css/mycss3.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>/css/SpryAssets/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />
<script src="<%=basePath%>/css/SpryAssets/SpryTabbedPanels.js" type="text/javascript"></script>
</head>
 
<body>
  
<div class="wrap">
   <div class="head">
        <jsp:include page="/jsp/tree.jsp"></jsp:include>
        <jsp:include page="/jsp/QQCommunicate.jsp"></jsp:include>
    </div>
  <div class="banner"></div>
  <div class="box1">
    <div class="title"><img src="${pageContext.request.contextPath }/img/course/1_05.jpg" /><span>精选课程</span></div>
  </div>
  
  <div class="body1">
    <div class="course1">
      <a href="#"><div class="button">MORE</div></a>
      </div>
    <div class="course2">   <a href="#"><div class="button">MORE</div></a></div>
    <div class="course3">   <a href="#"><div class="button">MORE</div></a></div>
    <div class="course4">   <a href="#"><div class="button">MORE</div></a></div>  
  </div>
  
  <div class="body2">
    <div class="title2">
      <div id="TabbedPanels1" class="TabbedPanels">
        <ul class="TabbedPanelsTabGroup">
          <li class="TabbedPanelsTab" tabindex="0">全部课程</li>
          <li class="TabbedPanelsTab" tabindex="0">减脂</li>
          <li class="TabbedPanelsTab" tabindex="0">塑形</li>
          <li class="TabbedPanelsTab" tabindex="0">增肌</li>
          <li class="TabbedPanelsTab" tabindex="0">放松</li>
          <li class="TabbedPanelsTab" tabindex="0">瑜伽</li>
          <li class="TabbedPanelsTab" tabindex="0">跑步</li>
          <li class="TabbedPanelsTab" tabindex="0">日常</li>
        </ul>
        <div class="TabbedPanelsContentGroup">
          <div class="TabbedPanelsContent">
            <div class="cotent1">
              <li style="background:url(${pageContext.request.contextPath }/img/course/3_02.jpg)">健身房入门(男生版)</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/4_02.jpg)">健身房入门(女生版)</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/9_02.jpg)">模特身材养成计划</li>
            </div>
            <div class="cotent1">
              <li style="background:url(${pageContext.request.contextPath }/img/course/2_02.jpg)">HIIT燃脂初级</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/8_02.jpg)">Tabata4分钟强化燃脂</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/6_02.jpg)">驼背改善</li>
            </div>
          </div>
          
          <div class="TabbedPanelsContent">
          <div class="cotent1">
              <li style="background:url(${pageContext.request.contextPath }/img/course/12_02.jpg)">健身房入门(男生版)</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/4_02.jpg)">健身房入门(女生版)</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/9_02.jpg)">模特身材养成计划</li>
            </div>
            <div class="cotent1">
              <li style="background:url(${pageContext.request.contextPath }/img/course/2_02.jpg)">HIIT燃脂初级</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/8_02.jpg)">Tabata4分钟强化燃脂</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/6_02.jpg)">驼背改善</li>
            </div>
            </div>
            
          <div class="TabbedPanelsContent">
          <div class="cotent1">
              <li style="background:url(${pageContext.request.contextPath }/img/course/3_02.jpg)">健身房入门(男生版)</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/4_02.jpg)">健身房入门(女生版)</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/9_02.jpg)">模特身材养成计划</li>
            </div>
            <div class="cotent1">
              <li style="background:url(${pageContext.request.contextPath }/img/course/2_02.jpg)">HIIT燃脂初级</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/8_02.jpg)">Tabata4分钟强化燃脂</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/6_02.jpg)">驼背改善</li>
            </div>
            </div>
          <div class="TabbedPanelsContent">
          <div class="cotent1">
              <li style="background:url(${pageContext.request.contextPath }/img/course/1_02.jpg)">健身房入门(男生版)</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/4_02.jpg)">健身房入门(女生版)</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/9_02.jpg)">模特身材养成计划</li>
            </div>
            <div class="cotent1">
              <li style="background:url(${pageContext.request.contextPath }/img/course/2_02.jpg)">HIIT燃脂初级</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/8_02.jpg)">Tabata4分钟强化燃脂</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/6_02.jpg)">驼背改善</li>
            </div>
            </div>
          <div class="TabbedPanelsContent">
          <div class="cotent1">
              <li style="background:url(${pageContext.request.contextPath }/img/course/3_02.jpg)">健身房入门(男生版)</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/4_02.jpg)">健身房入门(女生版)</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/9_02.jpg)">模特身材养成计划</li>
            </div>
            <div class="cotent1">
              <li style="background:url(${pageContext.request.contextPath }/img/course/2_02.jpg)">HIIT燃脂初级</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/8_02.jpg)">Tabata4分钟强化燃脂</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/6_02.jpg)">驼背改善</li>
            </div>
            </div>
          <div class="TabbedPanelsContent">
          <div class="cotent1">
              <li style="background:url(${pageContext.request.contextPath }/img/course/3_02.jpg)">健身房入门(男生版)</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/4_02.jpg)">健身房入门(女生版)</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/9_02.jpg)">模特身材养成计划</li>
            </div>
            <div class="cotent1">
              <li style="background:url(${pageContext.request.contextPath }/img/course/2_02.jpg)">HIIT燃脂初级</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/8_02.jpg)">Tabata4分钟强化燃脂</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/6_02.jpg)">驼背改善</li>
            </div>
            </div>
          <div class="TabbedPanelsContent">
          <div class="cotent1">
              <li style="background:url(${pageContext.request.contextPath }/img/course/3_02.jpg)">健身房入门(男生版)</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/4_02.jpg)">健身房入门(女生版)</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/9_02.jpg)">模特身材养成计划</li>
            </div>
            <div class="cotent1">
              <li style="background:url(${pageContext.request.contextPath }/img/course/2_02.jpg)">HIIT燃脂初级</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/8_02.jpg)">Tabata4分钟强化燃脂</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/6_02.jpg)">驼背改善</li>
            </div>
            </div>
          <div class="TabbedPanelsContent">
          <div class="cotent1">
              <li style="background:url(${pageContext.request.contextPath }/img/course/3_02.jpg)">健身房入门(男生版)</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/4_02.jpg)">健身房入门(女生版)</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/9_02.jpg)">模特身材养成计划</li>
            </div>
            <div class="cotent1">
              <li style="background:url(${pageContext.request.contextPath }/img/course/2_02.jpg)">HIIT燃脂初级</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/8_02.jpg)">Tabata4分钟强化燃脂</li>
              <li style="background:url(${pageContext.request.contextPath }/img/course/6_02.jpg)">驼背改善</li>
            </div>
            </div>
            
        </div>
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
