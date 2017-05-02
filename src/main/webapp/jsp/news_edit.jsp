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
  
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>修改教程</title>
   	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
   <link href="${pageContext.request.contextPath }/css/mycss6.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath }/SpryAssets_book/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />
	<script src="${pageContext.request.contextPath }/SpryAssets/SpryTabbedPanels.js" type="text/javascript"></script>
	
	
 <script type="text/javascript">
 $(function(){
 	$('#publishnews').click(function(){
 		var news_title = $('input[name="news_title"]').val();
 		var news_name = $('input[name="news_name"]').val();
 		var nttype = $('#nttype').val();
 		var ntcontent = $('input[name="ntcontent"]').val();
 		var newscPhone = $('inpur[name="newscPhone"]').val();
 		var newscHotline = $('#newscHotline').val();
 		if(news_name == ''){
 			window.alert("请登录");
 			return;
 		}
 		if(news_title.trim() == ""){
 			window.alert("请输入教程标题");
 			return;
 		}
 		if(nttype == "" || nttype == null){
 			window.alert("请选择教程类型");
 			return;
 		}
 		if(ntcontent.trim() == 0 ){
 			window.alert("请输入教程内容");
 			return;
 		}
 		 if(newscPhone == "" || newscHotline ==""){
 			window.alert("请输入联系电话和热线电话");
 			return;
 		}
 		$('#myform').attr("action","saveeditnews.do");
 		$('#myform').submit();
 	});
 
 	$('#deletenews').click(function(){
 		
 		var newsid = $('#newsid').val();
 		if(newsid == ""){
 			return;
 		}
 		$('#myform').attr("action","/deletenews/{"+newsid+"}.do");
 		$('#myform').submit();
 	
 	});
 
 });
 
 
 
 </script>
 
 
  </head>
  
<body>
<form id="myform" method="post" action="" >
<div class="wrap">

<div class="banner">
<div class="head">
             <jsp:include page="/jsp/tree.jsp"></jsp:include>
             <jsp:include page="/jsp/QQCommunicate.jsp"></jsp:include>
 </div>
<div class="banner_text">健身秘诀，互相学习分享的空间</div>
<div class="choice">
   <div class="choicebutton1"><a href="book.html">查看教程</a></div>
   <div class="choicebutton2"><a href="#">分享教程</a></div>
</div> 
</div>

<div class="searchback">
 <!-- <input type="text" name="search" class="search"/> --> 
</div>

<div class="cotent">

  <div class="box1">
    <div class="back"><input type="button" name="publishnews" id="publishnews" style="width: 100px;" value="发布"/></div>
    <div class="back"><input  type="button" name="deletenews" id="deletenews" style="width: 100px;" value="删除"/></div>
  </div>
  
  <div class="box2">
    <div class="title">
    <br/><br/>
    <div class="title_text" >标题</div>
     <input type="hidden" name="newsid" id="newsid" value="${news.newsId}"/>
     <input name="news_title" type="text" class="title_box"  value="${news.newsTitle}" style="width: 200px;"/>
     </div>
     <div class="title_text" >卷稿人</div>

     <input name="news_name" disabled="disabled" value="${opname}" type="text" class="title_box"  style="width: 200px;"/>
     </div>
     <div class="style">
     <br/>
    <div class="style_text">教程类型</div>
 
     <select id="nttype" name="nttype" class="style_box" style="width: 200px;">
 			 <option value="">=====请选择=====</option>
   	  			<c:forEach var="nt"  items="${allnewstype}" >
 					 <c:choose>
				          <c:when test="${news.newsType eq nt.newstId}">
				               <option value="${nt.newstId}"  selected="selected">${nt.newstType}</option>
				          </c:when>
				          <c:otherwise>
				               <option value="${nt.newstId}">${nt.newstType}</option>
				          </c:otherwise>
				      </c:choose> 
    	 		</c:forEach>
      </select>
     <br/> <br/> <br/> <br/>
     
     <input  name="ntcontent" id="ntcontent" style="width: 760px;height: 260px;" value="${newscontent.newscContent}"/>
     <br/> <br/> <br/> <br/>
              联系电话<input  name="newscPhone" id="newscPhone" value="${newscontent.newscPhone}"/>
     <br/> <br/> <br/> <br/>          
              热线电话<input  name="newscHotline" id="newscHotline" value="${newscontent.newscHotline}"/>
         <br/> <br/> <br/> <br/>      
     <!--  <input  name="newscHotline" id="newscHotline" value="${news.newsType }"/>-->
     
  
     </div>
  </div>
  

     </div>
  
</form>
<div class="foot">
     <div class="copyriht">联系我们：<img src="${pageContext.request.contextPath }/img/index/phone_13_13.jpg"/>+1234567890  <img src="${pageContext.request.contextPath }/img/index/letter_13_13.jpg" />     12456789@foxmail.com<br/>copyright©124569455568885TTTTDA</div>
     </div> 


  </body>
</html>
