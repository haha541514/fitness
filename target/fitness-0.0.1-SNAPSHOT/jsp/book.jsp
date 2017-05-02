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
	
<link href="${pageContext.request.contextPath }/css/mycss6.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/SpryAssets_book/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath }/css/SpryAssets/SpryTabbedPanels.js" type="text/javascript"></script>
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
  <div id="TabbedPanels1" class="TabbedPanels">
  <ul class="TabbedPanelsTabGroup">
    <li class="TabbedPanelsTab" tabindex="0">锻炼技巧</li>
    <li class="TabbedPanelsTab" tabindex="0">装备指南</li>
    <li class="TabbedPanelsTab" tabindex="0">营养饮食</li>
    <li class="TabbedPanelsTab" tabindex="0">健身知识</li>
  </ul>
  <div class="TabbedPanelsContentGroup">
    <div class="TabbedPanelsContent">
      <li>
      <div class="box1">
        <div class="left"><img src="img/book/222_04.jpg" /></div>
        <div class="right">
          <span style="font-size:25px;color:#03fefe;">健身达人的健身知识和经验分享</span>
          <br />以文章的形式展示健身的秘诀和教名师指介绍健身老师的资料
        </div>
      </div>
     </li>
     
     <li>
      <div class="box1">
        <div class="left"><img src="img/book/222_04.jpg" /></div>
        <div class="right">
          <span style="font-size:25px;color:#03fefe;">健身达人的健身知识和经验分享</span>
          <br />以文章的形式展示健身的秘诀和教名师指介绍健身老师的资料
        </div>
      </div>
     </li>
     
     <li>
      <div class="box1">
        <div class="left"><img src="img/book/222_04.jpg" /></div>
        <div class="right">
          <span style="font-size:25px;color:#03fefe;">健身达人的健身知识和经验分享</span>
          <br />以文章的形式展示健身的秘诀和教名师指介绍健身老师的资料
        </div>
      </div>
     </li>
     
      <li>
      <div class="box1">
        <div class="left"><img src="img/book/222_04.jpg" /></div>
        <div class="right">
          <span style="font-size:25px;color:#03fefe;">健身达人的健身知识和经验分享</span>
          <br />以文章的形式展示健身的秘诀和教名师指介绍健身老师的资料
        </div>
      </div>
     </li>
     
      <li>
      <div class="box1">
        <div class="left"><img src="img/book/222_04.jpg" /></div>
        <div class="right">
          <span style="font-size:25px;color:#03fefe;">健身达人的健身知识和经验分享</span>
          <br />以文章的形式展示健身的秘诀和教名师指介绍健身老师的资料
        </div>
      </div>
     </li>
     
    </div>
    
    <div class="TabbedPanelsContent">
      <li>
      <div class="box1">
        <div class="left"><img src="img/book/222_04.jpg" /></div>
        <div class="right">
          <span style="font-size:25px;color:#03fefe;">健身达人的健身知识和经验分享</span>
          <br />以文章的形式展示健身的秘诀和教名师指介绍健身老师的资料
        </div>
      </div>
     </li>
     
     <li>
      <div class="box1">
        <div class="left"><img src="img/book/222_04.jpg" /></div>
        <div class="right">
          <span style="font-size:25px;color:#03fefe;">健身达人的健身知识和经验分享</span>
          <br />以文章的形式展示健身的秘诀和教名师指介绍健身老师的资料
        </div>
      </div>
     </li>
     
     <li>
      <div class="box1">
        <div class="left"><img src="img/book/222_04.jpg" /></div>
        <div class="right">
          <span style="font-size:25px;color:#03fefe;">健身达人的健身知识和经验分享</span>
          <br />以文章的形式展示健身的秘诀和教名师指介绍健身老师的资料
        </div>
      </div>
     </li>
     
     <li>
      <div class="box1">
        <div class="left"><img src="img/book/222_04.jpg" /></div>
        <div class="right">
          <span style="font-size:25px;color:#03fefe;">健身达人的健身知识和经验分享</span>
          <br />以文章的形式展示健身的秘诀和教名师指介绍健身老师的资料
        </div>
      </div>
     </li>
     
     <li>
      <div class="box1">
        <div class="left"><img src="img/book/222_04.jpg" /></div>
        <div class="right">
          <span style="font-size:25px;color:#03fefe;">健身达人的健身知识和经验分享</span>
          <br />以文章的形式展示健身的秘诀和教名师指介绍健身老师的资料
        </div>
      </div>
     </li>

    </div>
    
    
    <div class="TabbedPanelsContent">
      <li>
      <div class="box1">
        <div class="left"><img src="img/book/222_04.jpg" /></div>
        <div class="right">
          <span style="font-size:25px;color:#03fefe;">健身达人的健身知识和经验分享</span>
          <br />以文章的形式展示健身的秘诀和教名师指介绍健身老师的资料
        </div>
      </div>
     </li>
     
     <li>
      <div class="box1">
        <div class="left"><img src="img/book/222_04.jpg" /></div>
        <div class="right">
          <span style="font-size:25px;color:#03fefe;">健身达人的健身知识和经验分享</span>
          <br />以文章的形式展示健身的秘诀和教名师指介绍健身老师的资料
        </div>
      </div>
     </li>
     
     <li>
      <div class="box1">
        <div class="left"><img src="img/book/222_04.jpg" /></div>
        <div class="right">
          <span style="font-size:25px;color:#03fefe;">健身达人的健身知识和经验分享</span>
          <br />以文章的形式展示健身的秘诀和教名师指介绍健身老师的资料
        </div>
      </div>
     </li>
     
     <li>
      <div class="box1">
        <div class="left"><img src="img/book/222_04.jpg" /></div>
        <div class="right">
          <span style="font-size:25px;color:#03fefe;">健身达人的健身知识和经验分享</span>
          <br />以文章的形式展示健身的秘诀和教名师指介绍健身老师的资料
        </div>
      </div>
     </li>
     
     <li>
      <div class="box1">
        <div class="left"><img src="img/book/222_04.jpg" /></div>
        <div class="right">
          <span style="font-size:25px;color:#03fefe;">健身达人的健身知识和经验分享</span>
          <br />以文章的形式展示健身的秘诀和教名师指介绍健身老师的资料
        </div>
      </div>
     </li>

    </div>
    
    <div class="TabbedPanelsContent">
      <li>
      <div class="box1">
        <div class="left"><img src="img/book/222_04.jpg" /></div>
        <div class="right">
          <span style="font-size:25px;color:#03fefe;">健身达人的健身知识和经验分享</span>
          <br />以文章的形式展示健身的秘诀和教名师指介绍健身老师的资料
        </div>
      </div>
     </li>
     
     <li>
      <div class="box1">
        <div class="left"><img src="img/book/222_04.jpg" /></div>
        <div class="right">
          <span style="font-size:25px;color:#03fefe;">健身达人的健身知识和经验分享</span>
          <br />以文章的形式展示健身的秘诀和教名师指介绍健身老师的资料
        </div>
      </div>
     </li>
     
     <li>
      <div class="box1">
        <div class="left"><img src="img/book/222_04.jpg" /></div>
        <div class="right">
          <span style="font-size:25px;color:#03fefe;">健身达人的健身知识和经验分享</span>
          <br />以文章的形式展示健身的秘诀和教名师指介绍健身老师的资料
        </div>
      </div>
     </li>
     
     <li>
      <div class="box1">
        <div class="left"><img src="img/book/222_04.jpg" /></div>
        <div class="right">
          <span style="font-size:25px;color:#03fefe;">健身达人的健身知识和经验分享</span>
          <br />以文章的形式展示健身的秘诀和教名师指介绍健身老师的资料
        </div>
      </div>
     </li>
     
     <li>
      <div class="box1">
        <div class="left"><img src="img/book/222_04.jpg" /></div>
        <div class="right">
          <span style="font-size:25px;color:#03fefe;">健身达人的健身知识和经验分享</span>
          <br />以文章的形式展示健身的秘诀和教名师指介绍健身老师的资料
        </div>
      </div>
     </li>

    </div>
    <div class="TabbedPanelsContent">
      <li>
      <div class="box1">
        <div class="left"><img src="img/book/222_04.jpg" /></div>
        <div class="right">
          <span style="font-size:25px;color:#03fefe;">健身达人的健身知识和经验分享</span>
          <br />以文章的形式展示健身的秘诀和教名师指介绍健身老师的资料
        </div>
      </div>
     </li>
    </div>
  </div>
</div>
</div>

<div class="foot">
     <div class="copyriht">联系我们：<img src="img/index/phone_13_13.jpg"/>+1234567890  <img src="img/index/letter_13_13.jpg" />     12456789@foxmail.com<br/>copyright©124569455568885TTTTDA</div>
     </div> 
</div>



<script type="text/javascript">
var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
</script>
  </body>
</html>
