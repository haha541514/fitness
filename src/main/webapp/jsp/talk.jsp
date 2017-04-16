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
    
    <title>讨论专区</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
    
<div class="wrap">
   
<div class="head">
            <jsp:include page="/jsp/tree.jsp"></jsp:include>
            <jsp:include page="/jsp/QQCommunicate.jsp"></jsp:include>
            
 </div>
<div class="banner"></div>
<div class="cotent">
  <div class="title"><img src="${pageContext.request.contextPath }/img/teacher/title_05.jpg" /></div>
  <div class="line"></div>
  <div class="list1">
    <div class="box">
    <div class="img1">
       <!-- colored -->
            <div class="ih-item square colored effect6 bottom_to_top"><a href="index.html">
                <div class="img"><img src="${pageContext.request.contextPath }/img/teacher/1_05.jpg" alt="img" border="0"></img></div>
                <div class="info">
                    <h3>Heading here</h3>
                    <p>Description goes here</p>
                </div>
            </a></div>
            <!-- end colored -->
        
    </div>
    <div class="text"><h1>LILY</h1><h2>资深教练嘻嘻嘻嘻嘻</h2></div>
    </div>
    
   <div class="box">
    <div class="img1">
       <!-- colored -->
            <div class="ih-item square colored effect6 bottom_to_top"><a href="index.html">
                <div class="img"><img src="${pageContext.request.contextPath }/img/teacher/6_01.jpg" alt="img" border="0"></img></div>
                <div class="info">
                    <h3>Heading here</h3>
                    <p>Description goes here</p>
                </div>
            </a></div>
            <!-- end colored -->
        
    </div>
    <div class="text"><h1>LILY</h1><h2>资深教练嘻嘻嘻嘻嘻</h2></div>
    </div>
    
    <div class="box">
    <div class="img1">
       <!-- colored -->
            <div class="ih-item square colored effect6 bottom_to_top"><a href="#">
                <div class="img"><img alt="img" src="${pageContext.request.contextPath }/img/teacher/5_01.jpg"></img></div>
                <div class="info">
                    <h3>Heading here</h3>
                    <p>Description goes here</p>
                </div>
            </a></div>
            <!-- end colored -->
        
    </div>
    <div class="text"><h1>LILY</h1><h2>资深教练嘻嘻嘻嘻嘻</h2></div>
    </div>
    
     
  </div>
  <div class="list1">
        <div class="box">
        <div class="img1">
       <!-- colored -->
            <div class="ih-item square colored effect6 bottom_to_top"><a href="#">
                <div class="img"><img alt="img" src="${pageContext.request.contextPath }/img/teacher/4_01.jpg"></img></div>
                <div class="info">
                    <h3>Heading here</h3>
                    <p>Description goes here</p>
                </div>
            </a></div>
            <!-- end colored -->
        
    </div>
    <div class="text"><h1>LILY</h1><h2>资深教练嘻嘻嘻嘻嘻</h2></div>
    </div>
    
    <div class="box">
    <div class="img1">
       <!-- colored -->
            <div class="ih-item square colored effect6 bottom_to_top"><a href="#">
                <div class="img"><img alt="img" src="${pageContext.request.contextPath }/img/teacher/2_05.jpg"></img></div>
                <div class="info">
                    <h3>Heading here</h3>
                    <p>Description goes here</p>
                </div>
            </a></div>
            <!-- end colored -->
        
    </div>
    <div class="text"><h1>LILY</h1><h2>资深教练嘻嘻嘻嘻嘻</h2></div>
    </div>
    
    <div class="box">
    <div class="img1">
       <!-- colored -->
            <div class="ih-item square colored effect6 bottom_to_top"><a href="#">
                <div class="img"><img alt="img" src="${pageContext.request.contextPath }/img/teacher/7_01.jpg"></img></div>
                <div class="info">
                    <h3>Heading here</h3>
                    <p>Description goes here</p>
                </div>
            </a></div>
            <!-- end colored -->
        
    </div>
    <div class="text"><h1>LILY</h1><h2>资深教练嘻嘻嘻嘻嘻</h2></div>
    </div>

  </div>
</div>
<div class="foot">
     <div class="copyriht">联系我们：<img src="${pageContext.request.contextPath }/img/index/phone_13_13.jpg" alt=""/>+1234567890  <img src="${pageContext.request.contextPath }/img/index/letter_13_13.jpg" />     12456789@foxmail.com<br/>
    copyright©124569455568885TTTTDA</div>
  </div>
</div>
		






  </body>
</html>
