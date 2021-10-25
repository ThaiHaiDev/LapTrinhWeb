package murach.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConnUtils {

    public static Connection getMySQLConnection()
            throws ClassNotFoundException, SQLException {
        // Chú ý: Thay đổi các thông số kết nối cho phù hợp.
        String hostName = "us-cdbr-east-04.cleardb.com";
        String dbName = "heroku_1c11f491448b1cd";
        String userName = "b23e1ada7923d9";
        String password = "dd49b115";
        return getMySQLConnection(hostName, dbName, userName, password);
    }

    public static Connection getMySQLConnection(String hostName, String dbName,
                                                String userName, String password) throws SQLException,
            ClassNotFoundException {

        Class.forName("com.mysql.jdbc.Driver");

        // Cấu trúc URL Connection đối với MySQL:
        // Ví dụ:
        // jdbc:mysql://localhost:3306/simplehr
        String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;

        Connection conn = DriverManager.getConnection(connectionURL, userName,
                password);
        return conn;
    }
}