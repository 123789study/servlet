<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="book" class="JDBC.BOOK.Tool.Book"></jsp:useBean>
<jsp:useBean id="Encoding" class="JDBC.BOOK.Tool.CharactorEncoding"></jsp:useBean>
<jsp:setProperty name="book" property="*"></jsp:setProperty>
<%
    try {
//1.注册驱动
        Class.forName("com.mysql.cj.jdbc.Driver");
//2.建立连接
        String url = "jdbc:mysql:///study?serverTimezone=GMT%2B8";
        String name = "root";
        String password = "123456";
        Connection conn= DriverManager.getConnection(url,name,password);
//3.1书写mysql语句
        String sql="insert into book(name, price, bookcount, author) values(?,?,?,?)";
//3.2获取到页面输入信息
        PreparedStatement ps=conn.prepareStatement(sql);
//3.3更改sql里面的信息
        ps.setString(1,Encoding.Chinese(book.getName()));
        ps.setDouble(2,book.getPrice());
        ps.setInt(3,book.getBookCount());
        ps.setString(4,Encoding.Chinese(book.getAuthor()));

        int row=ps.executeUpdate();
        if (row>0){
            out.println("成功添加了"+row+"条数据");
        }
//4.关闭
        ps.close();
        conn.close();
    } catch (Exception e) {
        out.println("图书添加失败!!!!");
        e.printStackTrace();
    }
%>
<a href="index.jsp">返回</a>
</body>
</html>
