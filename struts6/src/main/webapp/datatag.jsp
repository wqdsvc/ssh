<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/9/21
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>数据标签的使用</title>
</head>
<body>
<s:bean name="cap.bean.User" id="u">
    <s:param name="id" value="19"/>
    <s:param name="username" value="'root'"/>
    <s:param name="password" value="'root'"/>
</s:bean>
<!--使用push标签将Stack Context中的u实例放入ValueStack栈顶-->
<s:push value="u">
    <--输出ValueStack栈顶元素的属性-->
    <s:property value="id"/>
    <s:property value="username"/>
    <s:property value="password"/>
</s:push>
</body>
</html>
