package com.example.javaeeproject.servlet;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.example.javaeeproject.db.DBConnector;

@WebServlet("/UpdateFlightServlet")
public class UpdateFlightServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String flightId = request.getParameter("flight_id");
        String flightNo = request.getParameter("flight_no");
        String flightName = request.getParameter("flight_name");
        String fromCity = request.getParameter("from_city");
        String toCity = request.getParameter("to_city");
        String dateOfFlight = request.getParameter("date_of_flight");
        String flightArrivalTime = request.getParameter("flight_arrival_time");
        String flightReachTime = request.getParameter("flight_reach_time");
        String duration = request.getParameter("duration");
        String firstClassSeatStr = request.getParameter("first_class_seat");
        String firstClassSeatBookedStr = request.getParameter("first_class_seat_booked");
        String firstClassSeatAvalStr = request.getParameter("first_class_seat_aval");
        String bussClassSeatStr = request.getParameter("buss_class_seat");
        String bussClassSeatBookedStr = request.getParameter("buss_class_seat_booked");
        String bussClassSeatAvalStr = request.getParameter("buss_class_seat_aval");
        String ecoClassSeatStr = request.getParameter("eco_class_seat");
        String ecoClassSeatBookedStr = request.getParameter("eco_class_seat_booked");
        String ecoClassSeatAvalStr = request.getParameter("eco_class_seat_aval");
        String firstClassPriceStr = request.getParameter("first_class_price");
        String bussClassPriceStr = request.getParameter("buss_class_price");
        String ecoClassPriceStr = request.getParameter("eco_class_price");

        try (Connection connection = DBConnector.getConnection()) {
            // Update flight details in the database
            StringBuilder updateQuery = new StringBuilder("UPDATE flight_details SET ");

            if (flightNo != null) updateQuery.append("flight_no=?, ");
            if (flightName != null) updateQuery.append("flight_name=?, ");
            if (fromCity != null) updateQuery.append("from_city=?, ");
            if (toCity != null) updateQuery.append("to_city=?, ");
            if (dateOfFlight != null) updateQuery.append("date_of_flight=?, ");
            if (flightArrivalTime != null) updateQuery.append("flight_arrival_time=?, ");
            if (flightReachTime != null) updateQuery.append("flight_reach_time=?, ");
            if (duration != null) updateQuery.append("duration=?, ");
            if (firstClassSeatStr != null) updateQuery.append("first_class_seat=?, ");
            if (firstClassSeatBookedStr != null) updateQuery.append("first_class_seat_booked=?, ");
            if (firstClassSeatAvalStr != null) updateQuery.append("first_class_seat_aval=?, ");
            if (bussClassSeatStr != null) updateQuery.append("buss_class_seat=?, ");
            if (bussClassSeatBookedStr != null) updateQuery.append("buss_class_seat_booked=?, ");
            if (bussClassSeatAvalStr != null) updateQuery.append("buss_class_seat_aval=?, ");
            if (ecoClassSeatStr != null) updateQuery.append("eco_class_seat=?, ");
            if (ecoClassSeatBookedStr != null) updateQuery.append("eco_class_seat_booked=?, ");
            if (ecoClassSeatAvalStr != null) updateQuery.append("eco_class_seat_aval=?, ");
            if (firstClassPriceStr != null) updateQuery.append("first_class_price=?, ");
            if (bussClassPriceStr != null) updateQuery.append("buss_class_price=?, ");
            if (ecoClassPriceStr != null) updateQuery.append("eco_class_price=?, ");

            // Remove the trailing comma if there are any optional parameters
            if (updateQuery.toString().endsWith(", ")) {
                updateQuery.setLength(updateQuery.length() - 2);
            }

            updateQuery.append(" WHERE flight_id=?");

            try (PreparedStatement preparedStatement = connection.prepareStatement(updateQuery.toString())) {
                int parameterIndex = 1;

                if (flightNo != null) preparedStatement.setString(parameterIndex++, flightNo);
                if (flightName != null) preparedStatement.setString(parameterIndex++, flightName);
                if (fromCity != null) preparedStatement.setString(parameterIndex++, fromCity);
                if (toCity != null) preparedStatement.setString(parameterIndex++, toCity);
                if (dateOfFlight != null) preparedStatement.setString(parameterIndex++, dateOfFlight);
                if (flightArrivalTime != null) preparedStatement.setString(parameterIndex++, flightArrivalTime);
                if (flightReachTime != null) preparedStatement.setString(parameterIndex++, flightReachTime);
                if (duration != null) preparedStatement.setString(parameterIndex++, duration);
                if (firstClassSeatStr != null) preparedStatement.setInt(parameterIndex++, Integer.parseInt(firstClassSeatStr));
                if (firstClassSeatBookedStr != null) preparedStatement.setInt(parameterIndex++, Integer.parseInt(firstClassSeatBookedStr));
                if (firstClassSeatAvalStr != null) preparedStatement.setInt(parameterIndex++, Integer.parseInt(firstClassSeatAvalStr));
                if (bussClassSeatStr != null) preparedStatement.setInt(parameterIndex++, Integer.parseInt(bussClassSeatStr));
                if (bussClassSeatBookedStr != null) preparedStatement.setInt(parameterIndex++, Integer.parseInt(bussClassSeatBookedStr));
                if (bussClassSeatAvalStr != null) preparedStatement.setInt(parameterIndex++, Integer.parseInt(bussClassSeatAvalStr));
                if (ecoClassSeatStr != null) preparedStatement.setInt(parameterIndex++, Integer.parseInt(ecoClassSeatStr));
                if (ecoClassSeatBookedStr != null) preparedStatement.setInt(parameterIndex++, Integer.parseInt(ecoClassSeatBookedStr));
                if (ecoClassSeatAvalStr != null) preparedStatement.setInt(parameterIndex++, Integer.parseInt(ecoClassSeatAvalStr));
                if (firstClassPriceStr != null) preparedStatement.setInt(parameterIndex++, Integer.parseInt(firstClassPriceStr));
                if (bussClassPriceStr != null) preparedStatement.setInt(parameterIndex++, Integer.parseInt(bussClassPriceStr));
                if (ecoClassPriceStr != null) preparedStatement.setInt(parameterIndex++, Integer.parseInt(ecoClassPriceStr));

                preparedStatement.setString(parameterIndex++, flightId);

                int rowsAffected = preparedStatement.executeUpdate();
                if (rowsAffected > 0) {
                    response.sendRedirect(request.getContextPath() +"/update_flight_success"); // Redirect to a success page
                } else {
                    response.sendRedirect(request.getContextPath() +"/update_flight_failure"); // Redirect to a failure page
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect(request.getContextPath() +"/update_failure"); // Redirect to a failure page
        }
    }
}
