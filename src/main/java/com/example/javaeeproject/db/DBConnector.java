package com.example.javaeeproject.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnector {
    private static Connection connection = null;
    private static final String url = "jdbc:mysql://127.0.0.1:3306/";
    private static final String username = "Bini";
    private static final String password = "Biniyam5982.";

    public static Connection getConnection() {
        String url = "jdbc:mysql://127.0.0.1:3306/Ethioair2";
        try {
            if (connection == null || connection.isClosed()) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(url, username, password);
                System.out.println("connection is at first");
                System.out.println(connection);
                System.out.println("Connection established");
            }
        } catch (Exception e) {
            System.out.println("error has occured");
            System.out.println(e);
        }
        System.out.println("at 11 first step");
        return connection;
    }
    public static Connection getConnectionInit(){
        try {
            if (connection == null || connection.isClosed()) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(url, username, password);
                System.out.println("connection is at first ");
                System.out.println(connection);
                System.out.println("Connection established");
            }
        } catch (Exception e) {
            System.out.println("error has occured");
            System.out.println(e);
        }
        System.out.println(connection);
        System.out.println("at 11 first step");
        return connection;
    }
}
