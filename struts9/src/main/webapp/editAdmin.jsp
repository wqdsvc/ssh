<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/9/30
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:form action="update" method="POST">
    <s:hidden name="admin.id"/>
    <s:textfield name="admin.username" label="用户名"/>
    <s:textfield name="admin.password" label="密码"/>
    <s:submit value="更新"/>
</s:form>
</body>
</html>
