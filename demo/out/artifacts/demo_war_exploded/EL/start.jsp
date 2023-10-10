<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String[] arr = {"html", "css", "js", "JSP", "servlet", "JDBC", "EL"};
    request.setAttribute("knowledge", arr);
%>

<%
    for (int i = 0; i < arr.length; i++) {
        request.setAttribute("requestl", i);
%>
${requestl}:${knowledge[requestl]}<br>
<%
    }
%>
</body>
</html>
