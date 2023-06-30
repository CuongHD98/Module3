package com.example.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ID10047", value = "/resultID10047")
public class ID10047 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String productDescription = req.getParameter("productDescription");
        float listPrice = Float.parseFloat(req.getParameter("listPrice"));
        float discountPercent = Float.parseFloat(req.getParameter("discountPercent"));

        PrintWriter writer = resp.getWriter();
        writer.println("<html>");
        writer.print("<h1>" + "Discount Amount = " + listPrice * discountPercent * 0.01 + "</h1>");
        writer.print("<h1>" + "Discount Price = " + (listPrice - listPrice * discountPercent * 0.01) + "</h1>");

        writer.println("</html>");

    }
}
