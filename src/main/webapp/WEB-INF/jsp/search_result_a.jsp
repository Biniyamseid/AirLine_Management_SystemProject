<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.example.javaeeproject.db.DBConnector"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Airline Reservation System</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <jsp:include page="../includes/header_css_links.jsp"/>

    <style>
     
    div.scroll {
        margin: 4%;
        padding: 4px;
        width: 90%;
        overflow: auto;
        overflow-x: auto;
        overflow-y: auto;
        white-space: nowrap;
        scrollbar-color: #d4aa70 #e4e4e4;
        scrollbar-width: thin;
    }
    
    div.scroll::-webkit-scrollbar {
        width: 2px;               /* width of the entire scrollbar */
     }

    div.scroll::-webkit-scrollbar-track {
        background: orange;        /* color of the tracking area */
    }

    div.scroll::-webkit-scrollbar-thumb {
        background-color: blue;    /* color of the scroll thumb */
        border-radius: 20px;       /* roundness of the scroll thumb */
        border: 3px solid orange;  /* creates padding around scroll thumb */
    }
    
    table, th, td {
        border: 1px solid black;
    }
    </style>
</head>

<body>
    <div class="container-xxl bg-white p-0">
        <!-- Header Start -->
        <div class="container-xxl bg-white p-0">
            <!-- Spinner Start -->
            <div id="spinner"
                 class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
                <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                    <span class="sr-only">Loading...</span>
                </div>
            </div>
            <!-- Spinner End -->
        </div>
        <!-- Header Start -->
        <div class="container-fluid bg-dark px-0">
            <div class="row gx-0">
                <div class="col-lg-3 bg-dark d-none d-lg-block">
                    <a href="${pageContext.request.contextPath}/" class="navbar-brand w-100 h-100 m-0 p-0 d-flex align-items-center justify-content-center">
                        <h1 class="m-0 text-primary text-uppercase">EthioAir</h1>
                    </a>
                </div>
                <div class="col-lg-9">
                    <div class="row gx-0 bg-white d-none d-lg-flex">
                        <div class="col-lg-7 px-5 text-start">
                            <div class="h-100 d-inline-flex align-items-center py-2 me-4">
                                <i class="fa fa-envelope text-primary me-2"></i>
                                <p class="mb-0">ethio@gmail.com</p>
                            </div>
                            <div class="h-100 d-inline-flex align-items-center py-2">
                                <i class="fa fa-phone-alt text-primary me-2"></i>
                                <p class="mb-0">+2519000000</p>
                            </div>
                        </div>
                        <div class="col-lg-5 px-5 text-end">
                            <div class="d-inline-flex align-items-center py-2">
                                <a class="me-3" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="me-3" href=""><i class="fab fa-twitter"></i></a>
                                <a class="me-3" href=""><i class="fab fa-linkedin-in"></i></a>
                                <a class="me-3" href=""><i class="fab fa-instagram"></i></a>
                                <a class="" href=""><i class="fab fa-youtube"></i></a>
                            </div>
                        </div>
                    </div>
                    <nav class="navbar navbar-expand-lg bg-dark navbar-dark p-3 p-lg-0">
                        <a href="${pageContext.request.contextPath}/" class="navbar-brand d-block d-lg-none">
                            <h1 class="m-0 text-primary text-uppercase">AirReserve</h1>
                        </a>
                        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav mr-auto py-0">
                                <a href="admin_login_pass" class="nav-item nav-link">Home</a>
                                <a href="addflights" class="nav-item nav-link active"><small>Add Flights</small></a>
                                <a href="availability_from_admin" class="nav-item nav-link"><small>Search Flights</small></a>
                                <a href="updateflight" class="nav-item nav-link"><small>update Flights</small></a>
                                <a href="deleteflight" class="nav-item nav-link"><small>delete Flights</small></a>
                                <%--                                <a href="coupon_add" class="nav-item nav-link"><small>Add Coupon</small></a>--%>
                                <%--                                <a href="coupon_search" class="nav-item nav-link"><small>Search Coupon</small></a>--%>
                                <%--                                <a href="coupon_delete" class="nav-item nav-link"><small>Delete Coupon</small></a>--%>
                            </div>
                            <a href="${pageContext.request.contextPath}/logout" class="btn btn-primary rounded-0 py-4 px-md-5 d-none d-lg-block">LogOut As<small>
                                <%  String A_name=(String)session.getAttribute("admin_name");
                                    out.print(A_name);
                                %>
                            </small><i class="fa fa-arrow-right ms-3"></i></a>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Header End -->


        <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0" style="background-image: url(../../img/search.png);">
            <div class="container-fluid page-header-inner py-5">
                <div class="container text-center pb-5">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">Search Flight Details</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="admin_login_pass">Home</a></li>
                            <li class="breadcrumb-item text-white" aria-current="page">Search Flight Details</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Page Header End -->

        <div class="container-xxl py-5">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title text-center text-primary text-uppercase">Congrats!</h6>
                <h1 class="mb-5">Flight Search <span class="text-primary text-uppercase">Successful</span></h1>
            </div>
        </div>
        
        <!-- Footer Gappping -->
        <div class="container newsletter mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="row justify-content-center">
                <div class="col-lg-10 p-1">
                    <div class="text-center p-1">

                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Gapping -->
        <h2 align="center"><font><strong>Showing Search Results</strong></font></h2>
        <div class="scroll">
        <%


                Connection connection = DBConnector.getConnection();
                Statement statement = null;
                ResultSet resultSet = null;
        %>
                
                <table align="center" cellpadding="5" cellspacing="5">
                <tr>
                
                </tr>
                <tr style="color:blue" bgcolor="#FEA116">
                <td><b>flight_id</b></td>
                <td><b>flight_no</b></td>
                <td><b>flight_name</b></td>
                <td><b>from_city</b></td>
                <td><b>to_city</b></td>
                <td><b>date_of_flight</b></td>
                <td><b>flight_arrival_time</b></td>
                <td><b>flight_reach_time</b></td>
                <td><b>duration</b></td>
                <td><b>first_class_seat</b></td>
                <td><b>first_class_seat_booked</b></td>
                <td><b>first_class_seat_aval</b></td>
                <td><b>buss_class_seat</b></td>
                <td><b>buss_class_seat_booked</b></td>
                <td><b>buss_class_seat_aval</b></td>
                <td><b>eco_class_seat</b></td>
                <td><b>eco_class_seat_booked</b></td>
                <td><b>eco_class_seat_aval</b></td>
                <td><b>first_class_price</b></td>
                <td><b>buss_class_price</b></td>
                <td><b>eco_class_price</b></td>
                </tr>
                <%
                try{
                    statement=connection.createStatement();
                    String sql ="SELECT * FROM flight_details";
                    resultSet = statement.executeQuery(sql);
                    while(resultSet.next()){
                %>
                <tr>
                    <td><center><%=resultSet.getString("flight_id") %></center></td>
                    <td><center><%=resultSet.getString("flight_no") %></center></td>
                    <td><center><%=resultSet.getString("flight_name") %></center></td>
                    <td><center><%=resultSet.getString("from_city")%></center></td>
                    <td><center><%=resultSet.getString("to_city")%></center></td>
                    <td><center><%=resultSet.getString("date_of_flight")%></center></td>
                    <td><center><%=resultSet.getString("flight_arrival_time")%></center></td>
                    <td><center><%=resultSet.getString("flight_reach_time")%></center></td>
                    <td><center><%=resultSet.getString("duration")%></center></td>
                    <td><center><%=resultSet.getString("first_class_seat")%></center></td>
                    <td><center><%=resultSet.getString("first_class_seat_booked")%></center></td>
                    <td><center><%=resultSet.getString("first_class_seat_aval")%></center></td>
                    <td><center><%=resultSet.getString("buss_class_seat")%></center></td>
                    <td><center><%=resultSet.getString("buss_class_seat_booked")%></center></td>
                    <td><center><%=resultSet.getString("buss_class_seat_aval")%></center></td>
                    <td><center><%=resultSet.getString("eco_class_seat")%></center></td>
                    <td><center><%=resultSet.getString("eco_class_seat_booked")%></center></td>
                    <td><center><%=resultSet.getString("eco_class_seat_aval")%></center></td>
                    <td><center><%=resultSet.getString("first_class_price")%>Birr</center></td>
                    <td><center> <%=resultSet.getString("buss_class_price")%>Birr</center></td>
                    <td><center> <%=resultSet.getString("eco_class_price")%>Birr</center></td>
                </tr>
                
                <% 
                }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                %>
                </table>
        </div>
        
        <!-- Newsletter Start -->
        <div class="container newsletter mt-5 wow fadeIn" data-wow-delay="0.1s" style="margin: 23px; padding: 23px">
            <div class="row justify-content-center">
                <div class="col-lg-10 border rounded p-1">
                    <div class="text-center p-1">
                        <div class="bg-white text-center p-5">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Newsletter Start -->

<!-- Footer Start -->
        <div class="container-fluid bg-dark text-light footer wow fadeIn" data-wow-delay="0.1s">
            <div class="container pb-5">
                <div class="row g-5">
                    <div class="col-md-6 col-lg-4">
                        <div class="bg-primary rounded p-4">
                            <a href="/index">
                                <h1 class="text-white text-uppercase mb-3">AirReserve</h1>
                            </a>

                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <h6 class="section-title text-start text-primary text-uppercase mb-4">Contact</h6>
                        <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>Addis Ababa,Ethiopia</p>
                        <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+251900000000</p>
                        <p class="mb-2"><i class="fa fa-envelope me-3"></i>ethair@gmail.com</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-12">
                        <div class="row gy-5 g-4">
                            <div class="col-md-6">
                                <h6 class="section-title text-start text-primary text-uppercase mb-4">Company</h6>
                                <a class="btn btn-link" href="about">About Us</a>
                                <a class="btn btn-link" href="contact">Contact Us</a>
                                <a class="btn btn-link" href="about#team">Our Team</a>
                            </div>
                            <div class="col-md-6">
                                <h6 class="section-title text-start text-primary text-uppercase mb-4">Services</h6>
                                <a class="btn btn-link" href="login">Already a User</a>
                                <a class="btn btn-link" href="register">New Registration</a>
                                <a class="btn btn-link" href="admin_login">Admin Login</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="border-bottom" href="/index"> AirReserve </a>, All Right Reserved. Designed By <a class="border-bottom">Group 1</a>
                        </div>
                        <div class="col-md-6 text-center text-md-end">
                            <div class="footer-menu">
                                <a href="index">Home</a>
                                <a href="about">About</a>
                                <a href="booking_error_msg">Booking</a>
                                <a href="avaibility">Check Status</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

        <jsp:include page="../includes/footer_js_links.jsp"/>

</body>

</html>