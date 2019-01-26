<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="page" uri="http://java.sun.com/jsp/jstl/pagetaght" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title></title>
    <link href="../../css/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="../../js/main.js"></script>
    <script type="text/javascript" src="/houtai/js/jQuery.js"></script>
    <script type="text/javascript">
        $(function () {
            /*司_课程信息模糊查询*/
            $("#btn08").click(function () {
                $("#form01").submit();
            })

            /*司_go页面查询*/
            $("[name=pageGo]").click(function () {
                var value = $("[name=pageText]").val();
                if (value <=${coupi.pages}) {
                    location.href = "/houtai/pages/class/list?index=" + value + "&came=${cname}";
                } else {
                    alert("没有该页码,请重新输入");
                }
            })

            /*全选反选*/
            $("#all").click(function () {
                var flag = $(this)[0].checked;
                var ids = $("[name=couIds]");
                for (var i = 0; i < ids.length; i++) {
                    ids[i].checked = flag;
                }
            })

            //批量删除
            $("#btn11").click(function () {

                var count = 0;
                var ids = $("[name=couIds]");
                var idsObj = new Array();
                for (var i = 0; i < ids.length; i++) {
                    if (ids[i].checked == true) {
                        alert(ids[i].value);
                        idsObj.push(ids[i].value);
                        count++;
                    }
                }
                if (count > 0) {
                    var confirmflag = confirm("是否确认删除");
                    if (confirmflag) {
                        location.href = "/houtai/pages/class/deleteManyCourses?couIds=" + idsObj;
                    }
                }
                else {
                    alert("未选择任何记录");
                }
            })

        })
    </script>
</head>
<body>
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3" name="listTable">
    <tr>
        <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">
            &nbsp;&nbsp;&nbsp;&nbsp;当前位置：
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;soda创业教育平台&nbsp;&nbsp;
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;后台管理&nbsp;&nbsp;
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;课程管理
        </td>
    </tr>
    <tr>
        <td style="height:34px; background-image:url(../../images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" name="listTable2">
                <tr>
                    <td width="20" height="34"><img src="../../images/main_headerL.gif" width="20" height="34"></td>
                    <td style="color:#90c8e8;"><img src="../../images/icon_card.gif" width="16" height="16"
                                                    align="absmiddle">&nbsp;&nbsp;<strong>课程管理</strong></td>
                    <td align="right" class="white" style="padding-right:20px"><a href="add.jsp" class="barBtn"
                                                                                  onClick="location.href='add.jsp'"
                                                                                  name="add"><img
                            src="../../images/5.png" align="absmiddle"> 新增</a> <a href="#" class="barBtn"
                                                                                  onClick="javascript:history.go(-1);"
                                                                                  name="retreat"><img
                            src="../../images/btn_left.gif" align="absmiddle"> 后退</a> <a href="#" class="barBtn"
                                                                                         onClick="javascript:history.go(+1);"
                                                                                         name="advance"><img
                            src="../../images/btn_right.gif" align="absmiddle"> 前进</a>
                        <a href="/houtai/pages/class/list" class="barBtn" name="flush"><img src="../../images/btn_refresh.gif" align="absmiddle"> 刷新</a>
                        <button id="btn11" style="background-color: transparent;" class="barBtn" name="batchDelete"><img
                                src="../../images/6.png" width="16" height="16" align="absmiddle"> 删除
                        </button>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td style="height:30px; background-color:#bddbff; border-bottom:1px solid #cfd8e0;">
            <form id="form01" action="/houtai/pages/class/list" method="post">
                <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1" name="listTable3">
                    <TR>
                        <th width="10%" align="center">课程名称</th>
                        <td width="20%" class="BGCgray"><input type="text" value="${cname}" name="cname"
                                                               id="coursename"></td>
                        <th width="10%" align="center">
                            <BUTTON style="HEIGHT:25px" id="btn08" name="dimSelect"><img
                                    src="../../images/btn_search.gif" width="16" height="16" align="absmiddle">查询
                            </BUTTON>
                        </th>
                    </TR>
                </table>
            </form>
        </td>
    </tr>
    <tr>
        <td height="100%" valign="top">
            <div style="overflow:auto;height:100%; width:100%">

                <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1" name="listTable4">

                    <TR>
                        <th align="center"><input type="checkbox" name="checkbox" id="all"></th>
                        <th align="center">课程名</th>
                        <th align="center">地点</th>
                        <th align="center">课程类型</th>
                        <th align="center">课程状态</th>
                        <th align="center">讲师</th>
                        <th align="center">金额</th>
                        <th width="200" align="center">操作</th>
                    </TR>

                    <c:forEach items="${coupi.list}" var="cou">
                        <TR>
                            <TD align="center"><input type="checkbox" name="couIds" value="${cou.ceId}"></TD>
                            <TD align="center">${cou.ceName}</TD>
                            <TD align="center">${cou.ceAddress}</TD>
                            <TD align="center">${cou.ceType==1?"现场教学":"在线教育"}</TD>
                            <TD align="center">${cou.ceState==0?"可报名":cou.ceState==1?"报名已结束":cou.ceState==2?"可购买":"已下架"}</TD>
                            <TD align="center">${cou.user.urName}</TD>
                            <TD align="center">${cou.ceMoney}</TD>
                            <TD width="200" align="center">
                                <BUTTON style="height:21px; font-size:12px"
                                        onClick="javascript:location.href='/houtai/pages/class/selectOneCourse?ceId=${cou.ceId}'">
                                    查看
                                </BUTTON>
                                <BUTTON style="height:21px; font-size:12px"
                                        onClick="javascript:location.href='/houtai/pages/class/selectbeforeedit?ceId=${cou.ceId}'">
                                    编辑
                                </BUTTON>
                                <c:if test="${cou.ceState==0}">
                                <BUTTON style="height:21px; font-size:12px" id="btn12" onClick="javascript:location.href='/houtai/pages/class/updateJk?ceId=${cou.ceId}&ceState=1'">结课</BUTTON>
                            </TD>
                            </c:if>
                            <c:if test="${cou.ceState==2}">
                                <BUTTON style="height:21px; font-size:12px" id="btn13" onClick="javascript:location.href='/houtai/pages/class/updateJk?ceId=${cou.ceId}&ceState=3'">下架</BUTTON>
                                </TD>
                            </c:if>
                        </TR>
                    </c:forEach>
                </table>
                <%--课程状态对应:0-可报名;1-报名已结束;2-可购买;3-已下架--%>
                <%--课程类型对应:1-现场教学;2-在线教育--%>
                <page:fenyeht url="/houtai/pages/class/list?cname=${cname}" pageInfo="${coupi}"></page:fenyeht>
            </div>
        </td>
    </tr>
</table>
</body>
</html>