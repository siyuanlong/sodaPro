<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title></title>
    <link href="../../css/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="../../js/main.js"></script>
    <script type="text/javascript" src="/houtai/js/jQuery.js"></script>
    <script type="text/javascript">
        /*返回公告index页面*/
        $(function () {

            $("#btn01").click(function () {
                var neTitle = $("[name=neTitle]").val();
                var neContent = $("[name=neContent]").val();
                var flag = true;

                if (neTitle == null || neTitle == "") {
                    $("#sp01").html("标题不能为空");
                    var flag = false;
                }
                if (neContent == null || neContent == "") {
                    $("#sp02").html("内容不能为空");
                    var flag = false;
                }

                if (flag) {
                    for (var i = 1; i < 3; i++) {
                        $("#sp0" + i).html("");
                    }
                    var confirmflag = confirm("是否确认提交");
                    if (confirmflag) {
                        $("#form01").submit();
                    }
                } else {
                    alert("请修改错误信息");
                }
            })

            $("#btn02").click(function () {
                var returnflag = confirm("您修改的信息还没有提交,确认是否退出？");
                if (returnflag) {
                    history.go(-1);
                }
            })
        })
    </script>
</head>
<body>
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3" name="editTable">
    <tr>
        <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">
            &nbsp;&nbsp;&nbsp;&nbsp;当前位置：
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;soda创业教育平台&nbsp;&nbsp;
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;后台管理&nbsp;&nbsp;
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;soda公告管理
        </td>
    </tr>
    <tr>
        <td style="height:34px; background-image:url(../../images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" name="editTable2">
                <tr>
                    <td width="20" height="34"><img src="../../images/main_headerL.gif" width="20" height="34"></td>
                    <td style="color:#90c8e8;"><img src="../../images/icon_card.gif" width="16" height="16"
                                                    align="absmiddle">&nbsp;&nbsp;
                        <strong>soda公告管理 &nbsp;&nbsp;》》》编辑soda公告</strong></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td height="100%" valign="top">
            <div style="overflow:auto;height:100%; width:100%">
                <form action="/houtai/pages/afficheManage/edit" id="form01" name="ggaddform" method="post">
                    <input type="hidden" value="${notice.neId}" name="neId"/>
                    <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1" name="editTable3">
                        <tr>
                            <td style="text-align:right">标题</td>
                            <td>
                                <input type="text" name="neTitle" value="${notice.neTitle}" style="width:500px"><span id="sp01" style="color: red"></span>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right">作者</td>
                            <td><input type="text" name="authorname" value="Amor" style="width:500px"></td>
                        </tr>
                        <tr>
                            <td style="text-align:right">公告级别</td>
                            <td>
                                <select name="neLevel">
                                    <option value="1" ${notice.neLevel==1?"selected":""}>一般</option>
                                    <option value="2" ${notice.neLevel==2?"selected":""}>紧急</option>
                                    <option value="3" ${notice.neLevel==3?"selected":""}>非常紧急</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right">内容</td>
                            <td><textarea rows="15" cols="60" name="neContent">${notice.neContent}</textarea><span id="sp02" style="color: red"></span>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:right"></td>
                            <td></td>
                        </tr>
                    </table>
                </form>
                <button  id="btn01">提交</button><input type="button" value="返回" id="btn02" name="back">
            </div>
        </td>
    </tr>
</table>
</body>
</html>