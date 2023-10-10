package JDBC.BOOK.DMQC.Search;
import JDBC.BOOK.Tool.buildConnection;
import JDBC.BOOK.Tool.Book;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "FindBookWithLimit", value = "/FindBookWithLimit")
public class FindBookWithLimit extends HttpServlet {

    // 内部类,用于分页查找的方法
   private class OtherFind{
        //分页查询
        public List<Book> find(int page){
            List<Book> list = new ArrayList<>();
            Connection conn=buildConnection.getConnection();
            String sql="select * from book order by id desc limit ?,?";
            try {
                PreparedStatement ps=conn.prepareStatement(sql);
                // 对sql语句的两个问号赋值
                ps.setInt(1,(page-1)*Book.PAGE_SIZE);
                ps.setInt(2,Book.PAGE_SIZE);

                ResultSet rs=ps.executeQuery();
                while (rs.next()){
                    Book books = new Book();
                    books.setId(rs.getInt("id"));
                    books.setName(rs.getString("name"));
                    books.setPrice(rs.getDouble("price"));
                    books.setBookCount(rs.getInt("bookCount"));
                    books.setAuthor(rs.getString("author"));

                    list.add(books);
                }
                rs.close();
                ps.close();
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return list;
        }

        public int findCount(){
            int count=0;
            Connection conn=buildConnection.getConnection();
            String sql="select count(*) from book";
            try {
                Statement stmt=conn.createStatement();
                ResultSet rs=stmt.executeQuery(sql);
                if (rs.next()){
                    count=rs.getInt(1);
                }
                rs.close();
                conn.close();
            }catch (SQLException e){
                e.printStackTrace();
            }
            return count;
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int currPage = 1;
        if (request.getParameter("page") != null) {
            currPage = Integer.parseInt(request.getParameter("page"));
        }
        OtherFind dao=new OtherFind();
        List<Book> list = dao.find(currPage);
        request.setAttribute("list", list);

        int pages;
        int count = dao.findCount();
        if (count % Book.PAGE_SIZE == 0) {
            pages = count / Book.PAGE_SIZE;
        } else {
            pages = count / Book.PAGE_SIZE + 1;
        }
        StringBuffer sb = new StringBuffer();
        for (int i = 1; i <= pages; i++) {
            if (i == currPage) {
                sb.append("[" + i + "]");
            } else {
                sb.append("<a href='FindBookWithLimit?page=" + i + "'>" + i + "</a>");
            }
            sb.append(" ");
        }
        request.setAttribute("bar", sb.toString());

        RequestDispatcher dispatcher=request.getRequestDispatcher("/DATABASE/BOOK/BookListWithLimit.jsp");
        dispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
