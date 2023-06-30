package ID10068.controller;

import ID10067.model.Customer;
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

@WebServlet(name = "delete", value = "/ID10068/delete")
public class DeleteProduct extends HttpServlet {
    ProductService productService = new ProductServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/ID10068/delete.jsp");
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
        Product product = productService.findById(id);
        RequestDispatcher dispatcher;
        productService.remove(id);
        try {
            resp.sendRedirect("/ID10068");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
