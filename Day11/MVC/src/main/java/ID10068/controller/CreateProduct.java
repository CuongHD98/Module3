package ID10068.controller;

import ID10068.model.Product;
import ID10068.service.ProductService;
import ID10068.service.ProductServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "create", value = "/ID10068/create")
public class CreateProduct extends HttpServlet {
    ProductService productService = new ProductServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/ID10068/create.jsp");
        try {
            dispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        float price = Float.parseFloat(req.getParameter("price"));
        Product product = new Product(name, quantity, price);
        productService.save(product);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/ID10068/create.jsp");
        req.setAttribute("message", "New product was created");
        try {
            dispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
