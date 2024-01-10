package com.example.javaeeproject.servlet;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.example.javaeeproject.db.DBConnector;

@WebServlet("/DeleteFlightServlet")
public class DeleteFlightServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String flightId = request.getParameter("flight_id");

        try (Connection connection = DBConnector.getConnection()) {
            // Delete flight from the database
            String deleteQuery = "DELETE FROM flight_details WHERE flight_id=?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(deleteQuery)) {
                preparedStatement.setString(1, flightId);

                int rowsAffected = preparedStatement.executeUpdate();
                if (rowsAffected > 0) {
                    response.sendRedirect("delete_success"); // Redirect to a success page
                } else {
                    response.sendRedirect("delete_failure"); // Redirect to a failure page
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("delete_failure.jsp"); // Redirect to a failure page
        }
    }
}
