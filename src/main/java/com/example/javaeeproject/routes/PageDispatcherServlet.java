package com.example.javaeeproject.routes;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet({"/",
        "/login_page",
        "/about",
        "/add_flight_success",
        "/add_flight_validation",
        "/addflights",
        "/addflights_failed",
        "/admin_login",
        "/admin_login_failed",
        "/admin_login_pass",
        "/admin_login_validation",
        "/availability",
        "/availability_from_admin",
        "/availability_from_user_booking",
        "/booking_gateway_to_second_book",
        "/booking", "/booking_error_msg",
        "/Cancellation",
        "/Cancellation_failed",
        "/Cancellation_confirmed",
        "/contact",
        "/contact_response",
        "/contact_response_u",
        "/contact_user",
        "/coupon_add",
        "/coupon_add_failed",
        "/coupon_add_success",
        "/coupon_delete",
        "/coupon_dlt_fld",
        "/coupon_dlt_scs",
        "/coupon_search",
        "/coupon_search_success",
        "/coupon_search_failed",
        "/error", "/error_a",
        "/error_u",
        "/Newsletter",
        "/payment_failed",
        "/payment_success",
        "/register",
        "/registration_failed",
        "/registration_success",
        "/search_filter_flights_result",
        "/Responses",
        "/search_filter_flights_result_a",
        "/search_filter_flights_result_u",
        "/search_result_a",
        "/tickettype",
        "/user_about",
        "/user_booking",
        "/user_booking_failed",
        "/user_login_failed",
        "/user_login_pass",

})
public class PageDispatcherServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uri = request.getServletPath();
        switch (uri) {
            case "/":
                showPage(request, response, "/WEB-INF/jsp/index.jsp");
                break;
            case "/home":
                showPage(request,response,"/index.jsp");
            case "/login_page":
                showPage(request, response, "/WEB-INF/jsp/login.jsp");
                break;
            case "/about":
                showPage(request, response, "/WEB-INF/jsp/about.jsp");
                break;
            case "/add_flight_success":
                showPage(request, response, "/WEB-INF/jsp/add_flight_success.jsp");
                break;

            case "/add_flight_validation":
                showPage(request, response, "/WEB-INF/jsp/add_flight_validation.jsp");
                break;
            case "/addflights":
                showPage(request, response, "/WEB-INF/jsp/addflights.jsp");
                break;
            case "/addflights_failed":
                showPage(request, response, "/WEB-INF/jsp/addflights_failed.jsp");
                break;
            case "/admin_login":
                showPage(request, response, "/WEB-INF/jsp/admin_login.jsp");
                break;
            case "/admin_login_failed":
                showPage(request, response, "/WEB-INF/jsp/admin_login_failed.jsp");
                break;
            case "/admin_login_pass":
                showPage(request, response, "/WEB-INF/jsp/admin_login_pass.jsp");
                break;
            case "/admin_login_validation":
                showPage(request, response, "/WEB-INF/jsp/admin_login_validation.jsp");
                break;
            case "/availability":
                showPage(request, response, "/WEB-INF/jsp/availability.jsp");
                break;
            case "/availability_from_admin":
                showPage(request, response, "/WEB-INF/jsp/availability_from_admin.jsp");
                break;
            case "/availability_from_user_booking":
                showPage(request, response, "/WEB-INF/jsp/availability_from_user_booking.jsp");
                break;
            case "/booking_gateway_to_second_book":
                showPage(request, response, "/WEB-INF/jsp/booking_gateway_to_second_booking.jsp");
                break;
            case "/booking":
                showPage(request, response, "/WEB-INF/jsp/booking.jsp");
                break;
            case "/booking_error_msg":
                showPage(request, response, "/WEB-INF/jsp/booking_error_msg.jsp");
                break;
            case "/Cancellation":
                showPage(request, response, "/WEB-INF/jsp/Cancellation.jsp");

                break;
            case "/Cancellation_failed":
                showPage(request, response, "/WEB-INF/jsp/Cancellation_failed.jsp");
                break;
            case "/Cancellation_confirmed":
                showPage(request, response, "/WEB-INF/jsp/Cancellation_confirmed.jsp");
                break;
            case "/contact":
                showPage(request, response, "/WEB-INF/jsp/contact.jsp");
                break;
            case "/contact_response":
                showPage(request, response, "/WEB-INF/jsp/contact_response.jsp");
                break;
            case "/contact_response_u":
                showPage(request, response, "/WEB-INF/jsp/contact_response_u.jsp");

                break;
            case "/contact_user":
                showPage(request, response, "/WEB-INF/jsp/contact_u.jsp");

                break;
            case "/coupon_add":
                showPage(request, response, "/WEB-INF/jsp/coupon_add.jsp");

                break;
            case "/coupon_add_failed":
                showPage(request, response, "/WEB-INF/jsp/coupon_add_failed.jsp");
                break;
            case "/coupon_add_success":
                showPage(request, response, "/WEB-INF/jsp/coupon_add_success.jsp");
                break;
            case "/coupon_delete":
                showPage(request, response, "/WEB-INF/jsp/coupon_delete.jsp");

                break;
            case "/coupon_dlt_fld":
                showPage(request, response, "/WEB-INF/jsp/coupon_dlt_fld.jsp");
                break;
            case "/coupon_dlt_scs":
                showPage(request, response, "/WEB-INF/jsp/coupon_dlt_scs.jsp");
                break;
            case "/coupon_search":
                showPage(request, response, "/WEB-INF/jsp/coupon_search.jsp");
                break;
            case "/coupon_search_failed":
                showPage(request, response, "/WEB-INF/jsp/coupon_search_failed.jsp");
                break;
            case "/coupon_search_success":
                showPage(request, response, "/WEB-INF/jsp/coupon_search_succ.jsp");
                break;
            case "/error":
                showPage(request, response, "/WEB-INF/jsp/error.jsp");
                break;
            case "/error_a":
                showPage(request, response, "/WEB-INF/jsp/error_a.jsp");
                break;
            case "/error_u":
                showPage(request, response, "/WEB-INF/jsp/error_u.jsp");
                break;
            case "/Newsletter":
                showPage(request, response, "/WEB-INF/jsp/Newsletter.jsp");
                break;
            case "/payment_failed":
                showPage(request, response, "/WEB-INF/jsp/payment_failed.jsp");
                break;
            case "/payment_success":
                showPage(request, response, "/WEB-INF/jsp/payment_success.jsp");
                break;
            case "/register":
                showPage(request, response, "/WEB-INF/jsp/register.jsp");
                break;
            case "/registration_failed":
                showPage(request, response, "/WEB-INF/jsp/registration_failed.jsp");
                break;
            case "/registration_success":
                showPage(request, response, "/WEB-INF/jsp/registration_scs.jsp");
                break;
            case "/Responses":
                showPage(request, response, "/WEB-INF/jsp/Responses.jsp");
                break;
            case "/search_filter_flights_result":
                showPage(request, response, "/WEB-INF/jsp/search_filter_result.jsp");
                break;
            case "/search_filter_flights_result_a":
                showPage(request, response, "/WEB-INF/jsp/search_filter_result_a.jsp");
                break;
            case "/search_filter_flights_result_u":
                showPage(request, response, "/WEB-INF/jsp/search_filter_result_u.jsp");
                break;
            case "/search_result_a":
                showPage(request, response, "/WEB-INF/jsp/search_result_a.jsp");
                break;
            case "/search_result_u":
                showPage(request, response, "/WEB-INF/jsp/search_result_u.jsp");
                break;
            case "/search_success":
                showPage(request, response, "/WEB-INF/jsp/search_success.jsp");
                break;
            case "/search_success_u":
                showPage(request, response, "/WEB-INF/jsp/search_success_u.jsp");
                break;
            case "/search_success_a":
                showPage(request, response, "/WEB-INF/jsp/search_success_a.jsp");
                break;
            case "/tickettype":
                showPage(request, response, "/WEB-INF/jsp/tickettype.jsp");
                break;
            case "/user_about":
                showPage(request, response, "/WEB-INF/jsp/user_about.jsp");
                break;
            case "/user_booking":
                showPage(request, response, "/WEB-INF/jsp/user_booking.jsp");
                break;
            case "/user_booking_failed":
                showPage(request, response, "/WEB-INF/jsp/user_booking_failed.jsp");
                break;
            case "/user_login_failed":
                showPage(request, response, "/WEB-INF/jsp/user_login_failed.jsp");

                break;
            case "/user_login_pass":
                showPage(request, response, "/WEB-INF/jsp/user_login_pass.jsp");

                break;

        }
    }

    protected void showPage(HttpServletRequest request, HttpServletResponse response, String page) {
        RequestDispatcher dispatcher = request.getRequestDispatcher(page);
        try {
            String absolutePath = getServletContext().getRealPath("/");
            System.out.println("Local Folder Structure: " + absolutePath);
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

}