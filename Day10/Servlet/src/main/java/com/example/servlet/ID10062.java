package com.example.servlet;

import manager.ManagerCustomer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ID10062", value = "/ID10062")
public class ID10062 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("customers", ManagerCustomer.customers);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/ID10062.jsp");
        dispatcher.forward(req,resp);
    }
}
