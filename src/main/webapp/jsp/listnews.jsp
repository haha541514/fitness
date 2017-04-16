<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>查看新闻页面</title>

   	

<style>
a{color:#333333;text-decoration:none;}
.pageNav { text-align:center; margin-top:10px; height:26px; padding:3px 0px;color: #000000;}
.pageNav a { display:inline; border:1px solid #ccc; height:20px; line-height:20px; margin-left:5px; padding:2px 7px;}
.pageNav a:hover { border:1px solid #3a739d; text-decoration:none; color:#3a739d; background:#f6fbff;}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script language="javascript" type="text/javascript">
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
<form action="${pageContext.request.contextPath }/page/fsupport/queryArticle"
	method="post" name="listform" id="listform" >
<div id="admin">
  <div id="top"><img src="<%=path%>/m_images/logo.jpg" /> <span>首您现在的位置：<a href="<%=path%>/daiyun.jsp">首页</a>---会员中心---查看新闻</span> 
  
  		<div id="login1" style="display: none;" class="login"><font color="#3AC0F5"><%=session.getAttribute("opname")%>,您已经登陆&nbsp;|<a href="${pageContext.request.contextPath }/userController/loginout.do">login out</a></font>
    	</div>
  
  </div>
  
  
  <div class="master">
  
    <div class="right">
      <div class="admin_rit_ads">
        <div class="admin_ads_head">
          <div class="admin_ads_head_lft"></div>
          <div class="admin_piece_rit">
            <input type="button" value="增 加" style="width:82px; height:28px; margin-left: 220px; background:url(<%=path %>/m_images/add.jpg); border:0px;" onclick="link();"/>
            &nbsp;&nbsp;&nbsp;
            <input type="button" value="查 询" style="width:82px; height:28px; background:url(<%=path %>/m_images/add.jpg); border:0px;" onclick="mySearch();"/>
            &nbsp;&nbsp;&nbsp;
            <input type="button" value="删 除" style="width:82px; height:28px; background:url(<%=path %>/m_images/delete.jpg); border:0px;" onclick="link2();"/>
          </div>
        </div>
        <div class="admin_ads_check" align="center">
          <p >
          <table width="600" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="65">公告标题：</td>
              <td width="535"><input  name="bulletinHeading" type="text" class="input_text" style="width:525px; height:25px; border:1px solid #cccccc; padding-left:5px;" value="<%=request.getAttribute("searchArticleTitle")==null?"":request.getAttribute("searchArticleTitle") %>" /></td>
            </tr>
          </table>
          </p>
          <p>
          <table width="600" border="0" cellpadding="0" cellspacing="0" >
            <tr>
              <td width="65">公告类型：</td>
              <td width="135"><select name="bulletinType" style="width: 130px; height:25px; border:1px solid #cccccc;">
                  <option value="">=====请选择=====</option>
                 <s:iterator var="bllkBean" value="@kyle.leis.es.bulletin.dax.BulletinDemand@queryAllBllKing()">
                                		<s:if test="#request.bulletinType.equals(#bllkBean.Bkbkcode)">
                                			<option value="<s:property value='#bllkBean.Bkbkcode'/>" selected="selected"><s:property value="#bllkBean.Bkbkname"/></option>
                                		</s:if>
                                		<s:else>
                                			<option value="<s:property value='#bllkBean.Bkbkcode'/>"><s:property value="#bllkBean.Bkbkname"/></option>
                                		</s:else>
                                	</s:iterator>
                </select></td>
              <td width="65">&nbsp;公告级别：</td>
              <td width="135"><select name="bulletinLevle" style="width: 130px; height:25px; border:1px solid #cccccc;">
                  <option value="">=====请选择=====</option>
                 <s:iterator var="bllLBean" value="@kyle.leis.es.bulletin.dax.BulletinDemand@queryAllbllLevel()">
                                		<s:if test="#request.bulletinLevle.equals(#bllLBean.Blblcode)">
                                			<option value="<s:property value='#bllLBean.Blblcode'/>" selected="selected"><s:property value="#bllLBean.Blblname"/></option>
                                		</s:if>
                                		<s:else>
                                			<option value="<s:property value='#bllLBean.Blblcode'/>"><s:property value="#bllLBean.Blblname"/></option>
                                		</s:else>
                                	</s:iterator>
                </select></td>
              <td width="65">&nbsp;&nbsp;创&nbsp;建&nbsp;人：</td>
              <td width="135"><input name="bulletinCreater" type="text" class="input_text" style="width: 130px; height:25px; border:1px solid #cccccc;" value="${searchArticleCreater }" /></td>
            </tr>
          </table>
          </p>
        </div>
        <div style="width: 818px; margin-top:20px;">
          <div class="admin_table" style="OVERFLOW-y: auto; OVERFLOW-x: auto; WIDTH: 785px; HEIGHT: 335px; background:#FFF;">
            <table width="900px" border="0" cellpadding="0" cellspacing="0"  bgcolor="#d5d5d5" class="manage_form"  >
              <tr class="manage_form_bk4" style="height:30px; background:url(m_images/tit_bg.png) repeat-x; left:20px;">
                <td width="8%"  style=" text-align:center;">全选

                  <label>
                    <input type="checkbox" name="selectAllCheckBox" id="selectAllCheckBox"  style="width:20px" onclick="changeCheckBox();"/>
                  </label></td>
                <td width="25%" align="center">公告标题</td>
                <td width="10%" align="center">公告ID</td>
                <td width="15%" align="center">公告类型</td>
                <td width="20%" align="center">发布时间</td>
                <td width="15%" align="center">创建者</td>
                <td width="15%" align="center">公告级别</td>
              </tr>
            
            </table> 
          </div>
          <div class="pageNav">    
           
        </div>  
        </div>
      </div>
    </div>
  </div>
</div>
</form>
</body>


</html>
