package com.example.javaeeproject.db;

import java.sql.Connection;
import java.sql.Statement;

public class DBInitializer {

    public static void main(String[] args) {
        try (Connection connection = DBConnector.getConnectionInit();
             Statement statement = connection.createStatement()) {

            // Split SQL statements
            String[] sqlStatements = {
                    "CREATE DATABASE IF NOT EXISTS Ethioair2",
                    "USE Ethioair2",
                    "CREATE TABLE IF NOT EXISTS Admin_log (" +
                            "admin_name VARCHAR(10) PRIMARY KEY, " +
                            "admin_pass VARCHAR(10)) ENGINE=INNODB",
                    "INSERT INTO Admin_log (admin_name, admin_pass) " +
                            "VALUES ('admin', 'admin'), ('bini', 'bini')",
                    "CREATE TABLE IF NOT EXISTS flight_details (" +
                            "    flight_id VARCHAR(14) PRIMARY KEY, " +
                            "    flight_no VARCHAR(14), " +
                            "    flight_name VARCHAR(20), " +
                            "    from_city VARCHAR(70), " +
                            "    to_city VARCHAR(70), " +
                            "    date_of_flight VARCHAR(10), " +
                            "    flight_arrival_time VARCHAR(20), " +
                            "    flight_reach_time VARCHAR(20), " +
                            "    duration VARCHAR(20), " +
                            "    first_class_seat INT(5), " +
                            "    first_class_seat_booked INT(5), " +
                            "    first_class_seat_aval INT(5), " +
                            "    buss_class_seat INT(5), " +
                            "    buss_class_seat_booked INT(5), " +
                            "    buss_class_seat_aval INT(5), " +
                            "    eco_class_seat INT(5), " +
                            "    eco_class_seat_booked INT(5), " +
                            "    eco_class_seat_aval INT(5), " +
                            "    first_class_price INT(10), " +
                            "    buss_class_price INT(10), " +
                            "    eco_class_price INT(10)" +
                            ") ENGINE=INNODB; ",
                    "CREATE TABLE IF NOT EXISTS user_details (" +
                            "fullname VARCHAR(20), " +
                            "username VARCHAR(20) PRIMARY KEY, " +
                            "password VARCHAR(20), " +
                            "mobileno VARCHAR(15), " +
                            "email_address VARCHAR(40), " +
                            "city VARCHAR(30), " +
                            "state VARCHAR(30), " +
                            "pincode INT(10), " +
                            "profile_image VARCHAR(255) DEFAULT 'img/user1.jpg', " +  // Set default image file path
                            "INDEX (username) " +
                            ") ENGINE=INNODB",
                    "CREATE TABLE IF NOT EXISTS booking_details (" +
                            "username VARCHAR(14), " +
                            "flight_no VARCHAR(14), " +
                            "date_of_flight VARCHAR(10), " +
                            "no_of_seats INT(10), " +
                            "ticket_type VARCHAR(20), " +
                            "adults INT(5), " +
                            "child INT(5), " +
                            "PNR VARCHAR(10) PRIMARY KEY) ENGINE=INNODB",
                    "CREATE TABLE IF NOT EXISTS payment_details (" +
                            "PNR VARCHAR(10) PRIMARY KEY, " +
                            "transaction_id VARCHAR(20), " +
                            "address VARCHAR(100), " +
                            "payment_gateway VARCHAR(20), " +
                            "payment_id VARCHAR(45), " +
                            "fair INT(10), " +
                            "coupon VARCHAR(15), " +
                            "discount INT(10), " +
                            "actual_fair INT(10)) ENGINE=INNODB",
                    "CREATE TABLE IF NOT EXISTS coupon_table (" +
                            "cname VARCHAR(10) PRIMARY KEY, " +
                            "discount_percentage INT(5)) ENGINE=INNODB",
                    "CREATE TABLE IF NOT EXISTS contact_table (" +
                            "name VARCHAR(40), " +
                            "email VARCHAR(50), " +
                            "subject VARCHAR(120), " +
                            "message VARCHAR(250)) ENGINE=INNODB",
                    "CREATE TABLE IF NOT EXISTS Newsletter (" +
                            "id INT NOT NULL AUTO_INCREMENT, " +
                            "emails VARCHAR(169) NOT NULL, " +
                            "PRIMARY KEY (id)) ENGINE=INNODB"
            };

            for (String sql : sqlStatements) {
                statement.execute(sql);
            }

            System.out.println("Database initialized successfully.");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
