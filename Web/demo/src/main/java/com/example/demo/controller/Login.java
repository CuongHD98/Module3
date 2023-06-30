package com.example.demo.controller;

import com.example.demo.manager.ManageAccount;
import com.example.demo.model.Account;

import java.io.*;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "login", value = "/login")
public class Login extends HttpServlet {
    private ManageAccount manageAccount = new ManageAccount();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        for (Map.Entry<Integer, Account> entry : ManageAccount.accounts.entrySet()) {
            if (entry.getValue().getEmail().equals(email) && entry.getValue().getPassword().equals(password)) {
                resp.sendRedirect("/index.jsp");
                break;
            }
        }

    }
}