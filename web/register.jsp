<%--
  Created by IntelliJ IDEA.
  User: haichong
  Date: 2016/10/15
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    String sign = request.getParameter("registersign");
    if ("1".equals(sign)) {
        out.print("<script language='javascript'>alert('�ֻ��Ż������Ѵ���');</script>");
    }
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <link href="<%=basePath%>style/bootstrapDemo.css" rel="stylesheet"
          type="text/css"/>
    <link href="<%=basePath%>style/register.css" rel="stylesheet"
          type="text/css"/>
    <style type="text/css">
        body {
            background-image: url("<%=basePath%>image/bkg2.jpg");
            background-size: cover;
        }

    </style>
    <base href="<%=basePath%>">
    <title>ע��</title>
    <script language="JavaScript" src="jquery-3.1.1.js"></script>
    <script language="JavaScript">
        var flag = false;

        function check_num(){
            var num =document.getElementById("num").value;
            if (num === "") {
                document.getElementById("CheckNum").innerHTML = "�������û����";
                flag = false;
            } else {
                document.getElementById("CheckNum").innerHTML = "";
                flag = true;
            }
        }

        function check_passBlank() {
            var password1 = document.getElementById("vote_password").value;
            if (password1 === "") {
                document.getElementById("CheckPass1").innerHTML = "����������";
                flag = false;
            } else {
                document.getElementById("CheckPass1").innerHTML = "";
                flag = true;
            }
        }

        function check_username() {
            var password1 = document.getElementById("vote_password").value;
            var password2 = document.getElementById("vote_password2").value;

            if (password1 === password2) {
                document.getElementById("CheckPass2").innerHTML = "";
                flag = true;
            }
            else {
                document.getElementById("CheckPass2").innerHTML = "�������벻һ��";
                flag = false;
            }
        }
        function checkForm() {
            return flag;
        }
    </script>
</head>
<body>
<form name="form1" action="register.do" method="post" onsubmit="return checkForm();">
    <div>
        <div id="login_div" style="color: #ffffff;">
            <img alt="��ӭ" src="<%=basePath%>image/sucai02.jpg"
                 style="height:45px;width:45px;float: left;"/>
            <h2 style="text-align: center;height:45px; padding-top:5px;margin-top: 0;margin-bottom: 0;">
                lhzͶƱϵͳע�����</h2>
        </div>
        <div id="register_div" style="margin-top: 30px;">
            <table id="table1"
                   style="border: solid 2px #2891F8; color: #ffffff; margin: auto;" width="445px;">
                <tr style="margin-top: 0;">
                    <td style="height: 70px;width:100px">
                        <img ID="Image2" alt="����" style="height: 70px; width: 70px; margin-left: 20px;"
                             src="<%=basePath%>image/sucai01.jpg"/></td>
                    <td style="font-size: 25pt;height: 70px;">�û�ע��</td>
                </tr>
                <!--�û����-->
                <tr>
                    <td style="text-align: right;">�û���ţ�</td>
                    <td>
                        <input ID="id" name="id"
                               class="form-control has-error inputtd"
                               onblur="check_num()"/>
                        <span style="color:red; margin-left:10px; text-align:center;" id="CheckNum"></span>
                    </td>
                </tr>
                <!--�û���-->
                <tr style="margin-top: 0;">
                    <td style="text-align: right;">�û�����</td>
                    <td>
                        <input type="text" ID="vote_username" name="vote_username"
                               class="form-control has-error inputtd"/>
                        <span style="color:red; margin-left:10px; text-align:center;" id="CheckName"></span>
                    </td>
                </tr>
                <!--����-->
                <tr>
                    <td style="text-align: right;">���룺</td>
                    <td>
                        <input type="password" ID="vote_password" name="vote_password"
                               class="form-control has-error inputtd"
                               onblur="check_passBlank()"/>
                        <span style="color:red; margin-left:10px; text-align:center;" id="CheckPass1"></span>
                    </td>
                </tr>
                <!--ȷ������-->
                <tr>
                    <td style="text-align: right;">ȷ�����룺</td>
                    <td><input type="password" ID="vote_password2" name="vote_password2" class="form-control has-error inputtd"
                               onblur="check_username()"/>
                        <span style="color:red; margin-left:10px; text-align:center;" id="CheckPass2"></span>
                    </td>
                </tr>
                <!--�Ƿ����˻�-->
                <tr>
                    <td></td>
                    <td style="height: 40px;"><span style="color: red">
								����Ѿ����˺��� <a href="<%=basePath%>login.jsp" class="btn"
                                            style="background-color: white">��¼</a>
						</span>
                    </td>
                </tr>
                <!--��ť-->
                <tr>
                    <td></td>
                    <td style="height: 40px;">
                        <button id="register_true" class="btn btn-default"
                                style="width:70px;margin-right: 40px;" type="submit">ע��
                        </button>
                        <button id="register_cancel" class="btn btn-default"
                                type="button" style="width:70px;" onclick="location.href='login.jsp'">ȡ��
                        </button>
                </tr>
                <!---->
            </table>
        </div>
    </div>
</form>
<footer class="blog-footer" style="text-align: center; color:white">
    <p>lhz��ͶƱϵͳ </p>
</footer>
</body>
</html>
