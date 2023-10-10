<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="JSP/CSS/bg.css">
    <script src="JSP/JS/createRequest.js"></script>
</head>
<body>
<form action="" method="post" name="form1">
    用户名:<input name="username" type="text" id="username" size="32">
    <img src="JSP/img/休憩的风神.jpg" height="23" style="cursor: hand" onclick="checkUser(form1.username)"><br><br>
    密码:<input type="password" name="pwd1" id="pwd1" size="35"><br><br>
    确认密码:<input type="password" name="pwd2" id="pwd2" size="35"><br><br>
    E-mail:<input type="text" name="email" id="email" size="45"><br><br>
    <abbr title="注册"><input type="image" name="imageField" src="JSP/img/风神.jpeg" width="45"></abbr><br>
</form>
<div id="toolTip"></div>
</body>
</html>
