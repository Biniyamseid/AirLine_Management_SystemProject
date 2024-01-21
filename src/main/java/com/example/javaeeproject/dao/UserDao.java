package com.example.javaeeproject.dao;

import java.sql.*;


import com.example.javaeeproject.db.DBConnector;
import com.example.javaeeproject.model.User;

public class UserDao {
    private static final Connection connection = DBConnector.getConnection();


    public void insertUser(User user) throws SQLException {
        try{
            PreparedStatement pstmt = connection.prepareStatement(
                    "INSERT INTO user_details (fullname, username, password, mobileno, email_address, state, city, pincode) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"); {
            }
            pstmt.setString(1, User.getFullName());
            pstmt.setString(2, user.getUserName());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, "+" + user.getCountryCode() + " " + user.getPhno());
            pstmt.setString(5, user.getEmail_address());
            pstmt.setString(6, user.getState());
            pstmt.setString(7, user.getCity());
            pstmt.setString(8, user.getPincod());
//            pstmt.setString( 9, User.getProfileImage());
            pstmt.executeUpdate();
        }catch (Exception e){
            System.out.println("error has occured in registration");
            System.out.println(e);
        }
        System.out.println("user registered successfully");
    }

    public User getUserByUsername(String username) throws SQLException {
        try (Connection connection = DBConnector.getConnection();
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
                    user.setProfileImage(rs.getString("profile_image"));
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

    public void deleteUser(String username) throws SQLException {
        try (Connection connection = DBConnector.getConnection();
             PreparedStatement pstmt = connection.prepareStatement("DELETE FROM user_details WHERE username = ?")) {

            pstmt.setString(1, username);
            pstmt.executeUpdate();
        }
    }
    public void updateProfileImage(String username, String imagePath) throws SQLException {
        try (Connection connection = DBConnector.getConnection();
             PreparedStatement pstmt = connection.prepareStatement("UPDATE user_details SET profileImage = ? WHERE username = ?")) {

            pstmt.setString(1, imagePath);
            pstmt.setString(2, username);

            pstmt.executeUpdate();
        }
    }


    public void updateUser(User user) throws SQLException {
        try (Connection connection = DBConnector.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(
                     "UPDATE user_details SET fullname = ?, password = ?, email_address = ?, state = ?, city = ?, pincode = ?, profile_image = ? WHERE username = ?")) {

            pstmt.setString(1, User.getFullName());
            pstmt.setString(2, user.getPassword());
            pstmt.setString(3, user.getEmail_address());
            pstmt.setString(4, user.getState());
            pstmt.setString(5, user.getCity());
            pstmt.setString(6, user.getPincod());
            pstmt.setString(7, User.getProfileImage());
            pstmt.setString(8, user.getUserName());

            pstmt.executeUpdate();
        }
    }

}
