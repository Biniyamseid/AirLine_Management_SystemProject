package com.example.javaeeproject;//package com.example.javaeeproject;
//
//import jakarta.servlet.annotation.WebServlet;
//
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


//public class jdbc extends HttpServlet {
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        response.setContentType("text/html");
//
//        try (PrintWriter out = response.getWriter()) {
//            // Obtain the DataSource using JNDI lookup
//            out.print("<html>");
//            out.print("<head><title>Employee List</title></head><body>");
//            out.print("<p>hello</p>");
//            Context initContext = new InitialContext();
//            Context envContext = (Context) initContext.lookup("java:/comp/env");
//            DataSource dataSource = (DataSource) envContext.lookup("jdbc/employee_management@localhost"); // Replace with your JNDI name
//
//            // Obtain a connection from the DataSource
//            Connection connection = dataSource.getConnection();
//
//            // Use the connection as needed
//            Statement statement = connection.createStatement();
//            ResultSet resultSet = statement.executeQuery("SELECT * FROM employees");
//
//            // Output HTML with the query results
//
//            out.println("<h2>Employee List</h2>");
//            out.println("<table border='1'><tr><th>ID</th><th>Name</th><th>Designation</th><th>Salary</th></tr>");
//
////            while (resultSet.next()) {
////                int id = resultSet.getInt("id");
////                String name = resultSet.getString("name");
////                String designation = resultSet.getString("designation");
////                int salary = resultSet.getInt("salary");
////
////                out.println("<tr><td>" + id + "</td><td>" + name + "</td><td>" + designation + "</td><td>" + salary
////                        + "</td></tr>");
////            }
//
//            out.println("</table></body></html>");
//
//            // Close resources
//            resultSet.close();
//            statement.close();
//            connection.close();
//        } catch (Exception e) {
//            // Handle exceptions
//            PrintWriter out = response.getWriter();
//            out.print("<html><head><title>Employee List</title></head><body>");
//            out.println("<h2>Employee List</h2>");
//            out.println("<table border='1'><tr><th>ID</th><th>Name</th><th>Designation</th><th>Salary</th></tr>");
//            e.printStackTrace(out);
//        }
//    }
//}
//
//
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//@WebServlet("/jdbc")
//public class jdbc extends HttpServlet{
//
//    public static void main(String[] args) {
//        String jdbcUrl = "jdbc:mysql://localhost:3306/employee_management";
//        String username = "bini";
//        String password = "StrongerPassword123!";
//
//        try (Connection connection = DriverManager.getConnection(jdbcUrl, username, password)) {
//            System.out.println("Database connection successful!");
//        } catch (SQLException e) {
//            System.err.println("Error connecting to the database: " + e.getMessage());
//            e.printStackTrace();
//        }
//    }
//}

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//@WebServlet("/DatabaseTestServlet")
//public class jdbc extends HttpServlet {
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        response.setContentType("text/html");
//
//
//        try (PrintWriter out = response.getWriter()) {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            String jdbcUrl = "jdbc:mysql://localhost:3306/employee_management";
//            String username = "bini";
//            String password = "StrongerPassword123!";
//
//            try (Connection connection = DriverManager.getConnection(jdbcUrl, username, password)) {
//                out.println("<html><head><title>Database Connection Test</title></head><body>");
//                out.println("<h2>Database Connection Test</h2>");
//                out.println("<p>Database connection successful!</p>");
//                out.println("</body></html>");
//            } catch (SQLException e) {
//                out.println("<html><head><title>Database Connection Test</title></head><body>");
//                out.println("<h2>Database Connection Test</h2>");
//                out.println("<p>Error connecting to the database: " + e.getMessage() + "</p>");
//                out.println("</body></html>");
//                e.printStackTrace();
//            }
//        } catch (ClassNotFoundException e) {
//            PrintWriter out = response.getWriter();
//            out.println("<html><head><title>Database Connection Test</title></head><body>");
//            out.println("<h2>Database Connection Test</h2>");
//            out.println("<p>Error connecting to the database: " + e.getMessage() + "</p>");
//            out.println("</body></html>");
//            e.printStackTrace();
//        }
//    }
//}


import jakarta.servlet.annotation.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

//import jakarta.servlet.annotation.Resource;

@WebServlet("/testDatasource")
public class jdbc extends HttpServlet {

//    @Resource(name = "jdbc/YourDataSourceName") // Replace with your JNDI name
    private DataSource dataSource;
//    jdbc:mysql://localhost:3306/?user=root

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        try (PrintWriter out = response.getWriter()) {
            try (Connection connection = dataSource.getConnection()) {
                out.println("<html><head><title>Datasource Connection Test</title></head><body>");
                out.println("<h2>Datasource Connection Test</h2>");
                out.println("<p>Datasource connection successful!</p>");
                out.println("</body></html>");
            } catch (SQLException e) {
                out.println("<html><head><title>Datasource Connection Test</title></head><body>");
                out.println("<h2>Datasource Connection Test</h2>");
                out.println("<p>Error connecting to the datasource: " + e.getMessage() + "</p>");
                out.println("</body></html>");
                e.printStackTrace(out);
            }
        }
    }
}

