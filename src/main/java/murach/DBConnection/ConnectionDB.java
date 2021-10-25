package murach.DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDB {
    public static Connection CreateConnect(){
        Connection conn = null;
        /*String url = "jdbc:postgresql://localhost:5432/postgres";
        String user = "postgres";
        String pass = "taiwd123";*/

        String url  = "jdbc:mysql://us-cdbr-east-04.cleardb.com:3306/heroku_1c11f491448b1cd";
        String user = "b23e1ada7923d9";
        String pass = "dd49b115";

        /*String url = "jdbc:mysql://localhost:3306/emailist";
        String user = "root";
        String pass = "taiwd123";*/

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
//            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return conn;
    }
}
