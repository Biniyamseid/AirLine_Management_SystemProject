package com.example.javaeeproject;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

@WebServlet("/update")
public class EditEmployeeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        DBConfig dbConfig = new DBConfig();
        try {
            Class.forName(dbConfig.driver);
            Connection connection = DriverManager.getConnection(dbConfig.url, dbConfig.username, dbConfig.password);
            Statement statement = connection.createStatement();
            int ID = Integer.parseInt(request.getParameter("id"));
            String newName = request.getParameter("name");
            String newDesignation = request.getParameter("designation");
            int newSalary = Integer.parseInt(request.getParameter("salary"));
            String updateQuery = "UPDATE employees SET name = '" + newName + "', designation = '" + newDesignation
                    + "', salary = " + newSalary + " WHERE id = " + ID;

            statement.executeUpdate(updateQuery);

            statement.close();
            connection.close();

//			response.sendRedirect("successPage.html");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}

