<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="page" uri="http://java.sun.com/jsp/jstl/pagetaght" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title></title>
    <link href="../../css/style.css" rel="stylesheet" type="text/css"/>
    <script src="/houtai/js/jQuery.js" type="text/javascript"></script>
    <script type="text/javascript" src="../../js/main.js">

    </script>

    <script type="text/javascript">
        /*$(function () {
            $("[name=pageText]")[0].oninput(function () {
                var value = $(this).val();
                if (value!=""){
                    location.href="/houtai/pages/stu/list?value="+value;
                }
            })
        })*/
        $(function () {
            /*go页面跳转*/
            $("[name=pageGo]").click(function () {
                var value = $("[name=pageText]").val();
                var stname = $("#nameid").val();
                var stidcard = $("#cardid").val();
                if (value<=${stupi.pages}){
                    if (${ceId!=null}){
                        location.href = "/houtai/pages/stu/list?index=" + value + "&stName=${stname}&stIdcard=${stidcard}&ceId=${ceId}";
                    }else{
                        location.href = "/houtai/pages/stu/list?index=" + value + "&stName=${stname}&stIdcard=${stidcard}";
                    }
                }else{
                    alert("没有该页码,请重新输入");
                }
            })

            /*模糊查询*/
            $("#btn02").click(function () {
                $("#form02").submit();
            })

            /*全选反选*/
            $("#all").click(function () {
                var flag = $(this)[0].checked;
                var ids = $("[name=stIds]");
                for (var i = 0; i < ids.length; i++) {
                    ids[i].checked = flag;
                }
            })

            //批量删除
            $("#btn05").click(function () {

                var count = 0;
                var ids = $("[name=stIds]");
                var idsObj = new Array();
                for (var i = 0; i < ids.length; i++) {
                    if (ids[i].checked == true) {
                        idsObj.push(ids[i].value);
                        count++;
                    }
                }
                if (count > 0) {
                    var confirmflag = confirm("是否确认删除");
                    if (confirmflag) {
                        if (${ceId==null}){
                            location.href="/houtai/pages/stu/deleteManyStudents?stIds="+idsObj;
                        } else{
                            location.href="/houtai/pages/stu/deleteManyStudents?stIds="+idsObj+"&ceId=${ceId}";
                        }
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
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;soda船业教育平台&nbsp;&nbsp;
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;后台管理&nbsp;&nbsp;
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;学生管理
        </td>
    </tr>
    <tr>
        <td style="height:34px; background-image:url(../../images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" name="listTable2">
                <tr>
                    <td width="20" height="34"><img src="../../images/main_headerL.gif" width="20" height="34"></td>
                    <td style="color:#90c8e8;"><img src="../../images/icon_card.gif" width="16" height="16"
                                                    align="absmiddle">&nbsp;&nbsp;<strong>学生管理</strong></td>
                    <td align="right" class="white" style="padding-right:20px"><a href="add.jsp" class="barBtn"
                                                                                  onClick="location.href='add.jsp'"><a
                            href="add.jsp" class="barBtn" onClick="location.href='add.jsp'" name="add"><img
                            src="../../images/5.png" align="absmiddle"> 新增</a> <a href="#" class="barBtn"
                                                                                  onClick="javascript:history.go(-1);"
                                                                                  name="retreat"><img
                            src="../../images/btn_left.gif" align="absmiddle"> 后退</a> <a href="#" class="barBtn"
                                                                                         onClick="javascript:history.go(+1);"
                                                                                         name="advance"><img
                            src="../../images/btn_right.gif" align="absmiddle"> 前进</a>
                        <a href="/houtai/pages/stu/list" class="barBtn" name="flush"><img src="../../images/btn_refresh.gif" align="absmiddle"> 刷新</a>
                        <button id="btn05" style="background-color: transparent;" class="barBtn" name="batchDelete"><img
                                src="../../images/6.png" width="16" height="16" align="absmiddle"> 删除
                        </button></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td style="height:30px; background-color:#bddbff; border-bottom:1px solid #cfd8e0;">
            <form id="form02" action="/houtai/pages/stu/list" method="post">
                <c:if test="${ceId>0}">
                    <input type="hidden" name="ceId" value="${ceId}"/>
                </c:if>
                <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1" name="listTable3">
                    <TR>
                        <th width="10%" align="center">学生姓名</th>
                        <td width="20%" class="BGCgray"><input type="text" value="${stname}" name="stName"
                                                               id="nameid"></td>
                        <th width="10%" align="center">身份证</th>
                        <td width="20%" class="BGCgray"><input type="text" value="${stidcard}"
                                                               name="stIdcard" id="cardid"></td>
                        <th width="10%" align="center">
                            <BUTTON style="HEIGHT:25px" id="btn02" name="dimSelect"><img
                                    src="../../images/btn_search.gif" width="16" height="16" align="absmiddle"> 查询
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
                            <th align="center">姓名</th>
                            <th align="center">性别</th>
                            <th align="center">年龄</th>
                            <th align="center">学校</th>
                            <th align="center">身份证</th>
                            <th align="center">专业</th>
                            <th width="200" align="center">操作</th>
                        </TR>

                        <c:forEach items="${stupi.list}" var="stu">
                            <TR>
                                <TD align="center"><input type="checkbox" name="stIds" value="${stu.stId}"></TD>
                                <TD align="center">${stu.stName}</TD>
                                <TD align="center">${stu.stSex==1?"男":"女"}</TD>
                                <TD align="center">${stu.stAge}</TD>
                                <TD align="center">${stu.stSchool}</TD>
                                <TD align="center">${stu.stIdcard}</TD>
                                <TD align="center">${stu.stMajor}</TD>
                                <TD width="200" align="center">
                                    <BUTTON style="height:21px; font-size:12px"
                                            onClick="javascript:location.href='/houtai/pages/stu/detail?stId='+${stu.stId}">
                                        查看
                                    </BUTTON>
                                    <BUTTON style="height:21px; font-size:12px"
                                            onClick="javascript:location.href='/houtai/pages/stu/selectberoreedit?stId=${stu.stId}'">
                                        编辑
                                    </BUTTON>
                                    <c:if test="${ceId==null}">
                                    <BUTTON onClick="javascript:location.href='/houtai/pages/stu/deleteStudent?stId=${stu.stId}'"
                                            style="height:21px; font-size:12px">删除
                                    </BUTTON>
                                    </c:if>
                                    <c:if test="${ceId!=null}">
                                    <BUTTON onClick="javascript:location.href='/houtai/pages/stu/deleteStudent?stId=${stu.stId}&ceId=${ceId}'"
                                            style="height:21px; font-size:12px">删除
                                    </BUTTON>
                                    </c:if>
                                </TD>
                            </TR>
                        </c:forEach>
                    </table>
                <c:if test="${ceId==null}">
                    <page:fenyeht url="/houtai/pages/stu/list?stName=${stname}&stIdcard=${stidcard}" pageInfo="${stupi}"/>
                </c:if>
                <c:if test="${ceId>0}">
                    <page:fenyeht url="/houtai/pages/stu/list?stName=${stname}&stIdcard=${stidcard}&ceId=${ceId}" pageInfo="${stupi}"/>
                </c:if>
                <%--<page:fenye url="/houtai/pages/stu/list?stName=${stname}&stIdcard=${stidcard}" pageInfo="${stupi}" pageValue="${pageValue}"/>--%>
                <%-- <table width="100%" border="0" cellspacing="0" cellpadding="0" name="listTable5">
                        <tr>
                            <td width="20%" height="25"><table border="0" cellspacing="0" cellpadding="3">
                                <tr>
                                    <td><a href="#" style="color:black;" name="pageFirst" >首页</a></td>
                                    <td><a href="#" style="color:black;" name="pageUp">上一页</a></td>
                                    <td><a href="#" style="color:black;" name="pageNext" >下一页</a></td>
                                    <td><a href="#" style="color:black;" name="pageEnd">尾页</a></td>
                                </tr>
                            </table>
                            </td>
                            <td width="20%" align="center">
                                <table border="0" cellspacing="0" cellpadding="3" name="listTable6">
                                    <tr>
                                        <td><a href="#" style="color:black;" name="pageGo" >GO</a></td>
                                        <td><input name="pageText" type="text" size="3" style="width:25;height:18" >
                                            /页</td>
                                    </tr>k
                                </table></td>
                            <td width="20%" align="right">共10条记录显示到1/1</td>
                        </tr>
                    </table>--%>
            </div>
        </td>
    </tr>
</table>
</body>
</html>