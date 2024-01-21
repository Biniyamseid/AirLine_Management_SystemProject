<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Airline Reservation System</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">


   <jsp:include page ="../includes/header_css_links.jsp"/>
</head>

<body>
    <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <!--div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        -->
        <!-- Spinner End -->

        <!-- Header Start -->
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
                                        <p class="mb-0">+25190000000</p>
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
                                    <h1 class="m-0 text-primary text-uppercase">Ethioair</h1>
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
        <jsp:include page="../includes/admin_page_header.jsp"/>
        <!-- Page Header End -->


        <!-- Adding From -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title text-center text-primary text-uppercase">Add Flights To DataBase</h6>
                    <h1 class="mb-5">Add A <span class="text-primary text-uppercase">New Flight</span></h1>
                </div>
                <div class="row g-5">
                        <div class="wow fadeInUp" data-wow-delay="0.2s">
                            <form method="post" action="add_flight_validation">
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" placeholder="Enter Flight ID" name="flight_id" required>
                                            <label>Enter Flight ID</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" placeholder="Enter Flight Number" name="flight_no" required>
                                            <label>Enter Flight Number</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <div class="col-md-6">
                                                <div class="form-floating">
                                                    <select class="form-select" name="from_city" id="from_city">
                                                        <option selected>Departure City Name</option>
                                                        <option value="Addis Ababa Bole International Airport - ADD">Addis Ababa Bole International Airport - ADD</option>
                                                        <option value="Nairobi Jomo Kenyatta International Airport - NBO">Nairobi Jomo Kenyatta International Airport - NBO</option>
                                                        <option value="Johannesburg OR Tambo International Airport - JNB">Johannesburg OR Tambo International Airport - JNB</option>
                                                        <option value="Dubai International Airport - DXB">Dubai International Airport - DXB</option>
                                                        <option value="London Heathrow Airport - LHR">London Heathrow Airport - LHR</option>
                                                        <option value="Paris Charles de Gaulle Airport - CDG">Paris Charles de Gaulle Airport - CDG</option>
                                                        <option value="Beijing Capital International Airport - PEK">Beijing Capital International Airport - PEK</option>
                                                        <option value="New York John F. Kennedy International Airport - JFK">New York John F. Kennedy International Airport - JFK</option>
                                                        <option value="Mumbai Chhatrapati Shivaji Maharaj International Airport - BOM">Mumbai Chhatrapati Shivaji Maharaj International Airport - BOM</option>
                                                        <option value="Cairo International Airport - CAI">Cairo International Airport - CAI</option>
                                                        <option value="Kigali International Airport - KGL">Kigali International Airport - KGL</option>
                                                        <option value="Lagos Murtala Muhammed International Airport - LOS">Lagos Murtala Muhammed International Airport - LOS</option>
                                                        <option value="Seychelles International Airport - SEZ">Seychelles International Airport - SEZ</option>
                                                        <option value="Accra Kotoka International Airport - ACC">Accra Kotoka International Airport - ACC</option>
                                                        <option value="Djibouti-Ambouli International Airport - JIB">Djibouti-Ambouli International Airport - JIB</option>
                                                        <option value="Mogadishu Aden Adde International Airport - MGQ">Mogadishu Aden Adde International Airport - MGQ</option>
                                                        <option value="Kinshasa N'djili Airport - FIH">Kinshasa N'djili Airport - FIH</option>
                                                    </select>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            
                                        </div>
                                    </div>
                                    
                                    <div class="col-12"></div>
                                    
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <select class="form-select" name="flight_name" id="flight_name">
                                                <option selected>Enter Flight Name</option>
                                                <option value="Ethiopian Airlines">Ethiopian Airlines</option>
                                                <option value="ET701">ET701 - Addis Ababa to Nairobi</option>
                                                <option value="ET702">ET702 - Nairobi to Addis Ababa</option>
                                                <option value="ET703">ET703 - Addis Ababa to Johannesburg</option>
                                                <option value="ET704">ET704 - Johannesburg to Addis Ababa</option>
                                                <option value="ET705">ET705 - Addis Ababa to Dubai</option>
                                                <option value="ET706">ET706 - Dubai to Addis Ababa</option>
                                                <option value="ET707">ET707 - Addis Ababa to London</option>
                                                <option value="ET708">ET708 - London to Addis Ababa</option>
                                                <option value="ET709">ET709 - Addis Ababa to Beijing</option>
                                                <option value="ET710">ET710 - Beijing to Addis Ababa</option>
                                                <option value="ET711">ET711 - Addis Ababa to New York</option>
                                                <option value="ET712">ET712 - New York to Addis Ababa</option>
                                                <option value="ET713">ET713 - Addis Ababa to Paris</option>
                                                <option value="ET714">ET714 - Paris to Addis Ababa</option>
                                                <option value="ET715">ET715 - Addis Ababa to Mumbai</option>
                                                <option value="ET716">ET716 - Mumbai to Addis Ababa</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <select class="form-select" name="to_city" id="to_city">
                                                <option selected>Arrival City Name</option>
                                                <option value="Ahmedabad Airport - AMD">Ahmedabad Airport - AMD</option>
                                                <option value="Amritsar Airport - LUH">Amritsar Airport - LUH</option>
                                                <option value="Bagdogra Airport - IXB">Bagdogra Airport - IXB</option>
                                                <option value="Bengaluru International Airport - BLR">Bengaluru International Airport - BLR</option>
                                                <option value="Bhopal Airport - BHO">Bhopal Airport - BHO</option>
                                                <option value="Bhubaneswar Airport - BBI">Bhubaneswar Airport - BBI</option>
                                                <option value="Birsa Munda International Airport - IXR">Birsa Munda International Airport - IXR</option>
                                                <option value="Chandigarh Airport - IXC">Chandigarh Airport - IXC</option>
                                                <option value="Chennai International Airport - MAA">Chennai International Airport - MAA</option>
                                                <option value="Chhatrapati Shivaji International Airport - BOM">Chhatrapati Shivaji International Airport - BOM</option>
                                                <option value="Cochin International Airport - COK">Cochin International Airport - COK</option>
                                                <option value="Cooch Behar Airport - COH">Cooch Behar Airport - COH</option>
                                                <option value="Dabok Airport - UDR">Dabok Airport - UDR</option>
                                                <option value="Dabolim Airport - GOI">Dabolim Airport - GOI</option>
                                                <option value="Darjeeling Airport - DAI">Darjeeling Airport - DAI</option>
                                                <option value="Dehra Dun Airport - DED">Dehra Dun Airport - DED</option>
                                                <option value="Devi Ahilyabai Holkar Airport - IDR">Devi Ahilyabai Holkar Airport - IDR</option>
                                                <option value="Dhanbad Airport - DBD">Dhanbad Airport - DBD</option>
                                                <option value="Gaya Airport - GAY">Gaya Airport - GAY</option>
                                                <option value="Hyderabad International Airport - HYD">Hyderabad International Airport - HYD</option>
                                                <option value="Indira Gandhi International Airport - DEL">Indira Gandhi International Airport - DEL</option>
                                                <option value="Jabalpur Airport - JLR">Jabalpur Airport - JLR</option>
                                                <option value="Jagdalpur Airport - JGB">Jagdalpur Airport - JGB</option>
                                                <option value="Jaisalmer Airport - JSA">Jaisalmer Airport - JSA</option>
                                                <option value="Jodhpur Airport - JDH">Jodhpur Airport - JDH</option>
                                                <option value="Kanpur Airport - KNU">Kanpur Airport - KNU</option>
                                                <option value="Kota Airport - KTU">Kota Airport - KTU</option>
                                                <option value="Lohegaon Airport - PNQ">Lohegaon Airport - PNQ</option>
                                                <option value="Malda Airport - LDA">Malda Airport - LDA</option>
                                                <option value="Mysore Airport - MYQ">Mysore Airport - MYQ</option>
                                                <option value="Netaji Subhash Chandra Bose International Airport - CCU">Netaji Subhash Chandra Bose International Airport - CCU</option>
                                                <option value="Patna Airport - PAT">Patna Airport - PAT</option>
                                                <option value="Pondicherry Airport - PNY">Pondicherry Airport - PNY</option>
                                                <option value="Raipur Airport - RPR">Raipur Airport - RPR</option>
                                                <option value="Rajkot Airport - RAJ">Rajkot Airport - RAJ</option>
                                                <option value="Rourkela Airport - RRK">Rourkela Airport - RRK</option>
                                                <option value="Satwari Airport - IXJ">Satwari Airport - IXJ</option>
                                                <option value="Simla Airport - SLV">Simla Airport - SLV</option>
                                                <option value="Singerbhil Airport - IXA">Singerbhil Airport - IXA</option>
                                                <option value="Sonari Airport - IXW">Sonari Airport - IXW</option>
                                                <option value="Sonegaon Airport - NAG">Sonegaon Airport - NAG</option>
                                                <option value="Srinagar Airport - SXR">Srinagar Airport - SXR</option>
                                                <option value="Surat Airport - STV">Surat Airport - STV</option>
                                                <option value="Tirupati Airport - TIR">Tirupati Airport - TIR</option>
                                                <option value="Trichy Airport - TRZ">Trichy Airport - TRZ</option>
                                                <option value="Varanasi Airport - VNS">Varanasi Airport - VNS</option>
                                                <option value="Warangal Airport - WGC">Warangal Airport - WGC</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating date">
                                            <input type="date" class="form-control" placeholder="Date Of Flight" name="date_of_flight" required>
                                            <label for="checkin">Date Of Flight</label>
                                        </div>
                                    </div>
                                                                       
                                    <div class="col-12"></div>
                                    
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" placeholder="Enter Flight Departure Time HH:MM:SS" name="flight_arrival_time" required>
                                            <label><small>Enter Flight Departure Time HH:MM:SS</small></label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" placeholder="Enter Flight Arrival Time HH:MM:SS" id="frt" name="flight_reach_time" required>
                                            <label><small>Enter Flight Arrival Time HH:MM:SS</small></label>
                                        </div>
                                    </div>
                                    
                                    <div class="col-12"></div>
                                    
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" placeholder="Enter First Class Seat" name="first_class_seat" required>
                                            <label><small>Enter First Class Seat</small></label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" placeholder="Enter First Class Seat Price" name="first_class_price" required>
                                            <label><small>Enter First Class Seat Price</small></label>
                                        </div>
                                    </div>
                                    
                                    <div class="col-12"></div>
                                    
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" placeholder="Enter Business Class Seat" name="buss_class_seat" required>
                                            <label><small>Enter Business Class Seat</small></label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" placeholder="Enter Business Class Seat Price" name="buss_class_price" required>
                                            <label><small>Enter Business Class Seat Price</small></label>
                                        </div>
                                    </div>
                                    
                                    <div class="col-12"></div>
                                    
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" placeholder="Enter Economy Class Seat" name="eco_class_seat" required>
                                            <label><small>Enter Economy Class Seat</small></label>
                                        </div>
                                    </div>
                                                                       
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" placeholder="Enter Economy Class Seat Price" name="eco_class_price" required>
                                            <label><small>Enter Economy Class Seat Price</small></label>
                                        </div>
                                    </div>
                                    
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100 py-3" type="submit">Add Flight To The DataBase</button>
                                    </div>
                                    <div class="col-12" style="margin-bottom: 12%;"><div class="form-floating"></div></div>
                                </div>
                            </form>
                        </div>
                    
                </div>
            </div>
        </div>
        <!-- Adding End -->






                <!-- Footer Start -->
                <div class="container-fluid bg-dark text-light footer wow fadeIn" data-wow-delay="0.1s">
                    <div class="container pb-5">
                        <div class="row g-5">
                            <div class="col-md-6 col-lg-4">
                                <div class="bg-primary rounded p-4">
                                    <a href="${pageContext.request.contextPath}/index.jsp">
                                        <h1 class="text-white text-uppercase mb-3">EthioAir</h1>
                                    </a>
                                    <p class="text-white mb-0">
                                        The website and backend mechanism are designed and developed by <a class="text-dark fw-medium" href="https://www.facebook.com/AlphaTanmoy/">Group 1</a> hope it's attractive and can be a demo of an actual airline system.
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <h6 class="section-title text-start text-primary text-uppercase mb-4">Contact</h6>
                                <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>Addis Ababa,Ethiopia</p>
                                <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+251900000000</p>
                                <p class="mb-2"><i class="fa fa-envelope me-3"></i>ethio@gmail.com</p>
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
                                    &copy; <a class="border-bottom" href="${pageContext.request.contextPath}/index"> EthioAir </a>, All Right Reserved. Designed By <a class="border-bottom">Group 1</a>
                                </div>
                                <div class="col-md-6 text-center text-md-end">
                                    <div class="footer-menu">
                                        <a href="${pageContext.request.contextPath}/index">Home</a>
                                        <a href="${pageContext.request.contextPath}/about">About</a>
<%--                                        <a href="${pageContext.request.contextPath}/booking_error_msg">Booking</a>--%>
<%--                                        <a href="${pageContext.request.contextPath}/avaibility">Check Status</a>--%>
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

    <!-- JavaScript Libraries -->
   <jsp:include page="../includes/footer_js_links.jsp"/>

</body>

</html>