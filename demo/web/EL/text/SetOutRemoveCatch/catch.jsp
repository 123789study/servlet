<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:catch var="error">
    <jsp:useBean id="user" class="EL.UserInfo"></jsp:useBean>
    <c:set target="${user}" property="name" value="111"></c:set>
</c:catch>

<c:out value="${user.name}" default="没有设置结果"></c:out>

<c:remove var="user"></c:remove>
<c:out value="${user.name}" default="没有设置结果"></c:out>

</body>
</html>
