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

@WebServlet(name = "FindBookDirect", value = "/FindBookDirect")
public class FindBookDirect extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Connection conn=buildConnection.getConnection();
            Statement stmt =conn.createStatement();
//3.1书写mysql语句
            String sql = "select * from book";
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
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("/DATABASE/BOOK/BookListDirect.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
