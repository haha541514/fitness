<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户注册</title>
<link href="css/mycss8.css" rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#username').trigger('focus');//默认时文本框获取焦点
		$('#sub')
				.click(
						function() {
							//$('#sub').css('backgroundImage','${pageContext.request.contextPath}/images/m_register.png');
							var defaults = {
								tip_required : '用户名不能为空',
								tip_username : '用户名错误',
								tip_passrequired : '密码不能为空',
								tip_password : '用户名或者密码错误',
								tip_validateRequired : 'QQ号不能为空'
							}
							//非空
							var username = $('#username').val();
							var password = $('#userpssword').val();
							var qqnum = $('#user_qq_number').val();
							//var validate = $('#validateCode').val();
							if (username.length == 0 || password.length == 0
									|| qqnum.length == 0) {
								if (username.length == 0
										|| password.length == 0) {
									if ($('#errormsg').length) {
									} else {
										var user_html = "<span id='errormsg' style='font-size:12px;color:red;'><br/>"
												+ defaults.tip_password
												+ "</span>"
										$('#username').after(user_html);
									}
								}
								if (qqnum.length == 0) {
									if ($('#errvalidate').length) {
									} else {
										var pass_html = "<span id='errvalidate' style='font-size:12px;color:red;'><br/><br/>"
												+ defaults.tip_validateRequired
												+ "</span>"
										$('#validateCode').next().after(
												pass_html);
									}
								}

							} else {
								$('#myfrom').attr('action',
										'userController/register.do');
								$('#myfrom').submit();
							}
						});

		$('body').keydown(function(e) {
			if (e.keyCode == '13') {//keyCode=13是回车键
				//$("#sub").click();
				//settimeout(function(){},1500);
				setTimeout($('#sub').click(), 1500);//这是延迟时间

			}
		});

	});

	$(function() {
		$('#userpssword').val('');
		$('#validateCode').val('');

		$("#username").blur(function() {

			var username = $('#username').val();
			if (username.length != 0) {
				if ($('#errormsg').length) {
					$('#errormsg').remove();
				}

			}

		});

		$("#userpssword").blur(function() {

			var password = $('#userpssword').val();
			if (password.length != 0) {
				if ($('#errpassword').length) {
					$('#errpassword').remove();
				}
			}

		});
		$("#userpssword").blur(function() {

			var password = $('#userpssword').val();
			if (password.length != 0) {
				if ($('#errpassword').length) {
					$('#errpassword').remove();
				}
			}

		});
		$("#user_qq_number").blur(function() {

			var validate = $('#user_qq_number').val();
			if (validate.length != 0) {
				if ($('#errvalidate').length) {
					$('#errvalidate').remove();
				}
			}

		});
	})

	function GetImgVerificationCode() {
		var timenow = new Date().getTime();
		$("#validateCodeImg").attr("src", "util/ValidateImage?d=" + timenow);
	}
	function changeValidateCode(obj) {
		//获取当前的时间作为参数，无具体意义
		var timenow = new Date().getTime();
		//每次请求需要一个不同的参数，否则可能会返回同样的验证码
		//可能和浏览器的缓存机制有关系
		obj.src = "util/ValidateImage?d=" + timenow;
	}
</script>
</head>
<body>
	<form action="" id="myfrom" method="post">
		<div class="wrap">
			<div class="back">
				<div class="logo">
					<img src="${pageContext.request.contextPath}/img/book/logo.png" />
				</div>
				<div class="content">
					<input type="text" class="text" placeholder="用户名|手机号|邮箱"
						name="username" id="username" /> <input type="password"
						class="text" placeholder="请输入密码" name="userpssword"
						id="userpssword" /> <input type="text" class="text"
						placeholder="QQ号" name="user_qq_number" id="user_qq_number" /> <input
						type="button" class="button"
						value="注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;册" id="sub" />
				</div>
			</div>
		</div>
	</form>
</body>
</html>
