<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>添加新闻</title>
<link href="<%=path%>/style/page_master.css" type="text/css" rel="stylesheet" />
	<script type="text/javascript" src="<%=path%>/fckeditor/fckeditor.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>

<script language="JavaScript" type="text/javascript">
	
	
</script>
</head>

<body>
<form action=""method="post" name="saveform" id="saveform" >
	<input type="hidden" name="addflag" value="true" />
	<input type="hidden" name="strOperId" value="0" />
    <div id="admin">    
	<div id="top"><img src="<%=path%>/m_images/logo.jpg" /><span> 您现在的位置<a href="#">首页---</a>会员中心---添加公告</span>
	</div>
		<div class="master">
  
    <div class="right">
	    <div class="admin_box">
			<div class="admin_rit_ads">
			    <div class="admin_ads_head">
				    <div class="admin_ads_head_lft"></div>	
				    <div class="admin_piece_rit">
					    <input type="button" value="发 布" style="width:82px; height:28px; margin-left: 220px; background:url(<%=path %>/m_images/add.jpg); border:0px;" onclick="link();"/> &nbsp;&nbsp;&nbsp;&nbsp;
						<input type="button" value="返 回" style="width:82px; height:28px; margin-left: 50px; background:url(<%=path %>/m_images/add.jpg); border:0px;"onclick="window.history.go(-1);"/>
					</div>					
				</div>
				<div class="admin_ads_check">												
					<table width="730px" border="0" cellpadding="0" cellspacing="1">
						<thead>
							<tr><td >&nbsp;</td></tr>
							<tr>
								<td  width="65px" align="right">公告标题</td>
								<td colspan="3">
									<input name="bulletinHeading" type="text" class="input_text" id="bulletinHeading" style="width: 592px" value=""/>
									<span ><font color="red">*</font></span>
									<div id="heading" style="color:red"></div>
								</td>
							</tr>
							<tr><td >&nbsp;</td></tr>
							<tr>
								<td width="65px" align="right">新闻类型:</td>
								<td width="80px">
									<select name="bulletinType" id="bulletinType" style="width:245px; ">
										<option value="">=====请选择=====</option>
										<s:set value="@kyle.leis.es.bulletin.dax.BulletinDemand@queryAllBllKing()" var="bkList" />
										<s:iterator value="#bkList">
											<option value='<s:property value="Bkbkcode"/>'>
												<s:property value="Bkbkname"/>
											</option>
										</s:iterator>
									</select>								
								</td>	
								<td width="65px" align="right">有效时间:</td>
								<td><!-- value="DateFormatUtility.getStandardSysdate()" -->
									<input name="blvaliddate" type="text" class="input_text"
										style="width: 210px" value=""
										onfocus="WdatePicker({startDate:'%y-%M-01 23:59:59',dateFmt:'yyyy-MM-dd HH:mm:ss',alwaysUseStartDate:true})" />
								</td>
							</tr>
							<tr><td >&nbsp;</td></tr>	
							<tr>
								
								<td width="65px" align="right">公告级别:</td>
								<td width="80px">
									<select name="bulletinLevel" style="width:248px; ">									
										<option value="001" selected="selected">内部公告</option>
										<option value="002">外部公告</option>
									</select>									
								</td>
							</tr>
							<tr><td>&nbsp;</td>
							</tr>	
						</thead>
					</table>
	  			</div>
				<div>&nbsp;</div>
				<div class="admin_table" style="OVERFLOW-y: auto; OVERFLOW-x: auto; WIDTH: 785px; HEIGHT: 335px; background:#FFF;">
            <table width="900px" border="0" cellpadding="0" cellspacing="0"  bgcolor="#d5d5d5" class="manage_form"  >
							<tr>
								<td colspan="4">
									<textarea rows="140"  name="bulletincontent" id="bulletincontent" >
									</textarea>
								</td>
							</tr>
						</table>											
				</div>
			</div>
	</div>
	</div>
	</div>
	</div>
	
</form>
</body>
</html>
