<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <title>Title</title>
</head>
<body>
<%--<%
  request.setAttribute("info","request");
  session.setAttribute("info","session");
  application.setAttribute("info","application");
%><h1>${info}</h1>--%>

<form action="NewEL.jsp" method="post">
  <input type="text" name="name">
  <input type="submit" name="提交到el1界面">
</form>
<form action="NewEL.jsp">
  <input type="checkbox" name="hobby" value="C语言"/>C语言
  <input type="checkbox" name="hobby" value="Java语言"/>java语言
  <input type="checkbox" name="hobby" value="C++语言"/>C++语言
  <input type="submit" name="提交到el1界面">
</form>
</body>
</html>
