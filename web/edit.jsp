<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/6/24
  Time: 12:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编辑</title>
</head>
<body>
<form style="margin-top: 50px" action="${pageContext.request.contextPath}/edit"  method="post">
    <table style="width: 800px" border="1px" align="center" cellspacing="0px" cellpadding="0px" >
        <input type="hidden" name="gid" value="${good.gid}"/>
        <tr style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 45px;">
            <td align="center">收货人姓名</td>
            <td>
                <input type="text"name="uname" id="uname" style="width: 400px" value="${good.uname}">
            </td>
        </tr>
        <tr style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 45px;">
            <td align="center">收货人电话</td>
            <td>
                <input type="text"name="utel" id="utel" style="width: 400px" value="${good.utel}">
            </td>
        </tr>
        <tr style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 45px;">
            <td align="center">收货人地址</td>
            <td>
                <input type="text"name="uadress" id="uadress" style="width: 400px" value="${good.uadress}">
            </td>
        </tr>
        <tr style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 45px;">
            <td align="center">货品名称</td>
            <td>
                <input type="text"name="gname" id="gname" style="width: 400px" value="${good.gname}">
            </td>
        </tr>
        <tr style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 45px;">
            <td align="center">货品数量</td>
            <td>
                <input type="text"name="gnum" id="gnum" style="width: 400px" value="${good.gnum}">
            </td>
        </tr>
        <tr style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 45px;">
            <td align="center">是否接受</td>
            <td>
                <input type="text"name="g_accept" id="g_accept" style="width: 400px" value="${good.is_accept}">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
