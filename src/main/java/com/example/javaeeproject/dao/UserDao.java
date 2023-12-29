package com.example.javaeeproject.dao;

import java.sql.*;

import com.example.javaeeproject.DatabaseConnector;
import com.example.javaeeproject.db.DBConnector;
import com.example.javaeeproject.model.User;

public class UserDao {
    private static Connection connection = null;
    private static final String url = "jdbc:mysql://127.0.0.1:3306/AIRRESERVE";
    private static final String username = "Bini";
    private static final String password = "Biniyam5982.";


    public void insertUser(User user) throws SQLException {
        try{
            PreparedStatement pstmt = connection.prepareStatement(
                    "INSERT INTO user_details (fullname, username, password, mobileno, email_address, state, city, pincode) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"); {
            }
            pstmt.setString(1, user.getFullName());
            pstmt.setString(2, user.getUserName());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, "+" + user.getCountryCode() + " " + user.getPhno());
            pstmt.setString(5, user.getEmail_address());
            pstmt.setString(6, user.getState());
            pstmt.setString(7, user.getCity());
            pstmt.setString(8, user.getPincod());
            pstmt.executeUpdate();
        }catch (Exception e){
            System.out.println(e);
        }
    }

    public User getUserByUsername(String username) throws SQLException {
        try (Connection connection = DatabaseConnector.getConnection();
             PreparedStatement pstmt = connection.prepareStatement("SELECT * FROM user_details WHERE username = ?")) {

            pstmt.setString(1, username);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    User user = new User();
                    user.setFullName(rs.getString("fullname"));
                    user.setUserName(rs.getString("username"));
                    user.setPassword(rs.getString("password"));
                    user.setEmail_address(rs.getString("email_address"));
                    user.setState(rs.getString("state"));
                    user.setCity(rs.getString("city"));
                    user.setPincod(rs.getString("pincode"));
                    return user;
                }
            }
        }
        return null;
    }

    // Other methods follow the same pattern with try-with-resources and improved exception handling
    // ...

    public boolean validateUser(String username, String password) throws SQLException {
        try (Connection connection = DBConnector.getConnection();
             PreparedStatement pstmt = connection.prepareStatement("SELECT * FROM user_details WHERE username = ? AND password = ?")) {

            pstmt.setString(1, username);
            pstmt.setString(2, password);
            try (ResultSet rs = pstmt.executeQuery()) {
                return rs.next();
            }
        }
    }
}
