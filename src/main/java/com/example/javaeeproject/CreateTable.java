package com.example.javaeeproject;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.*;

import java.sql.*;



@WebServlet("/create-table")
public class CreateTable extends HttpServlet {
    private static final String jdbcurl = "jdbc:mysql://127.0.0.1:3306/?user=Bini";
    private static final String username = "Bini";
    private static final String password = "Biniyam5982.";
    public static void main(String[] args)throws SQLException{

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        Connection connectDB = null;
        try {
            connectDB = DriverManager.getConnection(jdbcurl,username,password);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        Statement statement = null;
        try {
            statement = connectDB.createStatement();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
//        String query = "select * from teachers";
        String createTableSQL = "CREATE TABLE teacher1(" +
                "id int auto_increment PRIMARY KEY," +
                "first_name varchar(255)," +
                "last_name varchar(255)," +
                "school varchar(255)," +
                "hire_date date," +
                "salary decimal(10,2))";

        System.out.print("working fine");
        try {
            statement.executeUpdate("use teachers");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        try {
            statement.executeUpdate(createTableSQL);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        System.out.println("table `teachers` created successfully");

    }
}
