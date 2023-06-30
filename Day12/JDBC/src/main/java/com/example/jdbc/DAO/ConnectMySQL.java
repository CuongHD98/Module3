package com.example.jdbc.DAO;

import com.mysql.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectMySQL {
    static final String URL = "jdbc:mysql://localhost:3306/demojdbc?useSSL=false";
    static final String USERNAME = "root";
    static final String PASSWORD = "11011998Fr";
    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (Exception e) {
            return null;
        }
    }
}
