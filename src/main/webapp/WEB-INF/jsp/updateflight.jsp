<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Head content similar to addflights.jsp -->
</head>

<body>
<div class="container-xxl bg-white p-0">
    <!-- Header and navigation content similar to addflights.jsp -->

    <!-- Page Header Start -->
    <jsp:include page ="../includes/header_css_links.jsp"/>
    <jsp:include page="../includes/admin_page_header.jsp"/>
    <!-- Page Header End -->

    <!-- Adding From -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title text-center text-primary text-uppercase">update flight</h6>
                <h1 class="mb-5">Add A <span class="text-primary text-uppercase">Update Flight</span></h1>
            </div>
            <div class="row g-5">
                <div class="wow fadeInUp" data-wow-delay="0.2s">
                    <form method="post" action="UpdateFlightServlet">
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
                                    <select class="form-select" name="flight_name" id="flight_name" required>
                                        <option selected>Enter Flight Name</option>
                                        <option value="AirAsia India">AirAsia India</option>
                                        <option value="Air India">Air India</option>
                                        <option value="Air India Express">Air India Express</option>
                                        <option value="Go First">Go First</option>
                                        <option value="IndiGo">IndiGo</option>
                                        <option value="SpiceJet">SpiceJet</option>
                                        <option value="Vistara">Vistara</option>
                                        <option value="Alliance Air">Alliance Air</option>
                                        <option value="FlyBig">FlyBig</option>
                                        <option value="Star Air">Star Air</option>
                                        <option value="TruJet">TruJet</option>
                                        <option value="TajAir">TajAir</option>
                                        <option value="SpiceXpress">SpiceXpress</option>
                                        <option value="Quikjet Airlines">Quikjet Airlines</option>
                                        <option value="Blue Dart Aviation">Blue Dart Aviation</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">

                                </div>
                            </div>

                            <div class="col-12"></div>

                            <div class="col-md-6">
                                <div class="form-floating">
                                    <select class="form-select" name="from_city" id="from_city" required>
                                        <option selected>Departure City Name</option>
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
                                <div class="form-floating">
                                    <select class="form-select" name="to_city" id="to_city" required>
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

    <!-- Newsletter and Footer content similar to addflights.jsp -->
</div>

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
                        <a href="${pageContext.request.contextPath}/booking_error_msg">Booking</a>
                        <a href="${pageContext.request.contextPath}/avaibility">Check Status</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer End -->

<!-- JavaScript Libraries and Back to Top button similar to addflights.jsp -->
</body>

</html>
