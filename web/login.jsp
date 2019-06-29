<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/6/24
  Time: 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
</head>
<body>

<form action="/login" method="post">
    <div style="margin-top: 50px">
        <table width="400px" height="250px" border="1px" align="center" cellspacing="0px" cellpadding="0px" >
            <tr height="30px">
                <td colspan="2">
                    <font size="3">管理员登录</font>
                    <span><font size="2" color="red"><%=request.getAttribute("info")==null?"":request.getAttribute("info") %></font></span>
                </td>
            </tr>
            <tr>
                <td>用户名:</td>
                <td>
                    <input type="text" placeholder="请输入管理员名"  name="aname" maxlength="16" size="30" style="height: 40px" id="aname">
                </td>
            </tr>
            <tr>
                <td>密码:</td>
                <td>
                    <input type="password" placeholder="请输入密码"  name="apassword" maxlength="16" size="30" style="height: 40px" id="apassword">
                </td>
            </tr>
            <tr style="height: 50px">
                <td colspan="2">
                    <input type="submit" value="提交">
                </td>
            </tr>
        </table>
    </div>
</form>>
</body>
</html>
