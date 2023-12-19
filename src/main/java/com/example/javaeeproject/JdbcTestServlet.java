package com.example.javaeeproject;




import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

//@WebServlet("/testDatasource1")
//public class JdbcTestServlet extends HttpServlet {
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        response.setContentType("text/html");
//
//        try (PrintWriter out = response.getWriter()) {
//            try {
//                // Manually look up the DataSource from JNDI
//                Context initContext = new InitialContext();
//                Context envContext = (Context) initContext.lookup("java:/comp/env");
//                DataSource dataSource = (DataSource) envContext.lookup("jdbc/employee_management@localhost"); // Replace with your JNDI name
//
//                // Establish the database connection
//                try (Connection connection = dataSource.getConnection()) {
//                    out.println("<html><head><title>Datasource Connection Test</title></head><body>");
//                    out.println("<h2>Datasource Connection Test</h2>");
//                    out.println("<p>Datasource connection successful!</p>");
//                    out.println("</body></html>");
//                } catch (SQLException e) {
//                    out.println("<html><head><title>Datasource Connection Test</title></head><body>");
//                    out.println("<h2>Datasource Connection Test</h2>");
//                    out.println("<p>Error connecting to the datasource: " + e.getMessage() + "</p>");
//                    out.println("</body></html>");
//                    e.printStackTrace(out);
//                }
//            } catch (Exception e) {
//                out.println("<html><head><title>Datasource Connection Test</title></head><body>");
//                out.println("<h2>Datasource Connection Test</h2>");
//                out.println("<p>Error looking up the datasource: " + e.getMessage() + "</p>");
//                out.println("</body></html>");
//                e.printStackTrace(out);
//            }
//        }
//    }
//}


import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
        import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet("/testDatasource1")
public class JdbcTestServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        try (PrintWriter out = response.getWriter()) {
            try {
                // Manually look up the DataSource from JNDI
                Context initContext = new InitialContext();
                Context envContext = (Context) initContext.lookup("java:/comp/env");
                DataSource dataSource = (DataSource) envContext.lookup("jdbc/employee_management");

                // Establish the database connection
                try (Connection connection = dataSource.getConnection()) {
                    out.println("<html><head><title>Datasource Connection Test</title></head><body>");
                    out.println("<h2>Datasource Connection Test</h2>");
                    out.println("<p>Datasource connection successful!</p>");
                    out.println("</body></html>");
                } catch (SQLException e) {
                    out.println("<html><head><title>Datasource Connection Test</title></head><body>");
                    out.println("<h2>Datasource Connection Test</h2>");
                    out.println("<p>Error connecting to the datasource: " + e.getMessage() + "</p>");
                    out.println("</body></html>");
                    e.printStackTrace(out);
                }
            } catch (Exception e) {
                out.println("<html><head><title>Datasource Connection Test</title></head><body>");
                out.println("<h2>Datasource Connection Test</h2>");
                out.println("<p>Error looking up the datasource: " + e.getMessage() + "</p>");
                out.println("</body></html>");
                e.printStackTrace(out);
            }
        }
    }
}
