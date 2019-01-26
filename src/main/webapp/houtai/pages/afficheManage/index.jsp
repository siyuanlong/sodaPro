<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="p" uri="http://java.sun.com/jsp/jstl/pagetaght" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title></title>
    <link href="../../css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/houtai/js/jQuery.js"></script>
    <script type="text/javascript" src="../../js/main.js"></script>
    <script type="text/javascript">
       $(function () {

           /*go页面跳转*/
           $("[name=pageGo]").click(function () {
               var value = $("[name=pageText]").val();
               alert("hello");
               if (value<=${noticepi.pages}){
                   location.href = "/houtai/pages/afficheManage/index?index=" + value + "&title=${title}&updatetime=${updatetime}&level=${level}";
               }else{
                   alert("没有该页码,请重新输入");
               }
           })

           $("#btn06").click(function () {
               var count = 0;
               var dcids = $("[name=nids]");
               var idsObj1 = new Array();
               for (var i = 0; i < dcids.length; i++) {
                   if (dcids[i].checked == true) {
                       idsObj1.push(dcids[i].value);
                       count++;
                   }
               }
               if (count > 0) {
                   var confirmflag1 = confirm("是否确认导出");
                   if (confirmflag1) {
                       location.href="/houtai/pages/afficheManage/exportNotices?nids="+idsObj1;
                   }
               }
               else {
                   alert("未选择任何记录");
               }
           })

           /*全选反选*/
           $("#all").click(function () {
               var flag = $(this)[0].checked;
               var ids = $("[name=nids]");
               for (var i = 0; i < ids.length; i++) {
                   ids[i].checked = flag;
               }
           })

           /*模糊查询*/
           $("#btn01").click(function () {
               $("#form01").submit();
           })

           //批量删除
           $("#btn02").click(function () {

               var count = 0;
               var ids = $("[name=nids]");
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
                       location.href="/houtai/pages/afficheManage/deleteManyNotices?nids="+idsObj;
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
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3" name="indexTable">
    <tr>
        <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">
            &nbsp;&nbsp;&nbsp;&nbsp;当前位置：
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;soda创业教育平台&nbsp;&nbsp;
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;后台管理&nbsp;&nbsp;
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;soda公告管理</td>
    </tr>
    <tr>
        <td style="height:34px; background-image:url(../../images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" name="indexTable2">
                <tr>
                    <td width="20" height="34"><img src="../../images/main_headerL.gif" width="20" height="34"></td>
                    <td style="color:#90c8e8;"><img src="../../images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>soda公告管理</strong></td>
                    <td align="right" class="white" style="padding-right:20px">
                        <button id="btn06" style="background-color: transparent" class="barBtn" name="ggindexexcel"><img src="../../images/1.png" width="16" height="16" align="absmiddle" name="export"> 导出</button>
                        <a href="add.jsp" class="barBtn" name="add"><img src="../../images/5.png" width="16" height="16" align="absmiddle"> 添加</a>
                        <button id="btn02" style="background-color: transparent" class="barBtn" name="batchDelete"><img src="../../images/6.png" width="16" height="16" align="absmiddle" > 删除</button>
                    </td>
                </tr>
            </table></td>
    </tr>
    <tr>
        <td style="height:30px; background-color:#bddbff; border-bottom:1px solid #cfd8e0;">
            <form action="/houtai/pages/afficheManage/index" method="post">
                <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1"  name="indexTable3">
                    <TR>
                        <th width="10%" align="center">标题</th>
                        <td width="20%" class="BGCgray"><input type="text" value="${title}" name="title" id="netitle"></td>
                        <th width="10%" align="center">更新时间</th>
                        <td width="20%" class="BGCgray"><input type="date" value="${updatetime}" name="updatetime" id="neupdatetime"></td>
                        <th width="10%" align="center">公告级别</th>
                        <td width="20%" class="BGCgray"><select name="level" id="select2" >
                            <option selected value="">全部</option>
                            <option value="1">一般</option>
                            <option value="2">紧急</option>
                            <option value="3">非常紧急</option>
                        </select></td>
                        <th width="10%" align="center"><BUTTON id="btn01" style="HEIGHT:25px" name="dimSelect"><img src="../../images/btn_search.gif" width="16" height="16" align="absmiddle">查询</BUTTON></th>
                    </TR>
                </table>
        </form>
        </td>
    </tr>
    <tr>
        <td height="100%" valign="top">
            <div style="overflow:auto;height:100%; width:100%">
                <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1" name="indexTable4">
                    <TR>
                        <th align="center"><input type="checkbox" name="checkbox" id="all" value=""></th>
                        <th align="center">ID</th>
                        <th align="center">标题</th>
                        <th align="center">更新日期</th>
                        <th align="center">公告级别</th>
                        <th width="180" align="center">操作</th>
                    </TR>

                    <%--状态:一般--1 紧急--2 非常紧急--3--%>
                <c:forEach items="${noticepi.list}" var="notice">
                    <TR>
                        <TD align="center"><input type="checkbox" value="${notice.neId}" name="nids" ></TD>
                        <TD align="center">${notice.neId}</TD>
                        <TD align="left"><a href="lookImpl.jsp" style="color:black;">${notice.neTitle}</a></TD>
                        <TD align="center"><fmt:formatDate value="${notice.neUpdatetime}" pattern="yyyy/MM/dd"></fmt:formatDate></TD>
                        <TD align="center">${notice.neLevel==1?"一般":notice.neLevel==2?"紧急":"非常紧急"}</TD>
                        <TD width="180" align="center">
                            <BUTTON style="height:21px; font-size:12px" onClick="javascript:location.href='/houtai/pages/afficheManage/selectOneNotice?nid=${notice.neId}'">查看</BUTTON>
                            <BUTTON style="height:21px; font-size:12px" onClick="javascript:location.href='/houtai/pages/afficheManage/selectbeforeedit?nid=${notice.neId}'">编辑</BUTTON>
                            <BUTTON style="height:21px; font-size:12px" id="btn04" onClick="javascript:var confirmflag = confirm('是否确认删除');alert(${notice.neId});if (confirmflag) {location.href='/houtai/pages/afficheManage/deleteNotice?nid=${notice.neId}'}">删除</BUTTON>
                        </TD>
                    </TR>
                </c:forEach>
                </table>
                <p:fenyeht url="/houtai/pages/afficheManage/index?title=${title}&updatetime=${updatetime}&level=${level}" pageInfo="${noticepi}"></p:fenyeht>
            </div>
        </td>
    </tr>
</table>
</body>
</html>