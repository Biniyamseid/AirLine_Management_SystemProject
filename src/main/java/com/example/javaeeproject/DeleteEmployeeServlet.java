package com.example.javaeeproject;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;


@WebServlet("/delete")
public class DeleteEmployeeServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response){
        DBConfig dbConfig = new DBConfig();

        try {
            Class.forName(dbConfig.driver);
            Connection connection = DriverManager.getConnection(dbConfig.url, dbConfig.username, dbConfig.password);
            Statement statement = connection.createStatement();
            int id = Integer.parseInt(request.getParameter("id"));

            String deleteQuery = String.format("DELETE FROM employees WHERE id = %d", id);

            statement.executeUpdate(deleteQuery);
            statement.close();
            connection.close();

        } catch (Exception e) {
            e.printStackTrace();
        }


    }


}
