<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>首页</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/mycss1.css" rel="stylesheet" type="text/css" />
<link href="css/cs3_hover.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="css/picplayer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){	
	
	var piclst = new Array();
	piclst.push(["${pageContext.request.contextPath}/img/index/images/banner1.jpg","",""]);
	piclst.push(["${pageContext.request.contextPath}/img/index/images/banner2.jpg","",""]);
	piclst.push(["${pageContext.request.contextPath}/img/index/images/banner3.jpg","",""]);
	piclst.push(["${pageContext.request.contextPath}/img/index/images/banner4.jpg","",""]);
	piclst.push(["${pageContext.request.contextPath}/img/index/images/banner5.jpg","",""]);
	
	picplayer("picplayer",3000,1700,728,piclst,"img/index/images/Playpic_btn.png");
	//要插入的对象ID	， 播放间隔，宽，高 ， 图片列表 ， 按钮路径
});
//切换导航栏
$(function(){
	 var opname = '<%=session.getAttribute("opname")%>';
	if(opname != "" && opname != 'null'){
		$('#login').hide();
		$('#login1').show();
	}

})
</script>
</head>


<body>
<div class="wrap">
   
    <div class="head" >
     
     	<jsp:include page="/jsp/tree.jsp"></jsp:include>
     	<jsp:include page="/jsp/QQCommunicate.jsp"></jsp:include>
     	<div class="login" id="login"><a href="${pageContext.request.contextPath }/login.jsp">登录</a>丨<a href="${pageContext.request.contextPath }/register.jsp">注册</a> 
    	</div>
    	<div id="login1" style="display: none;" class="login"><font color="#3AC0F5"><%=session.getAttribute("opname")%>,您已经登陆&nbsp;|<a href="${pageContext.request.contextPath }/userController/loginout.do">login out</a></font>
    	</div>
    </div>
    
    
    
    <div class="banner"><div  id="picplayer"></div></div>
    
    <div class="body1">
      <div class="text1">
         <h1>教练团队</h1>
         <h2>专业教练 课程丰富 教材全面</h2>
      </div>
      <div class="body1_box">
         <div class="body1_box1">
          <!-- colored -->
            <div class="ih-item circle colored effect13 from_left_and_right"><a href="#">
                <div class="img"><img alt="img" src="${pageContext.request.contextPath}/img/index/111.jpg"/></div>
                <div class="info">
                    <div class="info-back">
                        <h3>Heading here</h3>

                        <p>Description goes here</p>
                    </div>
                </div>
            </a></div>
            <!-- end colored -->
        
         </div>
         
          <div class="body1_box2">
            <!-- colored -->
            <div class="ih-item circle colored effect13 from_left_and_right"><a href="#">
                <div class="img"><img alt="img" src="${pageContext.request.contextPath}/img/index/222_03.jpg"></img></div>
                <div class="info">
                    <div class="info-back">
                        <h3>Heading here</h3>

                        <p>Description goes here</p>
                    </div>
                </div>
            </a></div>
            <!-- end colored -->
        
          </div>
          
           <div class="body1_box3">
              <!-- colored -->
            <div class="ih-item circle colored effect13 from_left_and_right"><a href="#">
                <div class="img"><img alt="img" src="${pageContext.request.contextPath}/img/index/4_01.jpg"></img></div>
                <div class="info">
                    <div class="info-back">
                        <h3>Heading here</h3>

                        <p>Description goes here</p>
                    </div>
                </div>
            </a></div>
            <!-- end colored -->
        
           </div>
            <div class="body1_box4">
              <!-- colored -->
            <div class="ih-item circle colored effect13 from_left_and_right"><a href="#">
                <div class="img"><img alt="img" src="${pageContext.request.contextPath}/img/index/444.jpg"></img></div>
                <div class="info">
                    <div class="info-back">
                        <h3>Heading here</h3>

                        <p>Description goes here</p>
                    </div>
                </div>
            </a></div>
            <!-- end colored -->
        
            </div>
      </div>
    </div>
    
    
   <div class="body2">
     <div class="vedio"><img src="img/index/vedio_03.jpg" /></div>
     <div class="text2">
     <h1>细胞欢快地跳跃；身形一点点变好；总会被周围的异性偷偷注视，
因为爱锻炼的身体，看起来那么有线条。</h1>
     <h2>和旁边用跑步机的朋友聊聊，就知道了社区又有什么新闻，哪个商场有什么活动。
很容易就能遇到爱好相同的朋友，这个周末又有了去处。不用再呆在家里无所事事
或者被各种琐事困扰，给身体放假，它也需要新陈代谢。</h2>
     </div>
   </div>
   
   <div class="body3">
      <div class="box1"><img src="${pageContext.request.contextPath}/img/index/incon1_06.jpg" /><br/>海量视频教学 
<br/>健身达人，资深教练<br/>带你健康生活</div>
      <div class="box2"><img src="${pageContext.request.contextPath}/img/index/incon2_06.jpg" /><br/>海量视频教学 
<br/>健身达人，资深教练<br/>带你健康生活</div>
      <div class="box3"><img src="${pageContext.request.contextPath}/img/index/incon3_06.jpg" /><br/>海量视频教学 
<br/>健身达人，资深教练<br/>带你健康生活</div>  
   </div>
   
   <div class="body4">
     <div class="text_left">Sart your <br/>fitness trip</div>
     <div class="text_right">
     let you have a body fit let you have a body fit<br/>
     let you have a body fit let you have a body fit<br/>
     let you have a body fit let you have a body fit<br/>
     let you have a body fit let you have a body fit
     </div>
   </div>
   
   <div class="body5"></div>
   
   <div class="foot">
     <div class="copyriht">联系我们：<img src="${pageContext.request.contextPath}/img/index/phone_13_13.jpg"/>+1234567890  <img src="img/index/letter_13_13.jpg" />     12456789@foxmail.com<br/>copyright©124569455568885TTTTDA</div>
     </div>
 
 </div>







</body>
</html>
