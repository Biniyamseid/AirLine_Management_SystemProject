package com.example.javaeeproject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


@WebServlet("/jdbctest")
public class Jdbcconnection extends HttpServlet {
    private static final String url = "jdbc:mysql://127.0.0.1:3306/?user=Bini";
    private static final String username = "Bini";
    private static final String password = "Biniyam5982.";
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("passed 1");

        }catch (ClassNotFoundException e){
            System.out.println(e);
        }
        try{
            Connection connection = DatabaseConnector.getConnection();
            System.out.println("passed2");
            System.out.println("connection established");
            Statement statement = connection.createStatement();
            //create sql quert to create a new database
            String createDB = "use teachers";
            statement.executeUpdate(createDB);

            System.out.println("Database is selected succcessfully");
            String Selectall = "select * from teachers";
            ResultSet resultSet  = statement.executeQuery(Selectall);
            while(resultSet.next()){
                System.out.println(resultSet);
            }

            //close resources
            statement.close();
            connection.close();

        } catch (SQLException e) {
            System.out.println(e);
            e.printStackTrace();
            throw new RuntimeException(e);
        }

    }
}
