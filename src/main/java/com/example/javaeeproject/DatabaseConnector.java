package com.example.javaeeproject;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;


public class DatabaseConnector {
    private static Connection connection = null;
    private static final String url = "jdbc:mysql://127.0.0.1:3306/?user=Bini";
    private static final String username = "Bini";
    private static final String password = "Biniyam5982.";

    public static Connection getConnection() {
        if (connection == null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                System.out.println("passed 1");

            } catch (ClassNotFoundException e) {
                System.out.println(e);
            }
            try {
                Connection connection = DriverManager.getConnection(url, username, password);
                System.out.println("passed2");
                System.out.println("connection established");
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        return connection;
    }
}

