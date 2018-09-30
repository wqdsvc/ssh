<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/9/30
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <s:iterator value="adminList" var="admin">
        <tr>
            <td><s:property value="#admin.id"/></td>
            <td><s:property value="#admin.username"/></td>
            <td><s:property value="#admin.password"/></td>
            <td><a href="del?id=<s:property value="#admin.id"/>">Delete</a></td>
            <td><a href="edit?id=<s:property value="#admin.id"/>">Edit</a></td>
        </tr>
    </s:iterator>
    <a href="addAdmin.jsp">添加用户</a>
</table>
</body>
</html>
