package com.example.javaeeproject;



import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet("/view")
public class View extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        DBConfig dbConfig = new DBConfig();
        System.out.print(dbConfig);
        response.setContentType("text/html");

        try (PrintWriter out = response.getWriter()) {
            Class.forName(dbConfig.driver);
            Connection connection = DriverManager.getConnection(dbConfig.url, dbConfig.username, dbConfig.password);

            Statement statement = connection.createStatement();
            out.print("<html><head><title>Employee List</title></head><body>");
            out.println("<h2>Employee List</h2>");
            out.println("<table border='1'><tr><th>ID</th><th>Name</th><th>Designation</th><th>Salary</th></tr>");


            ResultSet resultSet = statement.executeQuery("SELECT * FROM employees");

            out.print("<html><head><title>Employee List</title></head><body>");
            out.println("<h2>Employee List</h2>");
            out.println("<table border='1'><tr><th>ID</th><th>Name</th><th>Designation</th><th>Salary</th></tr>");

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String designation = resultSet.getString("designation");
                int salary = resultSet.getInt("salary");

                out.println("<tr><td>" + id + "</td><td>" + name + "</td><td>" + designation + "</td><td>" + salary
                        + "</td></tr>");
            }

            out.println("</table></body></html>");

            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            PrintWriter out = response.getWriter();
            out.print("<html><head><title>Employee List</title></head><body>");
            out.println("<h2>Employee List</h2>");
            out.println("<table border='1'><tr><th>ID</th><th>Name</th><th>Designation</th><th>Salary</th></tr>");
            e.printStackTrace();


        }
    }
}

