package JDBC.BOOK.DMQC;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet(name = "DeleteBook", value = "/DeleteBook")
public class DeleteBook extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.valueOf(request.getParameter("id"));
        try {
//1.注册驱动
            Class.forName("com.mysql.cj.jdbc.Driver");
//2.建立连接
            String url = "jdbc:mysql:///study?serverTimezone=GMT%2B8";
            String name = "root";
            String password = "123456";
            Connection conn = DriverManager.getConnection(url, name, password);
//3.1书写mysql语句
            String sql = "delete from book where id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("/FindBookDirect");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
