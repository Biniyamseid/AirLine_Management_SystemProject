package com.example.javaeeproject;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/circlearea")
public class CircleAreaServlet  extends HttpServlet {
    public void service(HttpServletRequest request,HttpServletResponse response) throws IOException {
        String n1 = request.getParameter("n");
        String n2 = request.getParameter("radius");
        PrintWriter pw = response.getWriter();
        int ans = Integer.parseInt(n1) *Integer.parseInt(n2)*Integer.parseInt(n2);
        pw.printf("<html><body><h1> the answer is %d</h1></body></html>",ans);


    }

}
