package com.example.javaeeproject;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/addnums")
public class AddNumbersServlet extends HttpServlet {
    public void service(HttpServletRequest request,HttpServletResponse response) throws IOException {
        String num1 = request.getParameter("num1");
        System.out.println(num1);
        String num2 = request.getParameter("num2");
        PrintWriter pw = response.getWriter();
        int res = Integer.parseInt(num1)+Integer.parseInt(num2);
        pw.printf("<html><body><div><h1>the answer is %d</h1></div></body></html>", res);
//        pw.printf("<html><body><div><h1><h1>%d</div></body></html>",num1+num2);

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response){
        System.out.println("get request handler");
    }
    protected void doPost(HttpServletRequest request,HttpServletResponse response){
            System.out.println("post request handler is called");
    }
}
