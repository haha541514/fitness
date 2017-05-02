<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>论坛帖子</title>

   	

<style>
a{color:#333333;text-decoration:none;}
.pageNav { text-align:center; margin-top:10px; height:26px; padding:3px 0px;color: #000000;}
.pageNav a { display:inline; border:1px solid #ccc; height:20px; line-height:20px; margin-left:5px; padding:2px 7px;}
.pageNav a:hover { border:1px solid #3a739d; text-decoration:none; color:#3a739d; background:#f6fbff;}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script language="javascript" type="text/javascript">
	
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
	<c:forEach var="" items="">
			<textarea rows="" cols="" style="width: 860px;height: 100px;"></textarea>
	
	</c:forEach>		

</body>


</html>
