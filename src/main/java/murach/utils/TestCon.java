package murach.utils;

import java.sql.Connection;

public class TestCon {
    public static void main(String[] args){
        ConnectionPool pool = ConnectionPool.getInstance();

        System.out.println("Get connection ... ");

        // Lấy ra đối tượng Connection kết nối vào database.
        Connection connection = pool.getConnection();

        System.out.println("Get connection " + connection);

        System.out.println("Done!");
    }
}
