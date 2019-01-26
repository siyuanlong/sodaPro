<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="../../../css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../../js/main.js"></script>
<script type="text/javascript">
	function goBack(){
			location.href="index.html"
		}
</script>
</head>
<body>
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3" name="editTable">
  <tr>
    <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">
    &nbsp;&nbsp;&nbsp;&nbsp;当前位置：
    <img src="../../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;soda创业教育平台&nbsp;&nbsp;
    <img src="../../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;后台管理&nbsp;&nbsp;
    <img src="../../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;行业介绍</td>
  </tr>
  <tr>
    <td style="height:34px; background-image:url(../../../images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" name="editTable2">
        <tr>
          <td width="20" height="34"><img src="../../../images/main_headerL.gif" width="20" height="34"></td>
          <td style="color:#90c8e8;"><img src="../../../images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;
          <strong><a href="index.html">行业介绍编辑</strong></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td height="100%" valign="top">
    <div style="overflow:auto;height:100%; width:100%">
    <form action="index.html" method="post"  name="editForm">
      <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1" name="editTable3">
        <tr>
        	<td style="text-align:right">标题</td>
            <td><input type="text" name="iy_title" value="前端开发" style="width:300px"></td>
        </tr>
        <tr>
        	<td style="text-align:right">作者</td>
            <td><input type="text" name="iy_userId" value="Amor" style="width:300px"></td>
        </tr>
        <tr>
        	<td style="text-align:right">是否推荐</td>
            <td><input type="radio" name="iy_state" checked="checked">是&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"  name="iy_state">否</td>
        </tr>
        <tr>
        	<td style="text-align:right">内容</td>
            <td><textarea rows="10" cols="42" name="iy_content">Java前端的开发技术是发展日新月异，我们需要时时学习新的技术才能发展对自己在行业的发展更上一层楼</textarea></td>
        </tr>
        <tr>
        	<td style="text-align:right"></td>
            <td><input type="submit" value="提交" name="submit" > <input type="button" value="返回" onClick="Javascript:goBack()" name="back"></td>
        </tr>
      </table>
      </form>
    </div>
  </td>
  </tr>
</table>
</body>
</html>