<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/11/7
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <form action="update" method="post">
        <input type="hidden" name="admin.id" value="<s:property value="admin.id"/>">
        <input type="text" name="admin.username" value="<s:property value="admin.username"/>"><br>
        <input type="text" name="admin.password" value="<s:property value="admin.password"/>"><br>
        <input type="submit" value="update">
    </form>
</head>
<body>

</body>
</html>
