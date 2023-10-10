<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<b>10以内的全部奇数</b>
<c:forEach var="i" begin="1" end="10" step="2">
    ${i}&nbsp;&nbsp;
</c:forEach>
</body>
</html>
