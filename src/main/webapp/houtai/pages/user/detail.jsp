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
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3" name="detailTable">
    <tr>
        <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;当前位置：
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;soda创业教育平台&nbsp;&nbsp;
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;后台管理&nbsp;&nbsp;
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;用户管理
        </td>
    </tr>
    <tr>
        <td style="height:34px; background-image:url(../../images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" name="detailTable2">
                <tr>
                    <td width="20" height="34"><img src="../../images/main_headerL.gif" width="20" height="34"></td>
                    <td style="color:#90c8e8;"><img src="../../images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>用户信息详情</strong></td>
                    <td align="right" class="white" style="padding-right:20px">
                        <a href="javascript:history.go(-1);" class="barBtn" onClick="javascript:history.go(-1);"name="retreat"><img src="../../images/btn_left.gif" align="absmiddle"> 后退</a>
                        <a href="javascript:history.go(+1);" class="barBtn" onClick="javascript:history.go(+1);" name="advance"><img src="../../images/btn_right.gif" align="absmiddle"> 前进</a>
                        <a href="#" class="flush" name="homePageFlush"><img src="../../images/btn_refresh.gif" align="absmiddle"> 刷新</a>
                    </td>
                </tr>
            </table></td>
    </tr>
    <tr>
        <td height="100%" valign="top">
            <div style="overflow:auto;height:100%; width:100%">
                <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1" name="detailTable3">
                    <TR>
                        <th width="20%" align="center">用户登录名</th>
                        <TD class="BGCgray">zhangsanss</TD>
                    </TR>
                    <TR>
                        <th align="center">密码</th>
                        <TD width="80%" class="BGCgray">123123</TD>
                    </TR>
                    <TR>
                        <th align="center"><span class="BGCgray">真实姓名</span></th>
                        <TD class="BGCgray">张三</TD>
                    </TR>
                    <TR>
                        <th align="center"><span class="BGCgray">身份证</span></th>
                        <TD class="BGCgray">14270319998520251</TD>
                    </TR>
                    <TR>
                        <th align="center">性别</th>
                        <TD class="BGCgray">
                            男
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">联系电话</th>
                        <TD class="BGCgray">13880123123</TD>
                    </TR>
                    <TR>
                        <th align="center">地址</th>
                        <TD class="BGCgray">成都市金牛区沙湾路21号</TD>
                    </TR>
                    <TR>
                        <th align="center">邮箱</th>
                        <TD class="BGCgray">zhangsan@163.com</TD>
                    </TR>
                    <TR>
                        <th align="center">状态</th>
                        <TD class="BGCgray">启用</TD>
                    </TR>
                </table>
                <div style="width:100%; text-align:center; padding:5px">
                    <BUTTON style="HEIGHT:25px" onClick="javascript:history.go(-1);"name="back" ><img src="../../images/btn_back.gif" width="16" height="16" align="absmiddle"> 返回</BUTTON>
                </div>
            </div>
        </td>
    </tr>
</table>
</body>
</html>