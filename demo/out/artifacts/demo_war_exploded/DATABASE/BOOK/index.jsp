<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.SQLException"%>
<%@ page import="JDBC.BOOK.Tool.Book" %>
<%@ page import="java.util.List" %>
<%@ page import="JDBC.BOOK.DMQC.Search.FindBookDirect" %>
<%@ page import="com.mysql.cj.x.protobuf.MysqlxCrud" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="batch" class="JDBC.BOOK.Tool.Batch"></jsp:useBean>
<jsp:useBean id="book" class="JDBC.BOOK.Tool.Book"></jsp:useBean>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="show.jsp" method="post">
    <table style="margin: 0 auto" border="1px">
        <tr>
            <td style="text-align: center;" colspan="2">
                <h2>添加图书信息</h2>
                <hr>
            </td>
        </tr>
        <tr>
            <td style="text-align: right;">图书名称:</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td style="text-align: right;">价    格:</td>
            <td><input type="text" name="price"></td>
        </tr>
        <tr>
            <td style="text-align: right;">数    量:</td>
            <td><input type="text" name="bookCount"></td>
        </tr>
        <tr>
            <td style="text-align: right;">作    者:</td>
            <td><input type="text" name="author"></td>
        </tr>
        <tr>
            <td style="text-align: center;" colspan="2">
                <input type="submit" value="上传到数据库">
            </td>
        </tr>
    </table>
</form>
<%--batch.saveBatch(10);--%>
<a href="/FindBookWithLimit">分页查找</a>
<a href="/FindBookDirect">查看所有图书(直接查询)</a>
<a href="/FindBookByProcedure">查看所有图书(调用存储过程)</a>
</body>
</html>
