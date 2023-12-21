package com.example.javaeeproject.servletlab;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;

import java.io.*;

@WebServlet("/hello")
public class Hello extends HttpServlet {
    public void doGet(HttpServletRequest request,HttpServletResponse response )throws IOException{
        PrintWriter pw = response.getWriter();
        pw.println("<html>");
        pw.println("<body>");
        pw.println("<h1> hello world</h1>");
//        pw.println("<h1> hello world </h1>");
        pw.println("</body");
        pw.println("/html");

    }


}
