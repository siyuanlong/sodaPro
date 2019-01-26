<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
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
        <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;当前位置： <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;soda创业平台教育&nbsp;&nbsp; <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;后台管理&nbsp;&nbsp; <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;学生管理</td>
    </tr>
    <tr>
        <td style="height:34px; background-image:url(../../images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" name="detailTable2">
                <tr>
                    <td width="20" height="34"><img src="../../images/main_headerL.gif" width="20" height="34"></td>
                    <td style="color:#90c8e8;"><img src="../../images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>学生信息</strong></td>
                    <td align="right" class="white" style="padding-right:20px">
                        <a href="javascript:history.go(-1);" class="barBtn" onClick="javascript:history.go(-1);" name="retreat"><img src="../../images/btn_left.gif" align="absmiddle"> 后退</a>
                        <a href="javascript:history.go(+1);" class="barBtn" onClick="javascript:history.go(+1);" nname="advance"><img src="../../images/btn_right.gif" align="absmiddle"> 前进</a>
                        <a href="#" class="barBtn" name="flush"><img src="../../images/btn_refresh.gif" align="absmiddle"> 刷新</a>
                    </td>
                </tr>
            </table></td>
    </tr>
    <tr>
        <td height="100%" valign="top">
            <div style="overflow:auto;height:100%; width:100%">
                <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1" name="detailTable3" >

                    </TR>
                    <TR>
                        <th align="center"><span class="BGCgray">用户名</span></th>
                        <TD class="BGCgray">
                            ${student.stLoginname}
                        </TD>
                    <TR>
                        <th align="center"><span class="BGCgray">密码</span></th>
                        <TD class="BGCgray">
                            ${student.stPassword}
                        </TD>
                    <TR>
                        <th align="center"><span class="BGCgray">姓名</span></th>
                        <TD class="BGCgray">
                            ${student.stName}
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">性别</th>
                        <TD class="BGCgray">
                            <c:if test="${student.stSex==1}">男</c:if>
                            <c:if test="${student.stSex==0}">女</c:if>
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">身份证</th>
                        <TD class="BGCgray">
                            ${student.stIdcard}
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">联系电话</th>
                        <TD class="BGCgray">
                            ${student.stPhone}
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">现住址</th>
                        <TD class="BGCgray">
                            ${student.stAddress}
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">邮箱</th>
                        <TD class="BGCgray">
                            ${student.stEmail}
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">学校</th>
                        <TD class="BGCgray">
                            ${student.stSchool}
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">专业</th>
                        <TD class="BGCgray">
                            ${student.stMajor}
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">备注</th>
                        <TD class="BGCgray">
                            ${student.stRemark}
                        </TD>
                    </TR>
                </table>
                <div style="width:100%; text-align:center; padding:5px">
                    <BUTTON style="HEIGHT:25px" onClick="javascript:history.go(-1);" name="back"><img src="../../images/btn_back.gif" width="16" height="16" align="absmiddle"> 返回</BUTTON>
                </div>
            </div>
        </td>
    </tr>
</table>
</body>
</html>