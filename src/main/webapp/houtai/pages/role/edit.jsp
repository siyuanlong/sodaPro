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
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3" name="editTable">
    <tr>
        <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;当前位置：
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;soda创业教育平台&nbsp;&nbsp;
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;后台管理&nbsp;&nbsp;
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;角色管理
        </td>
    </tr>
    <tr>
        <td style="height:34px; background-image:url(../../images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" name="editTable2">
                <tr>
                    <td width="20" height="34"><img src="../../images/main_headerL.gif" width="20" height="34"></td>
                    <td style="color:#90c8e8;"><img src="../../images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>修改角色信息</strong></td>
                    <td align="right" class="white" style="padding-right:20px">
                        <a href="javascript:history.go(-1);" class="barBtn" onClick="javascript:history.go(-1);" name="retreat"><img src="../../images/btn_left.gif" align="absmiddle"> 后退</a>
                        <a href="javascript:history.go(+1);" class="barBtn" onClick="javascript:history.go(+1);" name="advance"><img src="../../images/btn_right.gif" align="absmiddle"> 前进</a>
                        <a href="#" class="barBtn" name="flush" ><img src="../../images/btn_refresh.gif" align="absmiddle"> 刷新</a>
                    </td>
                </tr>
            </table></td>
    </tr>
    <tr>
        <td height="100%" valign="top">
            <div style="overflow:auto;height:100%; width:100%">
                <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1" name="editTable3" >
                    <TR>
                        <th width="20%" align="center">角色名</th>
                        <TD class="BGCgray"><input type="text" value="超级管理员" name="ro_name"/></TD>
                    </TR>
                    <TR>
                        <th align="center">对应菜单</th>
                        <TD class="BGCgray">
                            <ul>
                                <li><input type="checkbox" />系统管理
                                    <ul>
                                        <li><input type="checkbox" value="" />用户管理</li>
                                        <li><input type="checkbox" value="" />角色管理</li>
                                        <li><input type="checkbox" value="" />菜单管理</li>
                                    </ul>
                                </li>
                                <li><input type="checkbox" />系统管理
                                    <ul>
                                        <li><input type="checkbox" value="" />用户管理</li>
                                        <li><input type="checkbox" value="" />角色管理</li>
                                        <li><input type="checkbox" value="" />菜单管理</li>
                                    </ul>
                                </li>

                            </ul>
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">启用状态</th>
                        <TD class="BGCgray">
                            <input type="radio" value="1" name="ro_state" />启用
                            <input type="radio" value="2" name="ro_state" />禁用
                        </TD>
                    </TR>
                    <TR>
                        <th align="center"><span class="BGCgray">备注</span></th>
                        <TD class="BGCgray">
          	<textarea name="ro_remark">暂无
            </textarea>
                        </TD>
                    </TR>
                </table>
                <div style="width:100%; text-align:center; padding:5px">
                    <BUTTON style="HEIGHT:25px" onClick="javascript:if (confirm('保存信息？')) location.href='list.html';else return;" name="submit"><img src="../../images/btn_edit.gif" width="16" height="16" align="absmiddle"> 修改</BUTTON><BUTTON style="HEIGHT:25px" onClick="history.go(-1);" name="back" ><img src="../../images/btn_back.gif" width="16" height="16" align="absmiddle"> 返回</BUTTON>
                </div>
            </div>
        </td>
    </tr>
</table>
</body>
</html>