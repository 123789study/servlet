package JDBC.BOOK.Tool;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class buildConnection {
    public static Connection getConnection(){
        Connection conn=null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql:///study?serverTimezone=GMT%2B8";
            String name = "root";
            String password = "123456";
            conn = DriverManager.getConnection(url, name, password);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return conn;
    }
}
