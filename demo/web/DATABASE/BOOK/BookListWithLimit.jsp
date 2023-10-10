<%@ page import="JDBC.BOOK.Tool.Book" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table style="margin: 0 auto;" border="1px" width="450px">
    <tr>
        <td style="text-align: center" colspan="7">
            <h2>所有图书信息</h2>
        </td>
    </tr>
    <tr style="text-align: center">
        <td><b>ID</b></td>
        <td><b>图书名称</b></td>
        <td><b>价 格</b></td>
        <td><b>数 量</b></td>
        <td><b>作 者</b></td>
        <td><b>数量修改</b></td>
        <td><b>删 除</b></td>
    </tr>
    <%
        List<Book> list = (List<Book>) request.getAttribute("list");
        if (list == null || list.size() < 1) {
            out.println("没有数据!!");
        } else {
            for (Book book1 : list) {
    %>
    <tr style="text-align: center">
        <td><%=book1.getId()%>
        </td>
        <td><%=book1.getName()%>
        </td>
        <td><%=book1.getPrice()%>
        </td>
        <td><%=book1.getBookCount()%>
        </td>
        <td><%=book1.getAuthor()%>
        </td>
        <td>
            <form action="/UpdateBook" method="post" onsubmit="return check(this)">
                <input type="hidden" name="id" value="<%=book1.getId()%>">
                <input type="text" name="bookCount" size="3">
                <input type="submit" value="修  改">
            </form>
        </td>
        <td>
            <a href="/DeleteBook?id=<%=book1.getId()%>">删除</a>
        </td>
    </tr>
    <%
            }
        }
    %>
    <tr>
        <td style="text-align: center" colspan="7">
            <%=request.getAttribute("bar")%>
        </td>
    </tr>
    <a href="/DATABASE/BOOK/index.jsp">返回</a>
</table>

</body>
</html>
