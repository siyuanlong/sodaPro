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
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3" name="listTable">
    <tr>
        <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">
            &nbsp;&nbsp;&nbsp;&nbsp;当前位置：
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;soda创业教育平台&nbsp;&nbsp;
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;后台管理&nbsp;&nbsp;
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;用户管理</td>
    </tr>
    <tr>
        <td style="height:34px; background-image:url(../../images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" name="listTable2">
                <tr>
                    <td width="20" height="34"><img src="../../images/main_headerL.gif" width="20" height="34"></td>
                    <td style="color:#90c8e8;"><img src="../../images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>用户管理</strong></td>
                    <td align="right" class="white" style="padding-right:20px"><a href="add.html" class="barBtn" onClick="location.href='add.html'" name="add"><img src="../../images/5.png" align="absmiddle"> 新增</a> <a href="#" class="barBtn" onClick="javascript:history.go(-1);" name="retreat"><img src="../../images/btn_left.gif" align="absmiddle"> 后退</a> <a href="#" class="barBtn" onClick="javascript:history.go(+1);" name="advance"><img src="../../images/btn_right.gif" align="absmiddle"> 前进</a> <a href="#" class="barBtn" name="flush"><img src="../../images/btn_refresh.gif" align="absmiddle" > 刷新</a>
                        <a href="Javascript:checkeDel()" class="barBtn" name="batchDelete"><img src="../../images/6.png" width="16" height="16" align="absmiddle"> 删除</a></td>
                </tr>
            </table></td>
    </tr>
    <tr>
        <td style="height:30px; background-color:#bddbff; border-bottom:1px solid #cfd8e0;"><table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1" name="listTable3">
            <TR>
                <th width="10%" align="center">用户登录名</th>
                <td width="20%" class="BGCgray"><input type="text" name="ur_loginName" id="textfield"></td>
                <th width="10%" align="center">真实姓名</th>
                <td width="20%" class="BGCgray"><input type="text" name="ur_name" id="textfield2"></td>
                <th width="10%" align="center"><STRONG>状态</STRONG></th>
                <td width="20%" class="BGCgray"><select name="ur_state" id="select2">
                    <option>全部</option>
                    <option>启用</option>
                    <option>禁用</option>
                </select></td>
                <th width="10%" align="center"><BUTTON style="HEIGHT:25px" onClick="javascript:location.href='#'" name="dimSelect"><img src="../../images/btn_search.gif" width="16" height="16" align="absmiddle"> 查询</BUTTON></th>
            </TR>
        </table></td>
    </tr>
    <tr>
        <td height="100%" valign="top">
            <div style="overflow:auto;height:100%; width:100%">
                <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1" name="listTable4" >
                    <TR>
                        <th align="center"><input type="checkbox" name="checkbox" id="checkbox"></th>
                        <th align="center">用户姓名</th>
                        <th align="center">登录名</th>
                        <th align="center">联系电话</th>
                        <th align="center">地址</th>
                        <th align="center">邮箱</th>
                        <th align="center">状态</th>
                        <th width="200" align="center">操作</th>
                    </TR>
                    <TR>
                        <TD align="center"><input type="checkbox" name="checkbox2" id="checkbox2"></TD>
                        <TD align="center">张三</TD>
                        <TD align="center">zhangsanss</TD>
                        <TD align="center">13880123123</TD>
                        <TD align="center">成都市金牛区沙湾路21号</TD>
                        <TD align="center">通过</TD>
                        <TD align="center">启用</TD>
                        <TD width="200" align="center"><BUTTON style="height:21px; font-size:12px" onClick="javascript: location.href='detail.html'">查看</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:location.href='edit.html'">编辑</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('是否禁用？')) location.href='#';else return;">禁用</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('是否删除？')) location.href='#';else return;">删除</BUTTON></TD>
                    </TR>
                    <TR>
                        <TD align="center"><input type="checkbox" name="checkbox2" id="checkbox2"></TD>
                        <TD align="center">张三</TD>
                        <TD align="center">zhangsanss</TD>
                        <TD align="center">13880123123</TD>
                        <TD align="center">成都市金牛区沙湾路21号</TD>
                        <TD align="center">通过</TD>
                        <TD align="center">启用</TD>
                        <TD width="200" align="center"><BUTTON style="height:21px; font-size:12px" onClick="javascript:location.href='detail.html'">查看</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:location.href='edit.html'">编辑</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('是否禁用？')) location.href='#';else return;">禁用</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('是否删除？')) location.href='#';else return;">删除</BUTTON></TD>
                    </TR>
                    <TR>
                        <TD align="center"><input type="checkbox" name="checkbox2" id="checkbox2"></TD>
                        <TD align="center">张三</TD>
                        <TD align="center">zhangsanss</TD>
                        <TD align="center">13880123123</TD>
                        <TD align="center">成都市金牛区沙湾路21号</TD>
                        <TD align="center">通过</TD>
                        <TD align="center">启用</TD>
                        <TD width="200" align="center"><BUTTON style="height:21px; font-size:12px" onClick="javascript:location.href='detail.html'">查看</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript: location.href='edit.html'">编辑</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('是否禁用？')) location.href='#';else return;">禁用</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('是否删除？')) location.href='#';else return;">删除</BUTTON></TD>
                    </TR>
                    <TR>
                        <TD align="center"><input type="checkbox" name="checkbox2" id="checkbox2"></TD>
                        <TD align="center">张三</TD>
                        <TD align="center">zhangsanss</TD>
                        <TD align="center">13880123123</TD>
                        <TD align="center">成都市金牛区沙湾路21号</TD>
                        <TD align="center">通过</TD>
                        <TD align="center">启用</TD>
                        <TD width="200" align="center"><BUTTON style="height:21px; font-size:12px" onClick="javascript:location.href='detail.html'">查看</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:location.href='edit.html'">编辑</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('是否禁用？')) location.href='#';else return;">禁用</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('是否删除？')) location.href='#';else return;">删除</BUTTON></TD>
                    </TR>
                    <TR>
                        <TD align="center"><input type="checkbox" name="checkbox2" id="checkbox2"></TD>
                        <TD align="center">张三</TD>
                        <TD align="center">zhangsanss</TD>
                        <TD align="center">13880123123</TD>
                        <TD align="center">成都市金牛区沙湾路21号</TD>
                        <TD align="center">通过</TD>
                        <TD align="center">启用</TD>
                        <TD width="200" align="center"><BUTTON style="height:21px; font-size:12px" onClick="javascript: location.href='detail.html'">查看</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:location.href='edit.html'">编辑</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('是否禁用？')) location.href='#';else return;">禁用</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('是否删除？')) location.href='#';else return;">删除</BUTTON></TD>
                    </TR>
                    <TR>
                        <TD align="center"><input type="checkbox" name="checkbox2" id="checkbox2"></TD>
                        <TD align="center">张三</TD>
                        <TD align="center">zhangsanss</TD>
                        <TD align="center">13880123123</TD>
                        <TD align="center">成都市金牛区沙湾路21号</TD>
                        <TD align="center">通过</TD>
                        <TD align="center">启用</TD>
                        <TD width="200" align="center"><BUTTON style="height:21px; font-size:12px" onClick="javascript:location.href='detail.html'">查看</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:location.href='edit.html'">编辑</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('是否禁用？')) location.href='#';else return;">禁用</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('是否删除？')) location.href='#';else return;">删除</BUTTON></TD>
                    </TR>
                    <TR>
                        <TD align="center"><input type="checkbox" name="checkbox2" id="checkbox2"></TD>
                        <TD align="center">张三</TD>
                        <TD align="center">zhangsanss</TD>
                        <TD align="center">13880123123</TD>
                        <TD align="center">成都市金牛区沙湾路21号</TD>
                        <TD align="center">通过</TD>
                        <TD align="center">启用</TD>
                        <TD width="200" align="center"><BUTTON style="height:21px; font-size:12px" onClick="javascript: location.href='detail.html'">查看</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:location.href='edit.html'">编辑</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('是否禁用？')) location.href='#';else return;">禁用</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('是否删除？')) location.href='#';else return;">删除</BUTTON></TD>
                    </TR>
                    <TR>
                        <TD align="center"><input type="checkbox" name="checkbox2" id="checkbox2"></TD>
                        <TD align="center">张三</TD>
                        <TD align="center">zhangsanss</TD>
                        <TD align="center">13880123123</TD>
                        <TD align="center">成都市金牛区沙湾路21号</TD>
                        <TD align="center">通过</TD>
                        <TD align="center">启用</TD>
                        <TD width="200" align="center"><BUTTON style="height:21px; font-size:12px" onClick="javascript:location.href='detail.html'">查看</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:location.href='edit.html'">编辑</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('是否禁用？')) location.href='#';else return;">禁用</BUTTON> <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('是否删除？')) location.href='#';else return;">删除</BUTTON></TD>
                    </TR>


                </table>
                <table width="100%" border="0" cellspacing="0" cellpadding="0" name="listTable5">
                    <tr>
                        <td width="20%" height="25"><table border="0" cellspacing="0" cellpadding="3">
                            <tr>
                                <td><a href="#" style="color:black;" name="pageFirst" >首页</a></td>
                                <td><a href="#" style="color:black;" name="pageUp">上一页</a></td>
                                <td><a href="#" style="color:black;" name="pageNext">下一页</a></td>
                                <td><a href="#" style="color:black;" name="pageEnd" >尾页</a></td>
                            </tr>
                        </table>
                        </td>
                        <td width="20%" align="center">
                            <table border="0" cellspacing="0" cellpadding="3" name="listTable6">
                                <tr>
                                    <td><a href="#" style="color:black;" name="pageGo">GO</a></td>
                                    <td><input name="pageText" type="text" size="3" style="width:25;height:18">
                                        /页</td>
                                </tr>
                            </table></td>
                        <td width="20%" align="right">共10条记录显示到1/1</td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>
</table>
</body>
</html>