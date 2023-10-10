package JDBC.BOOK.DMQC.Search;

import JDBC.BOOK.Tool.Book;
import JDBC.BOOK.Tool.buildConnection;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "FindBookByProcedure", value = "/FindBookByProcedure")
public class FindBookByProcedure extends HttpServlet {

    public List<Book> findAll(){
            List<Book> list = new ArrayList<>();
            Connection conn=buildConnection.getConnection();
            try {
                CallableStatement cs=conn.prepareCall("call FindAll()");
                ResultSet rs=cs.executeQuery();
                while (rs.next()){
                    Book books = new Book();
                    books.setId(rs.getInt("id"));
                    books.setName(rs.getString("name"));
                    books.setPrice(rs.getDouble("price"));
                    books.setBookCount(rs.getInt("bookCount"));
                    books.setAuthor(rs.getString("author"));

                    list.add(books);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return list;
        }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
//1.注册驱动
            Class.forName("com.mysql.cj.jdbc.Driver");
//2.建立连接
            String url = "jdbc:mysql:///study?serverTimezone=GMT%2B8";
            String name = "root";
            String password = "123456";
            Connection conn = DriverManager.getConnection(url, name, password);
            Statement stmt = conn.createStatement();
//3.1书写mysql语句
            String sql = "{call FindAll()}";
            ResultSet rs = stmt.executeQuery(sql);
            List<Book> list = new ArrayList<>();
            while (rs.next()) {
                Book books = new Book();
                books.setId(rs.getInt("id"));
                books.setName(rs.getString("name"));
                books.setPrice(rs.getDouble("price"));
                books.setBookCount(rs.getInt("bookCount"));
                books.setAuthor(rs.getString("author"));

                list.add(books);
            }
            request.setAttribute("list", list);
            rs.close();
            stmt.close();
            conn.close();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("/DATABASE/BOOK/BookListByProcedure.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
