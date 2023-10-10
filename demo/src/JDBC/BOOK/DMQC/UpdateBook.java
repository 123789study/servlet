package JDBC.BOOK.DMQC;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "UpdateBook", value = "/UpdateBook")
public class UpdateBook extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=Integer.valueOf(request.getParameter("id"));
        int bookCount=Integer.valueOf(request.getParameter("bookCount"));
        try {
//1.注册驱动
            Class.forName("com.mysql.cj.jdbc.Driver");
//2.建立连接
            String url = "jdbc:mysql:///study?serverTimezone=GMT%2B8";
            String name = "root";
            String password = "123456";
            Connection conn = DriverManager.getConnection(url, name, password);
//3.1书写mysql语句
            String sql = "update book set bookCount=? where id=?";
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setInt(1,bookCount);
            ps.setInt(2,id);
            ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("/FindBookDirect");
    }
}
