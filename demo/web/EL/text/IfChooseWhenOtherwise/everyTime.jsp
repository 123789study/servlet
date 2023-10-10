<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="hours"><%=new Date().getHours()%></c:set>
<c:set var="second"><%=new Date().getMinutes()%></c:set>
<c:choose>
    <c:when test="${hours>1&&hours<6}">早上好!</c:when>
    <c:when test="${hours>6&&hours<11}">中午好!</c:when>
    <c:when test="${hours>11&&hours<17}">下午好!</c:when>
    <c:when test="${hours>17&&hours<24}">晚上好!</c:when>
</c:choose>
现在的时间是:${hours}:${second}
</body>
</html>
