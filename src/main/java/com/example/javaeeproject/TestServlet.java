package com.example.javaeeproject;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/response")
public class TestServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response){
        System.out.print("request is received");
    }
    protected void doPost(HttpServletRequest request,HttpServletResponse response){
        System.out.print("post request is  received");
    }
}
