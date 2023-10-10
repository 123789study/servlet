<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String[] userList={"明日","CSS","wgh"};
    String user=new String(request.getParameter("user").getBytes("ISO-8859-1"),"UTF-8");
    Arrays.sort(userList);
    int result=Arrays.binarySearch(userList,user);
    if (result>-1){
        out.println("很抱歉.该用户名已经被注册");
    }else {
        out.println("每没有被使用过");
    }
%>
</body>
</html>
