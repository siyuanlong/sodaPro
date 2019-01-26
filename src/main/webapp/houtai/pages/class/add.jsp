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
        function stateChange(obj){
            var table = document.getElementById("formTable");
            var objVal = obj.value;
            if(objVal == 2){
                var timeInputs = document.getElementsByClassName("time");
                if(timeInputs != null){
                    while(true){
                        if(timeInputs.length <= 0){
                            break;
                        }
                        timeInputs[0].remove();
                    }
                }
                var newElement = document.createElement("tr");
                var newTh = document.createElement("th");
                var newTd = document.createElement("td");
                newElement.className = "file";
                newTh.align = "center";
                newTh.innerHTML = "上传视频";
                newTd.className = "BGCgray";
                newTd.innerHTML = "<input type='file' name='myfile'/>";
                newElement.appendChild(newTh);
                newElement.appendChild(newTd);
                table.appendChild(newElement);
            } else if(objVal == 1){

                var fileInputs = document.getElementsByClassName("file");
                if(fileInputs != null){
                    while(true){
                        if(fileInputs.length <= 0){
                            break;
                        }
                        fileInputs[0].remove();
                    }
                }

                var newElement1 = document.createElement("tr");
                var newElement2 = document.createElement("tr");
                var newTh1 = document.createElement("th");
                var newTd1 = document.createElement("td");

                var newTh2 = document.createElement("th");
                var newTd2 = document.createElement("td");

                newElement1.className = "time";
                newElement2.className = "time";

                newTh1.align = "center";
                newTh2.align = "center";

                newTh1.innerHTML = "开课时间";
                newTh2.innerHTML = "结课时间";


                newTd1.className = "BGCgray";
                newTd2.className = "BGCgray";
                newTd1.innerHTML = "<input type='text'  name='ceOpentime'/>";
                newTd2.innerHTML = "<input type='text'  name='ceEndtime'/>";


                newElement1.appendChild(newTh1);
                newElement1.appendChild(newTd1);

                newElement2.appendChild(newTh2);
                newElement2.appendChild(newTd2);

                table.appendChild(newElement1);
                table.appendChild(newElement2);

            }
        }
    </script>
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
                            $("#sp03").html("该讲师不存在");
                            var flag = false;
                        }else if(a.message=="存在"){
                            $("#sp03").html("");
                        }
                    },"json"
                );
            }
        });

        $("#btn13").click(function () {
            var ceName= $("[name=ceName]").val();
            var ceAddress= $("[name=ceAddress]").val();
            var cetype = $("[name=ceType]")[0].checked;
            if (cetype){
                var ceType = 1;
            }else{
                ceType = 2;
            }
            var ceState= $("[name=ceState]").val();
            var uname= $("[name=uname]").val();
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
            if (uname==null||uname==""){
                $("#sp03").html("讲师不能为空");
                var flag = false;
            }
            if (ceMoney==null||ceMoney==""){
                $("#sp04").html("价格不能为空")
                var flag = false;
            }

            if (ceType==1){
                if (ceOpentime==null||ceOpentime==""){
                    $("#sp05").html("开课时间不能为空");
                    var flag = false;
                }else{
                    var regdate = /^\d{4}(\-|\/|\.)\d{1,2}\1\d{1,2}$/;
                    if (!regdate.test(ceOpentime)){
                        $("#sp05").html("格式不正确");
                        var flag = false;
                    }
                }
                if (ceEndtime==null||ceEndtime==""){
                    $("#sp06").html("毕业时间不能为空");
                    var flag = false;
                }else{
                    var regdate = /^\d{4}(\-|\/|\.)\d{1,2}\1\d{1,2}$/;
                    if (!regdate.test(ceOpentime)){
                        $("#sp06").html("格式不正确");
                        var flag = false;
                    }
                }
            }

            if (flag){
                for (var i = 1; i <7 ; i++) {
                    $("#sp0"+i).html("");
                }
                var confirmflag = confirm("是否确认");
                if(confirmflag) {
                    if (ceType==1){
                        $("#form01").submit();
                    }else if(ceType==2){
                        $("#form01")[0].enctype = "multipart/form-data";
                        $("#form01").submit();
                    }
                }
            }else{
                alert("请修改错误信息");
            }
        })

    })
    </script>
</head>
<body>
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3" name="addTable">
    <tr>
        <td style="height:25px; background-color:#f3f3f3; font-weight:bold" valign="top">
            &nbsp;&nbsp;&nbsp;&nbsp;当前位置：
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;soda创业教育平台&nbsp;&nbsp;
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;后台管理&nbsp;&nbsp;
            <img src="../../images/arrow.gif" align="absmiddle">&nbsp;&nbsp;课程管理</td>
    </tr>
    <tr>
        <td style="height:34px; background-image:url(../../images/main_header.gif); border-bottom:1px solid #cfd8e0; padding:0px">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" name="addTable2">
                <tr>
                    <td width="20" height="34"><img src="../../images/main_headerL.gif" width="20" height="34"></td>
                    <td style="color:#90c8e8;"><img src="../../images/icon_card.gif" width="16" height="16" align="absmiddle">&nbsp;&nbsp;<strong>添加课程</strong></td>
                    <td align="right" class="white" style="padding-right:20px">
                        <a href="javascript:history.go(-1);" class="barBtn" onClick="javascript:history.go(-1);" name="retreat" ><img src="../../images/btn_left.gif" align="absmiddle"> 后退</a>
                        <a href="javascript:history.go(+1);" class="barBtn" onClick="javascript:history.go(+1);"  name="advance"><img src="../../images/btn_right.gif" align="absmiddle"> 前进</a>
                        <a href="add.jsp" class="barBtn" name="flush"><img src="../../images/btn_refresh.gif" align="absmiddle" > 刷新</a>
                    </td>
                </tr>
            </table></td>
    </tr>
    <tr>
        <td height="100%" valign="top">
            <div style="overflow:auto;height:100%; width:100%">
            <form id="form01" action="/houtai/pages/class/add" method="post">
                <table width="100%" id="formTable" border="0" cellpadding="3" cellspacing="1" class="table1" name="addTable3">
                    <TR>
                        <th width="20%" align="center">课程名</th>
                        <TD class="BGCgray">
                            <input type="text" name="ceName"/><span id="sp01" style="color: red"></span>
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">上课地点</th>
                        <TD width="80%" class="BGCgray">
                            <input type="text"  name="ceAddress"/><span id="sp02" style="color: red"></span>
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">课程类型</th>
                        <TD class="BGCgray">
                            <input type="radio" name="ceType"  checked="checked" value="1" onFocus="stateChange(this)"  />现场教学
                            <input type="radio" name="ceType"  value="2" onFocus="stateChange(this)"  />在线教育
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">状态</th>
                        <TD class="BGCgray">
                            <select name="ceState"  >
                                <option value="0">可报名</option>
                                <option value="1">报名已结束</option>
                                <option value="2">可购买</option>
                                <option value="3">已下架</option>
                            </select>
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">讲师</th>
                        <TD class="BGCgray">
                            <input type="text" value="李素" id="inp_judgename" name="uname"/><span id="sp03" style="color: red"></span>
                        </TD>
                    </TR>
                    <TR>
                        <th align="center">价格</th>
                        <TD class="BGCgray">
                            <input type="text"  name="ceMoney"/><span id="sp04" style="color: red"></span>
                        </TD>
                    </TR>
                    <TR class="time">
                        <th align="center">开课时间</th>
                        <TD class="BGCgray">
                            <input type="text"  name="ceOpentime"/><span id="sp05" style="color: red"></span>
                        </TD>
                    </TR>
                    <TR class="time">
                        <th align="center">预计结课时间</th>
                        <TD class="BGCgray">
                            <input type="text"  name="ceEndtime"/><span id="sp06" style="color: red"></span>
                        </TD>
                    </TR>
                </table>
            </form>
                <div style="width:100%; text-align:center; padding:5px">
                    <BUTTON style="HEIGHT:25px" id="btn13" name="subimt"><img src="../../images/btn_save.gif" width="16" height="16" align="absmiddle">保存</BUTTON>
                    <BUTTON style="HEIGHT:25px" onClick="javascript:history.go(-1);" name="back" ><img src="../../images/btn_back.gif" width="16" height="16" align="absmiddle">返回</BUTTON>
                </div>
            </div>
        </td>
    </tr>
</table>
</body>
</html>