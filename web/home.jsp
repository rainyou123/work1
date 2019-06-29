<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/6/24
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>管理系统</title>
</head>
<body>
<div align="center">
    <div>
        <h1>欢迎来到管理系统</h1>
    </div>
    <form>
        <table width="800px" height="150px" border="1px" align="center" cellspacing="0px" cellpadding="0px">
            <tr style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; background:gainsboro">
                <td align="center">序号</td>
                <td align="center">收货人姓名</td>
                <td align="center">收货人电话</td>
                <td align="center">收货人地址</td>
                <td align="center">货品名称</td>
                <td align="center">货品数量</td>
                <td align="center">是否接受</td>
                <td align="center">删除</td>
                <td align="center">编辑</td>
            </tr>
            <c:forEach items="${goodsList}" var="good" varStatus="vs">
                <tr style="background: beige">
                    <td style="CURSOR: hand; HEIGHT: 22px" align="center">${vs.count}</td>
                    <td style="CURSOR: hand; HEIGHT: 22px" align="center">${good.uname}</td>
                    <td style="CURSOR: hand; HEIGHT: 22px" align="center">${good.utel}</td>
                    <td style="CURSOR: hand; HEIGHT: 22px" align="center">${good.uadress}</td>
                    <td style="CURSOR: hand; HEIGHT: 22px" align="center">${good.gname}</td>
                    <td style="CURSOR: hand; HEIGHT: 22px" align="center">${good.gnum}</td>
                    <td style="CURSOR: hand; HEIGHT: 22px" align="center">
                        <c:if test="${good.is_accept==1}">是</c:if>
                        <c:if test="${good.is_accept==0}">否</c:if>
                    </td>
                    <td align="center" style="HEIGHT: 22px">
                        <a href="#" onclick="deleteProduct('${good.gid}')">
                            <img src="${pageContext.request.contextPath}/image/i_del.gif"
                                 width="16" height="16" border="0" style="CURSOR: hand">
                        </a>
                    </td>
                    <td align="center" style="HEIGHT: 22px">
                        <a href="${ pageContext.request.contextPath }/editID?gid=${good.gid}">
                            <img src="${pageContext.request.contextPath}/image/i_edit.gif"
                                 width="16" height="16" border="0" style="CURSOR: hand">
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>

    </form>
    <span><input type="button" value="添加" id="add" name="add" onclick="add()"/></span>
</div>
<script type="text/javascript">
    function deleteProduct(gid){
        var b = confirm("您确定要删除吗？");
        if(b){
            window.location.href="${pageContext.request.contextPath}/delete?gid="+gid;
        }
    }
    function add(){
        window.location.href = "${pageContext.request.contextPath}/add.jsp";
    }
</script>
</body>
</html>
