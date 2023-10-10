<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:choose>
    <c:when test="${empty param.username}">
        <form action="" method="post" name="form1">
            用户名:<input type="text" placeholder="请输入用户名" id="username" name="username">
            <br>
            <br>
            <input type="submit" name="提交" value="登录按钮">
        </form>
    </c:when>
    <c:otherwise>
        [${param.username}]欢迎使用本网站
    </c:otherwise>
</c:choose>
</body>
</html>
