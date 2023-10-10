<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collections" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  List<String> list=new ArrayList<>();
  Collections.addAll(list,"hello","world!","你好","世界");
  request.setAttribute("list",list);
%>

<b style="text-align: center">遍历list集合里面所有的东西</b>
<c:forEach items="${requestScope.list}" var="keyword" varStatus="id">
    ${id.index}&nbsp;${keyword}<br>
</c:forEach>

<b style="text-align: center">遍历list除了第一个以外的所有东西</b>
<c:forEach items="${requestScope.list}" var="keyword" varStatus="id" begin="1">
    ${id.index}&nbsp;${keyword}<br>
</c:forEach>

</body>
</html>
