package com.example.javaeeproject.servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.example.javaeeproject.dao.UserDao;
import com.example.javaeeproject.model.User;
import jakarta.servlet.RequestDispatcher;

import java.io.IOException;
import java.sql.SQLException;




@WebServlet("/viewProfile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ServletException, IOException {
        String username = request.getParameter("username");

        UserDao userDao = new UserDao();
        User user = null;
        try {
            user = userDao.getUserByUsername(username);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        // Forward to JSP for displaying user profile
        request.setAttribute("user", user);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/profile");
        dispatcher.forward(request, response);
    }
}

