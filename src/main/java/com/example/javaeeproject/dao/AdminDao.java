package com.example.javaeeproject.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.example.javaeeproject.dao.UserDao;
import com.example.javaeeproject.dao.AdminDao;
import com.example.javaeeproject.db.DBConnector;


public class AdminDao {
    public boolean validateAdmin(String adminName, String password) {
        boolean isvalidateAdmin = false;
        try {
            Connection connection = DBConnector.getConnection();
            try {
                PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM Admin_log WHERE admin_name=? AND admin_pass=?");
                preparedStatement.setString(1, adminName);
                preparedStatement.setString(2, password);
                ResultSet resultSet = preparedStatement.executeQuery();
                if (resultSet.next()) {
                    isvalidateAdmin = true;
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return isvalidateAdmin;
    }

}
