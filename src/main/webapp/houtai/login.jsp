<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>soda教育后台管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <script src="js/main.js" type="text/javascript"></script>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll="no">
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0" name="loginTable" >
    <tr>
        <td height="100%" align="center" bgcolor="#e3efff">
            <table width="762" height="435" border="0" cellpadding="0" cellspacing="0" background="images/loginBg.gif" name="loginTable2">
                <tr>
                    <td><table border="0" align="center" cellpadding="0" cellspacing="7" name="loginTable3">
                        <tr>
                            <td>用户名：</td>
                            <td><input name="ur_loginName" type="text" class="inputbox" style="width:160px;hight:20px" ></td>
                        </tr>
                        <tr>
                            <td>密　码：</td>
                            <td><input name="ur_password" type="text" class="inputbox" style="width:160px;hight:20px"></td>
                        </tr>
                        <tr>
                            <td>验证码：</td>
                            <td><input name="verification"  type="text" class="inputbox" style="width:160px;hight:20px"></td>
                            <td><img src=""></td>
                        </tr>
                        <tr>
                            <td height="100" colspan="2" valign="top"><table border="0" align="center" cellpadding="0" cellspacing="5">
                                <tr>
                                    <td align="center"><BUTTON style="HEIGHT:25px" onClick="javascript:location.href='main.jsp'" name="submit"><img src="images/login_enter.gif" width="16" height="16" align="absmiddle"> 登录</BUTTON></td>
                                    <td align="center"><BUTTON style="HEIGHT:25px" name="reset"><img src="images/login_cancel.gif" width="16" height="16" align="absmiddle" > 重置</BUTTON></td>
                                </tr>
                            </table></td>
                        </tr>
                    </table></td>
                </tr>
            </table></td>
    </tr>
</table>
</body>
</html>