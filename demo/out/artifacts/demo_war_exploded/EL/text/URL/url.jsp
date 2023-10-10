<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:url var="path" scope="page" value="register.jsp">
    <c:param name="user" value="mr"></c:param>
    <c:param name="email" value="https://www.bilibili.com/"></c:param>
</c:url>
<a href="${pageScope.path}">提交注册</a>
</body>
</html>
