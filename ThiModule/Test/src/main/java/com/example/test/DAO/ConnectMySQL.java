package com.example.test.DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectMySQL {
    static final String URL = "jdbc:mysql://localhost:3306/managerclass?useSSL=false";
    static final String USERNAME = "root";
    static final String PASSWORD = "12345678";
    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (Exception e) {
            return null;
        }
    }
}
