<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="../../css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../js/main.js"></script>

</head>
<body>
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3" name="surveyTable">
  <tr>
    <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">
    &nbsp;&nbsp;&nbsp;&nbsp;当前位置：
    <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;soda创业教育平台&nbsp;&nbsp;
    <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;后台管理&nbsp;&nbsp;
    <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;新闻管理</td>
  </tr>
  <tr>
    <td style="height:34px; background-image:url(../../images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
      <table width="100%" border="0" cellspacing="0" cellpadding="0" name="surveyTable2">
        <tr>
          <td width="20" height="34"><img src="../../images/main_headerL.gif" width="20" height="34"></td>
          <td style="color:#90c8e8;"><img src="../../images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;
          <strong>soda概况管理</strong></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td height="100%" valign="top">
    <div style="overflow:auto;height:100%; width:100%">
    <form action="" method="post"  name="surveyForm" >
      <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1" name="surveyTable3">
        <tr>
        	<td style="text-align:right">标题</td>
            <td>soda概况</td>
        </tr>
        <tr>
        	<td style="text-align:right">内容</td>
            <td><textarea rows="15" cols="52 "  name="sy_content" >KAB创业教育项目目前已在全球30多个国家开展。
			其核心内容是国际劳工组织为培养大中学生的创业意识和创业能力而专门开发的课程体系，
			与已经在各国广泛实施的“创办和改善你的企业”项目（SIYB项目）共同构成一个完整的创业培训体系。
			该课程一般以选修课的形式在大学开展，学生通过选修该课程可以获得相应的学分。
			围绕该课程，学生还可以参加KAB创业俱乐部、创业大讲堂等课外实践活动。通过教授和操练有关企业和创业的基本知识和技能，
			该项目帮助学生对创业树立全面认识和体验，切实提高其创业意识和创业能.</textarea></td>
        </tr>
        <tr>
        	<td style="text-align:right"></td>
            <td><input type="submit" value="提交" name="submit" ><input type="button" value="返回" onClick="history.back();"name="homePageButton"/></td>
        </tr>
      </table>
      </form>
    </div>
  </td>
  </tr>
</table>
</body>
</html>