<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title></title>
    <link href="../../css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../js/main.js"></script>
    <script type="text/javascript" src="/houtai/js/jQuery.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#btn03").click(function () {
                var loginname= $("[name=stLoginname]").val();
                var stname= $("[name=stName]").val();
                var password= $("[name=stPassword]").val();
                var sexflag= $("[name=stSex]")[0].checked;
                if (sexflag){
                    var sex = 1;
                }else{
                    var sex = 0;
                }
                var idcard= $("[name=stIdcard]").val();
                var phone= $("[name=stPhone]").val();
                var address= $("[name=stAddress]").val();
                var email= $("[name=stEmail]").val();
                var school= $("[name=stSchool]").val();
                var major= $("[name=stMajor]").val();
                var remark = $("[name=stRemark]").val();
                var flag = true;

                if (password==null||password==""){
                    $("#sp02").html("密码不能为空");
                    var flag = false;
                }/*else{
                    $("#sp02").html("");
                }*/
                if (stname==null||stname==""){
                    $("#sp03").html("姓名不能为空");
                    var flag = false;

                }else{
                    $("#sp03").html("");
                }
                if (idcard==null||idcard==""){
                    $("#sp05").html("身份证不能为空");
                    var flag = false;
                } else{
                    /*$("#sp05").html("");*/
                    var regIdNo = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
                    if(!regIdNo.test(idcard)){
                        $("#sp05").html("身份证填写有误");
                        var flag = false;
                    }else if(idcard.length==15&&(idcard.charAt(idcard.length-1))%2!=sex){
                        $("#sp05").html("身份证与性别不匹配");
                        var flag = false;
                    }else if (idcard.length==18&&(idcard.charAt(idcard.length-2))%2!=sex){
                        $("#sp05").html("身份证与性别不匹配");
                        var flag = false;
                    }/*else{
                        $("#sp05").html("");
                    }*/
                }
                if (phone==null||phone==""){
                    $("#sp06").html("手机号码不能为空")
                    var flag = false;
                } else{
                    /*$("#sp06").html("")*/
                    var regphone = /^1([38][0-9]|4[579]|5[0-3,5-9]|6[6]|7[0135678]|9[89])\d{8}$/
                    if (!regphone.test(phone)){
                        $("#sp06").html("手机号码格式不正确")
                        var flag = false;
                    }/*else{
                        $("#sp06").html("")
                    }*/
                }
                if (address==null||address==""){
                    $("#sp07").html("地址不能为空");
                    var flag = false;
                }/*else {
                    $("#sp07").html("");
                }*/
                if (email==null||email==""){
                    $("#sp08").html("邮箱不能为空");
                    var flag = false;
                } else {
                    $("#sp08").html("");
                    var regemail = /^\w+\@+[0-9a-zA-Z]+\.(com|com.cn|edu|hk|cn|net)$/;
                    if (!regemail.test(email)){
                        $("#sp08").html("邮箱格式不正确");
                        var flag = false;
                    }/*else{
                        $("#sp08").html("");
                    }*/
                }
                if(school==null||school==""){
                    $("#sp09").html("学校信息不能为空");
                    var flag = false;
                }/*else{
                    $("#sp09").html("");
                }*/
                if(major==null||major==""){
                    $("#sp10").html("专业信息不能为空");
                    var flag = false;
                }/*else{
                    $("#sp10").html("");
                }*/
                if (remark==null||remark==""){
                    $("#sp11").html("备注不能为空");
                    var flag = false;
                }/*else{
                    $("#sp11").html("");
                }*/

                if (flag){
                    for (var i = 1; i <12 ; i++) {
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
        <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;当前位置： <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;soda创业教育平台&nbsp;&nbsp; <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;后台管理&nbsp;&nbsp; <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;学生管理</td>
    </tr>
    <tr>
        <td style="height:34px; background-image:url(../../images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" name="editTable2">
                <tr>
                    <td width="20" height="34"><img src="../../images/main_headerL.gif" width="20" height="34"></td>
                    <td style="color:#90c8e8;"><img src="../../images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>编辑学生</strong></td>
                    <td align="right" class="white" style="padding-right:20px">
                        <a href="javascript:history.go(-1);" class="barBtn" onClick="javascript:history.go(-1);" name="retreat"><img src="../../images/btn_left.gif" align="absmiddle"> 后退</a>
                        <a href="javascript:history.go(+1);" class="barBtn" onClick="javascript:history.go(+1);" name="advance" ><img src="../../images/btn_right.gif" align="absmiddle"> 前进</a>
                        <a href="/houtai/pages/stu/selectberoreedit?stId=${student.stId}" class="flush" name="homePageFlush"><img src="../../images/btn_refresh.gif" align="absmiddle"> 刷新</a>
                    </td>
                </tr>
            </table></td>
    </tr>
    <tr>
        <td height="100%" valign="top">
            <div style="overflow:auto;height:100%; width:100%">
                <form id="form01" action="/houtai/pages/stu/edit" method="post">
                    <input type="hidden" name="stId" value="${student.stId}"/>
                <table width="100%" border="0" cellpadding="3" cellspacing="1" class="table1" name="editTable3">
                    </TR>
                    <TR>
                        <th align="center"><span class="BGCgray">用户名</span></th>
                        <TD class="BGCgray">
                            <input type="text" value="${student.stLoginname}" name="stLoginname" readonly /><span id="sp01" style="color: red"></span>
                        </TD>
                    <TR>
                        <th align="center"><span class="BGCgray">密码</span></th>
                        <TD class="BGCgray">
                            <input type="text" value=" ${student.stPassword}"  name="stPassword"/><span id="sp02" style="color: red"></span>
                        </TD>
                    <TR>
                        <th align="center"><span class="BGCgray">姓名</span></th>
                        <TD class="BGCgray">
                            <input type="text" value="${student.stName}" name="stName"/><span id="sp03" style="color: red"></span>
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">性别</th>
                        <TD class="BGCgray">
                            <input type="radio" name="stSex" ${student.stSex==1?"checked":""} value="1"/>男
                            <input type="radio" name="stSex" ${student.stSex==0?"checked":""} value="0"/>女<span id="sp04" style="color: red"></span>
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">身份证</th>
                        <TD class="BGCgray">
                            <input type="text" value="${student.stIdcard}" name="stIdcard"/><span id="sp05" style="color: red"></span>
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">联系电话</th>
                        <TD class="BGCgray">
                            <input type="text" value="${student.stPhone}" name="stPhone"/><span id="sp06" style="color: red"></span>
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">现住址</th>
                        <TD class="BGCgray">
                            <input type="text" value="${student.stAddress}" name="stAddress"/><span id="sp07" style="color: red"></span>
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">邮箱</th>
                        <TD class="BGCgray">
                            <input type="text" value="${student.stEmail}" name="stEmail"/><span id="sp08" style="color: red"></span>
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">学校</th>
                        <TD class="BGCgray">
                            <input type="text" value="${student.stSchool}" name="stSchool" /><span id="sp09" style="color: red"></span>
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">专业</th>
                        <TD class="BGCgray">
                            <input type="text" value="${student.stMajor}" name="stMajor"/><span id="sp10" style="color: red"></span>
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">备注</th>
                        <TD class="BGCgray">
                            <textarea rows="6" cols="30" style="resize:none;" name="stRemark">${student.stRemark}</textarea><span id="sp11" style="color: red"></span>
                        </TD>
                    </TR>
                </table>
                </form>
                <div style="width:100%; text-align:center; padding:5px">
                    <%--onClick="javascript:if (confirm('保存信息？')) location.href='list.html';else return;"--%>
                    <BUTTON style="HEIGHT:25px" id="btn03"  name="submit"><img src="../../images/btn_save.gif" width="16" height="16" align="absmiddle"> 保存</BUTTON>
                    <BUTTON style="HEIGHT:25px" onClick="javascript:history.go(-1);"name="back" ><img src="../../images/btn_back.gif" width="16" height="16" align="absmiddle"> 返回</BUTTON>
                </div>
            </div>
        </td>
    </tr>
</table>
</body>
</html>