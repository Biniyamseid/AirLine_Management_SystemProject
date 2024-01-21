package com.example.javaeeproject.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;




import com.example.javaeeproject.model.User;
import com.example.javaeeproject.dao.UserDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/registration")
public class registration extends HttpServlet {
//    protected void processRequest(HttpServletRequest request, HttpServletResponse
protected void doGet(HttpServletRequest request, HttpServletResponse response){
    System.out.println("request is received");

}
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try {
            String fullname = request.getParameter("fullname");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String countryCode = request.getParameter("countryCode");
            String phno = request.getParameter("phno");
            String email_address = request.getParameter("email_address");
            String state = request.getParameter("state");
            String city = request.getParameter("city");
            String pincode = request.getParameter("pincode");
            User user = new User();
            user.setFullName(fullname);
            user.setUserName(username);
            user.setPassword(password);
            user.setCountryCode(countryCode);
            user.setPhno(phno);
            user.setEmail_address(email_address);
            user.setState(state);
            user.setCity(city);
            user.setPincod(pincode);
            UserDao userDAO = new UserDao();
            userDAO.insertUser(user);
            System.out.println(user+"user");
            username = user.getUserName();
            System.out.println(username+"username");
            request.getSession().setAttribute("username", username);

            response.sendRedirect(request.getContextPath() +"/registration_success");

//			RequestDispatcher view = request.getRequestDispatcher("/registration_success");
//			view.forward(request, response);
            System.out.println("record inserted successfully");
        } catch (Exception e) {
            System.out.println(e);
            e.printStackTrace();
//			RequestDispatcher view = request.getRequestDispatcher("registration_failed");
            response.sendRedirect(request.getContextPath() +"/registration_failed");
//			view.forward(request, response);
        }
    }
}
