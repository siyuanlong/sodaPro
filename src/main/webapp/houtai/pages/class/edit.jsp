<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title></title>
    <link href="../../css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../js/main.js"></script>
    <script type="text/javascript" src="/houtai/js/jQuery.js"></script>
    <script type="text/javascript">
        $(function () {

            $("#inp_judgename").blur(function () {
                var uname = $(this).val();
                if (uname==null||uname==""){
                    alert("讲师姓名不能为空");
                }else{
                    $.get(
                        "/houtai/pages/class/judgename",
                        {"uname":uname},
                        function (a) {
                            if (a.message=="不存在"){
                                $("#sp04").html("该讲师不存在");
                            }else if(a.message=="存在"){
                                $("#sp04").html("");
                            }
                        },"json"
                    );
                }
            });

            $("#btn10").click(function () {
                var ceName= $("[name=ceName]").val();
                var ceAddress= $("[name=ceAddress]").val();
                var ceState= $("[name=ceState]").val();
                var urName= $("[name=uname]").val();
                var ceMoney= $("[name=ceMoney]").val();
                var ceOpentime= $("[name=ceOpentime]").val();
                var ceEndtime= $("[name=ceEndtime]").val();
                var flag = true;

                if (ceName==null||ceName==""){
                    $("#sp01").html("课程名不能为空");
                    var flag = false;
                }
                if (ceAddress==null||ceAddress==""){
                    $("#sp02").html("上课地点不能为空");
                    var flag = false;
                }
                if (ceState==null||ceState==""){
                    $("#sp03").html("必须选择课程状态");
                    var flag = false;
                }
                if (urName==null||urName==""){
                    $("#sp04").html("讲师不能为空");
                    var flag = false;
                }
                if (ceMoney==null||ceMoney==""){
                    $("#sp05").html("价格不能为空")
                    var flag = false;
                }

                if (${ecourse.ceType==1}){
                    if (ceOpentime==null||ceOpentime==""){
                        $("#sp06").html("开课时间不能为空");
                        var flag = false;
                    }else{
                        var regdate = /^\d{4}(\-|\/|\.)\d{1,2}\1\d{1,2}$/;
                        if (!regdate.test(ceOpentime)){
                            $("#sp06").html("格式不正确");
                            var flag = false;
                        }
                    }
                    if (ceEndtime==null||ceEndtime==""){
                        $("#sp07").html("毕业时间不能为空");
                        var flag = false;
                    }else{
                        var regdate = /^\d{4}(\-|\/|\.)\d{1,2}\1\d{1,2}$/;
                        if (!regdate.test(ceOpentime)){
                            $("#sp07").html("格式不正确");
                            var flag = false;
                        }
                    }
                }

                if (flag){
                    for (var i = 1; i <8 ; i++) {
                        $("#sp0"+i).html("");
                    }
                    var confirmflag = confirm("是否确认");
                    if(confirmflag) {
                        $("#form01").submit();
                    }
                }else{
                    alert("请修改错误信息");
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
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;课程管理</td>
    </tr>
    <tr>
        <td style="height:34px; background-image:url(../../images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" name="editTabl2e">
                <tr>
                    <td width="20" height="34"><img src="../../images/main_headerL.gif" width="20" height="34"></td>
                    <td style="color:#90c8e8;"><img src="../../images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>修改课程</strong></td>
                    <td align="right" class="white" style="padding-right:20px">
                        <a href="javascript:history.go(-1);" class="barBtn" onClick="javascript:history.go(-1);" name="retreat" ><img src="../../images/btn_left.gif" align="absmiddle"> 后退</a>
                        <a href="javascript:history.go(+1);" class="barBtn" onClick="javascript:history.go(+1);" name="advance"><img src="../../images/btn_right.gif" align="absmiddle"> 前进</a>
                        <a href="#" class="barBtn" name="flush"><img src="../../images/btn_refresh.gif" align="absmiddle"  > 刷新</a>
                    </td>
                </tr>
            </table></td>
    </tr>
    <tr>
        <td height="100%" valign="top">
            <div style="overflow:auto;height:100%; width:100%">
                <form id="form01" action="/houtai/pages/class/edit" method="post">
                    <input type="hidden" value="${ecourse.ceId}" name="ceId"/>
                <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1" name="editTable3">
                    <TR>
                        <th width="20%" align="center">课程名</th>
                        <TD class="BGCgray"><input type="text" value="${ecourse.ceName}" name="ceName"/><span id="sp01" style="color: red"></span></TD>
                    </TR>
                    <TR>
                        <th align="center">上课地点</th>
                        <TD width="80%" class="BGCgray">
                            <input type="text" value="${ecourse.ceAddress}" name="ceAddress"/><span id="sp02" style="color: red"></span>
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">课程类型</th>
                        <TD class="BGCgray">
                            <%--课程类型对应:1-现场教学;2-在线教育--%>
                            ${ecourse.ceType==1?"现场教学":"在线教育"}
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">状态</th>
                        <TD class="BGCgray">
                            <select name="ceState" >
                                    <option value="0" ${ecourse.ceState==0?"selected":""}>可报名</option>
                                    <option value="1" ${ecourse.ceState==1?"selected":""}>报名已结束</option>
                                    <option value="2" ${ecourse.ceState==2?"selected":""}>可购买</option>
                                    <option value="3" ${ecourse.ceState==3?"selected":""}>已下架</option>
                            </select><span id="sp03" style="color: red"></span>
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">讲师</th>
                        <TD class="BGCgray">
                            <input type="text" value="${ecourse.user.urName}" id="inp_judgename" name="uname"/><span id="sp04" style="color: red"></span>
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">价格</th>
                        <TD class="BGCgray">
                            <input type="text" value="${ecourse.ceMoney}" name="ceMoney"/><span id="sp05" style="color: red"></span>
                        </TD>
                    </TR>
                    <c:if test="${ecourse.ceType==1}">
                        <TR>
                            <th align="center">开课时间</th>
                            <TD class="BGCgray">
                                <input type="text" name="ceOpentime" value="<fmt:formatDate value='${ecourse.ceOpentime}' pattern='yyyy/MM/hh'></fmt:formatDate>"/><span id="sp06" style="color: red"></span>
                            </TD>
                        </TR>
                        <TR>
                            <th align="center">预计结课时间</th>
                            <TD class="BGCgray">
                                <input type="text" name="ceEndtime" value="<fmt:formatDate value='${ecourse.ceEndtime}' pattern='yyyy/MM/hh'></fmt:formatDate>"/><span id="sp07" style="color: red"></span>
                            </TD>
                        </TR>
                    </c:if>
                </table>
                </form>
                <div style="width:100%; text-align:center; padding:5px">
                    <BUTTON style="HEIGHT:25px" id="btn10" name="sbumit"><img src="../../images/btn_save.gif" width="16" height="16" align="absmiddle">保存</BUTTON>
                    <BUTTON style="HEIGHT:25px" onClick="javascript:history.go(-1);" name="back"><img src="../../images/btn_back.gif" width="16" height="16" align="absmiddle"> 返回</BUTTON>
                </div>
            </div>
        </td>
    </tr>
</table>
</body>
</html>