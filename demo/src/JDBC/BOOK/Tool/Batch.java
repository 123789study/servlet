package JDBC.BOOK.Tool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Random;

public class Batch {
    public int saveBatch(int NUM){
        int row=0;
        Connection conn= buildConnection.getConnection();
        try {
            String sql="insert into book(name, price, bookCount, author) values(?,?,?,?)";
            PreparedStatement ps=conn.prepareStatement(sql);
            Random r=new Random(10);
            int num=r.nextInt(10);
            for (int i = 0; i < NUM; i++) {
                ps.setString(1,"[\u4E50]");
                ps.setDouble(2,num*30);
                ps.setInt(3,num);
                ps.setString(4,"原神");

                ps.addBatch();
            }
            int[] rows=ps.executeBatch();
            row=rows.length;

            ps.close();
            conn.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return row;
    }
}
