package com.example.javaeeproject;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import java.sql.Connection;
import java.sql.DriverManager;
public class DatabaseConnector {
        private static Connection connection = null;
        private static final String url = "jdbc:mysql://127.0.0.1:3306/Ethioair2";
        private static final String username = "Bini";
        private static final String password = "Biniyam5982.";

        public static Connection getConnection() {
            try {
                if (connection == null || connection.isClosed()) {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    connection = DriverManager.getConnection(url, username, password);
                    System.out.println("implementation 2 ");
                    System.out.println(connection);
                    System.out.println("implementation 2 Connection established");
                }
            } catch (Exception e) {
                System.out.println(" implementation 2 error has occured");
                System.out.println(e);
            }
            System.out.println("implementation 2");
            return connection;
        }
    }


