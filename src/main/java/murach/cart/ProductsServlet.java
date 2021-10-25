package murach.cart;

import murach.DBConnection.ConnectionDB;
import murach.business.Product;
import murach.data.ProductIO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.*;

public class ProductsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        /*String path = getServletContext().getRealPath("/WEB-INF/products.txt");
        ArrayList<Product> products = ProductIO.getProducts(path);*/
        Connection conn = ConnectionDB.CreateConnect();

        try {
            List<Product> list = CartDAO.ListProduct(conn);
            session.setAttribute("list", list);
            String url = "/ShowItem.jsp";

            //String url = "/index.jsp";
            getServletContext()
                    .getRequestDispatcher(url)
                    .forward(request, response);

            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        doGet(request, response);
    }
}
