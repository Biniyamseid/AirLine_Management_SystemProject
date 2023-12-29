package com.example.javaeeproject.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

//import com.example.javaeeproject.DatabaseConnector;
import com.example.javaeeproject.dao.UserDao;
import com.example.javaeeproject.dao.AdminDao;
import com.example.javaeeproject.model.User;



@WebServlet("/user_login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String admin_name = request.getParameter("admin_name");
        String admin_pass = request.getParameter("admin_pass");
        boolean isValidAdmin = false;
        boolean isvalidUser = false;

        if (username != null && password != null) {
            UserDao userDAO = new UserDao();
            try {
                isvalidUser = userDAO.validateUser(username, password);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }

        }
        if (admin_name != null && admin_pass != null) {
            AdminDao adminDAO = new AdminDao();
            isValidAdmin = adminDAO.validateAdmin(admin_name, admin_pass);

        }
        if (isvalidUser) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            response.sendRedirect(request.getContextPath() + "/user_login_pass");
        } else if (isValidAdmin) {
            HttpSession session = request.getSession();
            session.setAttribute("admin_name", admin_name);
            response.sendRedirect(request.getContextPath() + "/admin_login_pass");

        } else {

            response.sendRedirect(request.getContextPath() + "/user_login_failed");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}