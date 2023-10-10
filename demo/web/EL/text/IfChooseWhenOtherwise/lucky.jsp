<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%Random r=new Random();%>

<c:set var="luck" scope="request">
    <%=r.nextInt(10)%>
</c:set>
随机产生的数字是:${requestScope.luck}
<br>
<c:choose>
    <c:when test="${luck==6}"><p style="color: red">这tm是一等奖</p></c:when>
    <c:when test="${luck==7}">这tm是二等奖</c:when>
    <c:when test="${luck==8}">这tm是三等奖</c:when>
    <c:otherwise>
        <p style="color: #ab2a26">
            你tm没有中奖
        </p>
    </c:otherwise>
</c:choose>
</body>
</html>
