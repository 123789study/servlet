<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="name" value="这tmd是,CSS,JAVA,HTML<JSP" scope="request"></c:set>
<b>原字符串</b><c:out value="${name}"></c:out>
<br><b>分割之后的字符串:</b><br>
<c:forTokens items="${requestScope.name}" delims="," var="item">
    ${item}<br>
</c:forTokens>
</body>
</html>
