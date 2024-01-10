package com.example.javaeeproject.servlet;
import com.example.javaeeproject.dao.UserDao;
import com.example.javaeeproject.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/deleteAccount")
public class DeleteAccountServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");

        UserDao userDao = new UserDao();

        try {
            User user = userDao.getUserByUsername(username);

            if (user != null) {
                // Delete user account
                userDao.deleteUser(username);

                // You may want to invalidate the session or perform other cleanup actions

                response.sendRedirect("index"); // Redirect to a page after successful deletion
            } else {
                // Handle the case where the user does not exist
                response.sendRedirect("error");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle database error
            response.sendRedirect("error");
        }
    }
}
