package com.example.javaeeproject;


import com.example.javaeeproject.db.DBInitializer;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import jakarta.servlet.http.HttpServletResponse;

@WebListener
public class AppInitializer implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        // Initialize the database
        initializeDatabase();

        // Redirect to the index page
        redirectToIndex(sce);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // Cleanup code, if needed
    }

    private void initializeDatabase() {
        // Call your database initialization logic here
        // For example, you can call DBInitializer.main() or any other appropriate method
        DBInitializer.main(null);
    }

    private void redirectToIndex(ServletContextEvent sce) {
        // Get the context path
        String contextPath = sce.getServletContext().getContextPath();

        // Redirect to the index page
        try {
            HttpServletResponse response = (HttpServletResponse) sce.getServletContext().getAttribute("response");
            response.sendRedirect(contextPath + "/index.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
