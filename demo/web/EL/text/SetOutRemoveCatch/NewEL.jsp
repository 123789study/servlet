<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
%>
<h1>姓名:${param.name}</h1>
<h1>爱好1:${paramValues.hobby[0]}</h1>
<h1>爱好2:${paramValues.hobby[1]}</h1>
<h1>爱好3:${paramValues.hobby[2]}</h1>
</body>
</html>
