<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>soda创业教育平台</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link rel="StyleSheet" href="css/dtree.css" type="text/css" />
    <script type="text/javascript" src="js/dtree.js"></script>
    <script type="text/javascript">
        function mainMethod(){
            window.location='login.html';
        }
    </script>
</head>
<body scroll="no">
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" name="mainTable">
    <tr>
        <td height="79" background="images/top_bg.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="500"><img src="images/top_left.jpg" width="500" height="79"></td>
                <td>&nbsp;</td>
                <td width="500" height="79"><table width="100%" border="0" cellspacing="0" cellpadding="0" name="mainTable2">
                    <tr>
                        <td><img src="images/top_right_a.gif" width="500" height="47"></td>
                    </tr>
                    <tr>
                        <td><table width="500" border="0" cellspacing="0" cellpadding="0" name="mainTable3">
                            <tr>
                                <td width="150"><img src="images/top_right_b1.gif" width="150" height="32"></td>
                                <td width="146" height="32" background="images/top_right_b2.gif" class="white">用户：administrator</td>
                                <td width="74"><a href="pages/based/passwd.jsp" target="page" name="account"><img src="images/top_right_b6.gif" width="74" height="32" border="0"></a></td>
                                <td width="50"><a href="login.jsp" name="logout"><img src="images/top_right_b3.gif" width="50" height="32" border="0"></a></td>
                                <td width="50"><a href="#" name="help"><img src="images/top_right_b4.gif" width="50" height="32" border="0"></a></td>
                                <td width="30"><img src="images/top_right_b5.gif" width="30" height="32"></td>
                            </tr>
                        </table></td>
                    </tr>
                </table></td>
            </tr>
        </table></td>
    </tr>
    <tr>
        <td height="100%"><table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0" style="background-repeat: repeat-x;">
            <tr>
                <td width="175" height="100%" valign="top"><table width="175" height="100%" border="0" cellspacing="0" cellpadding="0" background="images/menu_bg.gif">
                    <tr>
                        <td height="25"><img src="images/menu_top.gif" width="175" height="25"></td>
                    </tr>
                    <tr>
                        <td height="100%" style="background-image:url(images/menu_bgT.gif); background-repeat:no-repeat" valign="top"><div class="dtree">
                            <script type="text/javascript">
                                d = new dTree('d');
                                d.config.stepDepth = 1;
                                d.config.useStatusText = true;

                                d.add(0,-1,' <strong>后台管理</strong>');

                                d.add(1,0,'系统管理');
                                d.add(101,1,'新闻管理','pages/newconter/index.jsp',"",'page');
                                d.add(102,1,'公告管理','/houtai/pages/afficheManage/index',"",'page');

                                d.add(103,1,'资讯管理','pages/publicityManage/poineerMessage/index.jsp',"",'page');
                                d.add(104,1,'行业介绍','pages/publicityManage/classManage/index.jsp',"",'page');
                                d.add(105,1,'概况管理','pages/publicityManage/synopsis.jsp',"",'page');
                                d.add(106,1,'关于我们','/houtai/pages/publicityManage/onePageManage/concerningUs',"",'page');
                                d.add(107,1,'版权声明','pages/publicityManage/onePageManage/copyrightState.jsp',"",'page');
                                d.add(108,1,'联系我们','pages/publicityManage/onePageManage/relationUs.jsp',"",'page');


                                d.add(4,0,'课程管理');
                                d.add(401,4,'课程管理','/houtai/pages/class/list',"",'page');
                                d.add(402,4,'学生管理','/houtai/pages/stu/list',"",'page');


                                d.add(5,0,'权限管理');
                                d.add(501,5,'人员管理','pages/user/list.jsp',"",'page');
                                d.add(502,5,'角色管理','pages/role/list.jsp',"",'page');
                                d.add(503,5,'菜单管理','pages/menu/list.jsp',"",'page');



                                d.add(6,0,'个人信息管理');
                                d.add(601,6,'修改密码','pages/personalManager/updatePs.jsp',"",'page');
                                d.add(602,6,'个人信息','pages/personalManager/detail.jsp',"",'page');
                                document.writeln(d);
                            </script>
                        </div></td>
                    </tr>
                    <tr>
                        <td height="31"><img src="images/menu_foot.gif" width="175" height="31"></td>
                    </tr>
                </table></td>
                <td><iframe src="pages/personalManager/detail.jsp" width="100%" height="100%" frameborder="0" scrolling="no" name="page"></iframe></td>
            </tr>
        </table></td>
    </tr>
</table>
</body>
</html>