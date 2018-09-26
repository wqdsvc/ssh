<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/9/26
  Time: 9:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>文件上传</title>
</head>
<body>
<s:form action="upload" method="POST" enctype="multipart/form-data">
    <s:file name="file"></s:file>
    <s:submit value="submit"></s:submit>
</s:form>
</body>
</html>
