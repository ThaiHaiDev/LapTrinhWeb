package murach.cart;

import murach.DBConnection.ConnectionDB;
import murach.business.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CartDAO {
    public static List<Product> ListProduct(Connection conn){
        PreparedStatement ps = null;
        String sql = "select * from product";
        List<Product> list = new ArrayList<Product>();

        try {
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                String code = rs.getString(1);
                String desc = rs.getString(2);
                double price = rs.getDouble(3);

                Product product = new Product();

                product.setCode(code);
                product.setDescription(desc);
                product.setPrice(price);

                list.add(product);
            }
            rs.close();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }
    public static Product getProduct(String productCode){
        Connection conn = ConnectionDB.CreateConnect();
        Product product = new Product();
        PreparedStatement ps = null;

        try {
            String sql = "select * from product where ProductCode = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, productCode);
            ResultSet rs = ps.executeQuery();

            while (rs.next()){
                String code = rs.getString("ProductCode");
                String desc = rs.getString("ProductDescription");
                double price = rs.getDouble("ProductPrice");

                product.setCode(code);
                product.setDescription(desc);
                product.setPrice(price);
            }
            ps.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return product;
    }
}
