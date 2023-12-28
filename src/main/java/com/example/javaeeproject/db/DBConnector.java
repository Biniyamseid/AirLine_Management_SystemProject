package com.example.javaeeproject.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnector {
    private static Connection connection = null;
    private static final String url = "jdbc:mysql://127.0.0.1:3306/?user=Bini";
    private static final String username = "Bini";
    private static final String password = "Biniyam5982.";

    public static Connection getConnection() {
        if (connection == null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                System.out.println("passed 1");

                // Correct the issue by assigning to the static field, not a local variable
                connection = DriverManager.getConnection(url, username, password);
                System.out.println("passed 2");
                System.out.println("connection established");
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        return connection;
    }
}
