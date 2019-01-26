<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title></title>
    <link href="../../css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../js/main.js"></script>
    <script type="text/javascript">
        //单个删除
        function delButton(){
            if(confirm("你确定要删除吗？")){
                alert("删除成功！");
            };
        }
        //批量删除
        function checkeDel(){
            var count=0;
            var alls=document.getElementsByName("checkbox2");
            for(var i=0;i<alls.length;i++){
                if(alls[i].checked){
                    count++;
                }
            }
            if(count>0){
                if(confirm("确认要删除吗?")){
                    alert("删除成功!");
                }
            }else{
                alert("请选中要操作的项");
            }
        }
        //导出excel
        function expolExcel(){
            var count=0;
            var alls=document.getElementsByName("checkbox2");
            for(var i=0;i<alls.length;i++){
                if(alls[i].checked){
                    count++;
                }
            }
            if(count>0){
                if(confirm("确认要导出吗?")){
                    alert("成功!");
                }
            }else{
                alert("请选中要操作的项");
            }
        }
        //全选和全不选
        function allCheck(){
            var alls=document.getElementsByName("checkbox2");
            var conterCheck=document.getElementById("checkbox1");
            for(var i=0;i<alls.length;i++){
                if(conterCheck.checked){
                    alls[i].checked=true;
                }else{
                    alls[i].checked=false;
                }
            }
        }
    </script>
</head>
<body>
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3" name="listTable">
    <tr>
        <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">
            &nbsp;&nbsp;&nbsp;&nbsp;当前位置：
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;soda创业教育平台&nbsp;&nbsp;
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;后台管理&nbsp;&nbsp;
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;新闻管理</td>
    </tr>
    <tr>
        <td style="height:34px; background-image:url(../../images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" name="listTable2">
                <tr>
                    <td width="20" height="34"><img src="../../images/main_headerL.gif" width="20" height="34"></td>
                    <td style="color:#90c8e8;"><img src="../../images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>新闻管理</strong></td>
                    <td align="right" class="white" style="padding-right:20px">
                        <a href="Javascript:expolExcel()" class="barBtn" name="export"><img src="../../images/1.png" width="16" height="16" align="absmiddle"> 导出</a>
                        <a href="add.html" class="barBtn" name="add"><img src="../../images/5.png" width="16" height="16" align="absmiddle"> 添加</a>
                        <a href="Javascript:checkeDel()" class="barBtn" name="batchDelete" ><img src="../../images/6.png" width="16" height="16" align="absmiddle"> 删除</a>
                    </td>
                </tr>
            </table></td>
    </tr>
    <tr>
        <td style="height:30px; background-color:#bddbff; border-bottom:1px solid #cfd8e0;"><table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1" name="listTable3">
            <TR>
                <th width="10%" align="center">标题</th>
                <td width="20%" class="BGCgray"><input type="text" name="ns_title" id="textfield"></td>
                <th width="10%" align="center">更新时间</th>
                <td width="20%" class="BGCgray"><input type="text" name="ns_showtime" id="textfield"></td>
                <th width="10%" align="center">是否推荐</th>
                <td width="20%" class="BGCgray"><select name="ns_state" id="select2">
                    <option>全部</option>
                    <option>是</option>
                    <option>否</option>
                </select></td>
                <th width="10%" align="center"><BUTTON style="HEIGHT:25px" onClick="javascript:location.href='#'" name="dimSelect" ><img src="../../images/btn_search.gif" width="16" height="16" align="absmiddle"> 查询</BUTTON></th>
            </TR>
        </table></td>
    </tr>
    <tr>
        <td height="100%" valign="top">
            <div style="overflow:auto;height:100%; width:100%">
                <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1" name="listTable4">
                    <TR>
                        <th align="center"><input type="checkbox" name="checkbox" id="checkbox1" onChange="allCheck()"></th>
                        <th align="center">ID</th>
                        <th align="center">信息标题</th>
                        <th align="center">发布时间</th>
                        <th align="center">是否推荐</th>
                        <th width="180" align="center">操作</th>
                    </TR>
                    <TR>
                        <TD align="center"><input type="checkbox" name="checkbox2" ></TD>
                        <TD align="center">1</TD>
                        <TD align="left"><a href="info.html" style="color:black;">第三节青少年杯，在北京举行。</a></TD>
                        <TD align="center">2013-12-14 12:34:55</TD>
                        <TD align="center"><input type="checkbox" name="checkbox3" checked="checked" ></TD>
                        <TD width="180" align="center">
                            <BUTTON style="height:21px; font-size:12px" onClick="javascript:location.href='info.html'">查看</BUTTON>
                            <BUTTON style="height:21px; font-size:12px" onClick="javascript:location.href='edit.html'">编辑</BUTTON>
                            <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('删除该信息？')) alert('删除成功！');else return;">删除</BUTTON>
                        </TD>
                    </TR>
                    <TR>
                        <TD align="center"><input type="checkbox" name="checkbox2" ></TD>
                        <TD align="center">1</TD>
                        <TD align="left"><a href="info.html" style="color:black;">第三节青少年杯，在北京举行。</a></TD>
                        <TD align="center">2013-12-14 12:34:55</TD>
                        <TD align="center"><input type="checkbox" name="checkbox3" checked="checked" ></TD>
                        <TD width="180" align="center">
                            <BUTTON style="height:21px; font-size:12px" onClick="javascript:location.href='info.html'">查看</BUTTON>
                            <BUTTON style="height:21px; font-size:12px" onClick="javascript:location.href='edit.html'">编辑</BUTTON>
                            <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('删除该信息？')) alert('删除成功！');else return;">删除</BUTTON>
                        </TD>
                    </TR>
                    <TR>
                        <TD align="center"><input type="checkbox" name="checkbox2" ></TD>
                        <TD align="center">1</TD>
                        <TD align="left"><a href="info.html" style="color:black;">第三节青少年杯，在北京举行。</a></TD>
                        <TD align="center">2013-12-14 12:34:55</TD>
                        <TD align="center"><input type="checkbox" name="checkbox3" checked="checked" ></TD>
                        <TD width="180" align="center">
                            <BUTTON style="height:21px; font-size:12px" onClick="javascript:location.href='info.html'">查看</BUTTON>
                            <BUTTON style="height:21px; font-size:12px" onClick="javascript:location.href='edit.html'">编辑</BUTTON>
                            <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('删除该信息？')) alert('删除成功！');else return;">删除</BUTTON>
                        </TD>
                    </TR>
                    <TR>
                        <TD align="center"><input type="checkbox" name="checkbox2" ></TD>
                        <TD align="center">1</TD>
                        <TD align="left"><a href="info.html" style="color:black;">第三节青少年杯，在北京举行。</a></TD>
                        <TD align="center">2013-12-14 12:34:55</TD>
                        <TD align="center"><input type="checkbox" name="checkbox3" checked="checked" ></TD>
                        <TD width="180" align="center">
                            <BUTTON style="height:21px; font-size:12px" onClick="javascript:location.href='info.html'">查看</BUTTON>
                            <BUTTON style="height:21px; font-size:12px" onClick="javascript:location.href='edit.html'">编辑</BUTTON>
                            <BUTTON style="height:21px; font-size:12px" onClick="javascript:if (confirm('删除该信息？')) alert('删除成功！');else return;">删除</BUTTON>
                        </TD>
                    </TR>

                </table>
                <table width="100%" border="0" cellspacing="0" cellpadding="0" name="listTable5">
                    <tr>
                        <td width="20%" height="25"><table border="0" cellspacing="0" cellpadding="3">
                            <tr>
                                <td style="width:60px"></td>
                                <td style="width:60px"><a href="#" name="pageFirst"><span style="color:#000;"  >首页</span></a></td>
                                <td style="width:60px"><a href="#" name="pageUp"><span style="color:#000; " >上一页</span></a></td>
                                <td style="width:30px"><a href="#"><span style="color:#000; ">1</span></a></td>
                                <td style="width:30px"><a href="#"><span style="color:#000; ">2</span></a></td>
                                <td style="width:30px"><a href="#"><span style="color:#000; ">3</span></a></td>
                                <td style="width:30px"><a href="#"><span style="color:#000; ">4</span></a></td>

                                <td style="width:60px"><a href="#" name="pageNext"><span style="color:#000;"  >下一页</span></a></td>
                                <td style="width:60px"><a href="#" name="pageEnd"><span style="color:#000;">尾页</span>></a></td>
                            </tr>
                        </table></td>
                        <td width="20%" align="center"><table border="0" cellspacing="0" cellpadding="3" name="listTable6">
                            <tr>
                                <td><a href="#" name="pageGo" ><img src="../../images/next.gif" width="16" height="16" border="0"></a></td>
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