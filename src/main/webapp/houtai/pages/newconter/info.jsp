<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title></title>
    <link href="../../css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../js/main.js"></script>
    <script type="text/javascript">
        function goBack(){
            location.href="index.html"
        }
    </script>
</head>
<body>
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3" name="infoTable">
    <tr>
        <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">
            &nbsp;&nbsp;&nbsp;&nbsp;当前位置：
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;soda创业教育平台&nbsp;&nbsp;
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;后台管理&nbsp;&nbsp;
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;新闻管理</td>
    </tr>
    <tr>
        <td style="height:34px; background-image:url(../../images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
            <table width="100%" border="0" cellspacing="0" cellpadding="0"  name="infoTable2">
                <tr>
                    <td width="20" height="34"><img src="../../images/main_headerL.gif" width="20" height="34"></td>
                    <td style="color:#90c8e8;"><img src="../../images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;
                        <strong>新闻管理 &nbsp;&nbsp;》》》	添加新闻</strong></td>
                </tr>
            </table></td>
    </tr>
    <tr>
        <td height="100%" valign="top">
            <div style="overflow:auto;height:100%; width:100%">
                <form action="index.html" method="post"  name="infoForm">
                    <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1" name="infoTable3">
                        <tr>
                            <td style="text-align:right">标题</td>
                            <td>第三节青少年杯，在北京举行。</td>
                        </tr>
                        <tr>
                            <td style="text-align:right">作者</td>
                            <td>Amor</td>
                        </tr>
                        <tr>
                            <td style="text-align:right">访问量</td>
                            <td>100</td>
                        </tr>
                        <tr>
                            <td style="text-align:right">是否推荐</td>
                            <td>是</td>
                        </tr>
                        <tr>
                            <td style="text-align:right">内容</td>
                            <td>中软高科，我最棒，中软高科，我最帅。哈哈哈哈哈哈</td>
                        </tr>
                        <tr>
                            <td style="text-align:right"></td>
                            <td>
                                <input type="button" value="返回" onClick="Javascript:goBack()" name="back"  ></td>
                        </tr>
                    </table>
                </form>
            </div>
        </td>
    </tr>
</table>
</body>
</html>