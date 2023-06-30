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

@WebServlet(name = "edit", value = "/ID10068/edit")
public class EditProduct extends HttpServlet {
    ProductService productService = new ProductServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Product product = productService.findById(id);
        RequestDispatcher dispatcher;
        req.setAttribute("product", product);
        dispatcher = req.getRequestDispatcher("/ID10068/edit.jsp");
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
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        float price = Float.parseFloat(req.getParameter("price"));
        Product product = productService.findById(id);
        RequestDispatcher dispatcher;
        product.setName(name);
        product.setQuantity(quantity);
        product.setPrice(price);
        productService.update(id,product);
        req.setAttribute("product", product);
        req.setAttribute("message", "Product information was updated");
        dispatcher = req.getRequestDispatcher("/ID10068/edit.jsp");
        try {
            dispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
