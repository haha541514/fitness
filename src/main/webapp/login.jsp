<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户登陆</title>
<link href="css/mycss8.css" rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>


<script type="text/javascript">

	$(function(){
		$('#username').trigger('focus');//默认时文本框获取焦点
  	$('#sub').click(function(){
  		//$('#sub').css('backgroundImage','${pageContext.request.contextPath}/images/m_logining.png');
  		//document.getElementById("sub").style.backgroundImage="url(${pageContext.request.contextPath}/images/m_logining.png)";
		 var defaults={
			tip_required:'用户名不能为空', 
			tip_username:'用户名错误',
			tip_passrequired: '密码不能为空',
			//tip_password:'密码错误或者验证码错误',
			tip_password:'用户名或者密码错误',
			tip_validateRequired:'验证码不能为空'
	 	}	
	 	
    	//非空
    	var username = $('#username').val();
    	var password = $('#userpssword').val();
    	if(username.length == 0 || password.length == 0 ){
    		if(username.length == 0){
    		if($('#errormsg').length){
			}else{
    		    var user_html="<span id='errormsg' style='font-size:12px;color:red;'><br/>"+defaults.tip_password+"</span>"
    		    $('#userpssword').after(user_html);
    		   }
    		}
    	}else{
    	 var data = {
             username: username,
             userpssword: password
   		  }
    	
    	
    	$.ajax({
			url: 'userController/userlogin.do',
			timeout : 30000, //超时时间设置，单位毫秒
			//contentType: "application/json;charset=UTF-8",//必须有//此处不能设置，否则后台无法接值  为什么?
			dataType: "json", //表示返回值类型，不必须
			data: data,
			//data:JSON.stringify({ 'username': username, 'userpssword': password }),  //相当于 //data: "{'str1':'foovalue', 'str2':'barvalue'}",
			type: 'POST',
			success: function(msg){
				if(msg == '1'){
					location.href = 'userController/userlogining.do';
				}else if(msg == 'errorPassword'){
					document.getElementById("sub").style.backgroundImage="url(${pageContext.request.contextPath}/images/m_login.png)";
					if($('#errpassword').length){
					}else{
						document.getElementById("sub").style.backgroundImage="url(${pageContext.request.contextPath}/images/m_login.png)";
						var pass_html="<span id='errpassword' style='font-size:12px;color:red;'><br/>"+defaults.tip_password+"</span>"
    					$('#userpssword').after(pass_html);
    					$('#userpssword').val('');

    				}
				
						
    			}
				
			}
			});	
		}
	 });
	 	
	 	$('body').keydown(function(e) {
             if (e.keyCode == '13') {//keyCode=13是回车键
             	//$("#sub").click();
             	//settimeout(function(){},1500);
             	setTimeout($('#sub').click(),1500);//这是延迟时间
             	
             }
         });
         
	});
	
 
 	$(function(){
 		$('#userpssword').val('');
    	$('#validateCode').val('');
    					
		$("#username").blur(function(){
		
			var username = $('#username').val();
			if(username.length != 0){
				if($('#errormsg').length){
					$('#errormsg').remove();
				}
				
			}
			
		});
		
		$("#userpssword").blur(function(){
		
			var password = $('#userpssword').val();
			if(password.length != 0){
				if($('#errpassword').length){
					$('#errpassword').remove();
				}
			}
			
		});
		$("#userpssword").blur(function(){
		
			var password = $('#userpssword').val();
			if(password.length != 0){
				if($('#errpassword').length){
					$('#errpassword').remove();
				}
			}
			
		});
		$("#validateCode").blur(function(){
		
			var validate = $('#validateCode').val();
			if(validate.length != 0){
				if($('#errvalidate').length){
					$('#errvalidate').remove();
				}
			}
			
		});
	})
	
		function GetImgVerificationCode(){
			 var timenow = new Date().getTime();
			$("#validateCodeImg").attr("src","util/ValidateImage?d="+timenow);
		}
		function changeValidateCode(obj) {
		    //获取当前的时间作为参数，无具体意义
		    var timenow = new Date().getTime();
		    //每次请求需要一个不同的参数，否则可能会返回同样的验证码
		    //可能和浏览器的缓存机制有关系
		    obj.src="util/ValidateImage?d="+timenow;
	   	 }

   		
</script>
</head>
<body>
	<div class="wrap">
		<div class="back">
			<div class="logo">
				<img src="${pageContext.request.contextPath}/img/book/logo.png" />
			</div>
			<div class="content">
				<input type="text" class="text" placeholder="用户名|手机号|邮箱" name="username" id="username"/> 
				<input
					type="password" class="text"  placeholder="请输入密码" name="userpssword" id="userpssword"/> 
					<input type="button" class="button" value="登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;录" id="sub"  />
			</div>
		</div>
	</div>

</body>
</html>
