package murach.demo1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EmailDAO {
    public static boolean insertEmail(Connection conn, User user){
        PreparedStatement ps = null;
        String sql = "insert into user(Email, FirstName, LastName) values(?,?,?)";
        try {
            ps = conn.prepareStatement(sql);
            String email = user.getEmail();
            String firstname = user.getFirstName();
            String lastname = user.getLastName();

            ps.setString(1, email);
            ps.setString(2,firstname);
            ps.setString(3,lastname);
            if (ps.executeUpdate() !=0 ){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public static boolean checkEmail(Connection conn,User user){
        PreparedStatement ps = null;
        String sql = "Select count(*) as SL from user where Email = ?";

        try {
            ps = conn.prepareStatement(sql);
            String email = user.getEmail();
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                int sl = rs.getInt("SL");
                if(sl > 0){
                    return false;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return true;
    }
}
