<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<% String pagename="/"; session.setAttribute("pagename", pagename); %>
<head>
    <meta charset="utf-8">
    <title>AirLine Reservation System</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <jsp:include page="WEB-INF/includes/header_css_links.jsp"/>
    <script>
        function setClipboard(value) {
            const tempInput = document.createElement("input");
            tempInput.style = "position: absolute; left: -1000px; top: -1000px";
            tempInput.value = value;
            document.body.appendChild(tempInput);
            tempInput.select();
            document.execCommand("copy");
            document.body.removeChild(tempInput);
            const a = document.getElementById('copy1').value;
            alert("copied to clipboard!!");
        }
    </script>


    <link rel="icon" href="img/title_logo.png" type="text/x-icon">
</head>

<body>
    <div class="container bg-white p-0">
        <!-- Header Start -->
        <jsp:include page="WEB-INF/includes/navbar.jsp" />
        <!-- Header End -->


        <!-- Carousel Start -->
        <div class="container-fluid p-0 mb-5">
            <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="w-100" src="img/carousel-3.png" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 700px;">
                                <h6 class="section-title text-white text-uppercase mb-3 animated slideInDown">Fly in Comfort</h6>
                                <h1 class="display-3 text-white mb-4 animated slideInDown">Discover Your Dream Journey With Us</h1>
                                <a href="availability" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Plane Availability</a>
                                <a href="booking_error_msg" class="btn btn-secondary py-md-3 px-md-5 animated slideInRight">Book Plane Tickets</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="img/carousel-4.png" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 700px;">
                                <h6 class="section-title text-white mb-3 animated slideInDown">Coupon Code: abcdefgh05</h6>
                                <h1 class="display-3 text-white mb-4 animated slideInDown">Discover Huge Discounts On Plane Tickets</h1>
                                <a href="" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Get 5% Flat Discount</a>
                                <button id="copy1" onclick="setClipboard('abcdefgh05')" class="btn btn-light py-md-3 px-md-5 animated slideInRight">Copy Code To Clipboard</button>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="img/carousel-5.png" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 700px;">
                                <h6 class="section-title text-white mb-3 animated slideInDown">Coupon Code: abcdefgh10</h6>
                                <h1 class="display-3 text-white mb-4 animated slideInDown">Discover Huge Discounts On Plane Tickets</h1>
                                <a href="" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Get 10% Flat Discount</a>
                                <button id="copy4" onclick="setClipboard('abcdefgh10')" class="btn btn-light py-md-3 px-md-5 animated slideInRight">Copy Code To Clipboard</button>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="img/carousel-6.png" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 700px;">
                                <h6 class="section-title text-white mb-3 animated slideInDown">Coupon Code: abcdefgh15</h6>
                                <h1 class="display-3 text-white mb-4 animated slideInDown">Discover Huge Discounts On Plane Tickets</h1>
                                <a href="" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Get 15% Flat Discount</a>
                                <button id="copy2" onclick="setClipboard('abcdefgh15')" class="btn btn-light py-md-3 px-md-5 animated slideInRight">Copy Code To Clipboard</button>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="img/carousel-7.png" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 700px;">
                                <h6 class="section-title text-white mb-3 animated slideInDown">Coupon Code: abcdefgh25</h6>
                                <h1 class="display-3 text-white mb-4 animated slideInDown">Discover Huge Discounts On Plane Tickets</h1>
                                <a href="" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Get 25% Flat Discount</a>
                                <button id="copy3" onclick="setClipboard('abcdefgh25')" class="btn btn-light py-md-3 px-md-5 animated slideInRight">Copy Code To Clipboard</button>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#header-carousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
        <!-- Carousel End -->


        <!-- About Start -->
        <div class="container py-5">
            <div class="container">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6">
                        <h6 class="section-title text-start text-primary text-uppercase">About Us</h6>
                        <h1 class="mb-4">Welcome to <span class="text-primary text-uppercase">EthioAir</span></h1>
                        <p class="mb-4">This is the demo system of Online Flight Booking methodology developed, designed and maintained by Group 1 students in AAiT.</p>
                        <div class="row g-3 pb-4">
                            <div class="col-sm-4 wow fadeIn" data-wow-delay="0.1s">
                                <div class="border rounded p-1">
                                    <div class="border rounded text-center p-4">
                                        <i class="fa fa-plane fa-2x text-primary mb-2"></i>
                                        <h2 class="mb-1" data-toggle="counter-up">2134</h2>
                                        <p class="mb-0">Planes</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 wow fadeIn" data-wow-delay="0.3s">
                                <div class="border rounded p-1">
                                    <div class="border rounded text-center p-4">
                                        <i class="fa fa-users-cog fa-2x text-primary mb-2"></i>
                                        <h2 class="mb-1" data-toggle="counter-up">10,234</h2>
                                        <p class="mb-0">Staffs</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 wow fadeIn" data-wow-delay="0.5s">
                                <div class="border rounded p-1">
                                    <div class="border rounded text-center p-4">
                                        <i class="fa fa-users fa-2x text-primary mb-2"></i>
                                        <h2 class="mb-1" data-toggle="counter-up">10,21,234</h2>
                                        <p class="mb-0">Clients</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="btn btn-primary py-3 px-5 mt-2" href="availability">Explore More</a>
                    </div>
                    <div class="col-lg-6">
                        <div class="row g-3">
                            <div class="col-6 text-end">
                                <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.1s" src="img/about-5.png" style="margin-top: 25%;">
                            </div>
                            <div class="col-6 text-start">
                                <img class="img-fluid rounded w-100 wow zoomIn" data-wow-delay="0.3s" src="img/about-6.png">
                            </div>
                            <div class="col-6 text-end">
                                <img class="img-fluid rounded w-50 wow zoomIn" data-wow-delay="0.5s" src="img/about-7.png">
                            </div>
                            <div class="col-6 text-start">
                                <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.7s" src="img/about-3.png">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->

        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-5">
                    <div class="col-md-3"></div>
                    
                    <div class="col-lg-6">
                        <div class="wow fadeInUp" data-wow-delay="0.2s">
                            <form method="post" action="GeneratePDF_from_PNR">
                                <div class="row g-3">
                                    <h3 class="mb-4 text-center">Search Details<span class="text-primary text-uppercase"> <small>By PNR Number</small></span></h3>
                                    <h6 class="text-start text-primary text-center text-uppercase"> <small>Search Your Details By PNR Number</small> </h6>
                                     
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="PNR" name="PNR" placeholder="Enter PNR Number">
                                            <label for="PNR">Enter PNR Number</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <button class="btn btn-primary w-100 py-3" type="submit">Search Details</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    
                    <div class="col-md-3"></div>
                </div>
            </div>
        </div>
        

        <!-- Room Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title text-center text-primary text-uppercase">Planes We Provide</h6>
                    <h1 class="mb-5">Explore Our <span class="text-primary text-uppercase">Planes</span></h1>
                </div>
                <div class="row g-4">
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="room-item shadow rounded overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/frstclass.png" alt="">
                                <small class="position-absolute start-0 top-100 translate-middle-y bg-primary text-white rounded py-1 px-3 ms-4">₹15000 Starting</small>
                            </div>
                            <div class="p-4 mt-2">
                                <div class="d-flex justify-content-between mb-3">
                                    <h5 class="mb-0">First Class</h5>
                                    <div class="ps-2">
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                    </div>
                                </div>
                                <div class="d-flex mb-3">
                                    <small class="border-end me-3 pe-3"><i class="fa fa-plane text-primary me-2"></i>Very Comfortable</small>
                                    <small class="border-end me-3 pe-3"><i class="fa fa-money-bill text-primary me-2"></i>Costly</small>
                                    <small><i class="fa fa-glass-cheers text-primary me-2"></i>Unlimited</small>
                                </div>
                                <p class="text-body mb-3">First class tickets are a form of one-way or round-trip tickets that allow travelers ...</p>
                                <div class="d-flex justify-content-between">
                                    <a class="btn btn-sm btn-primary rounded py-2 px-4" href="tickettype">View Detail</a>
                                    <a class="btn btn-sm btn-dark rounded py-2 px-4" href="booking_error_msg">Book Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="room-item shadow rounded overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/bsclass.png" alt="">
                                <small class="position-absolute start-0 top-100 translate-middle-y bg-primary text-white rounded py-1 px-3 ms-4">₹12000 Starting</small>
                            </div>
                            <div class="p-4 mt-2">
                                <div class="d-flex justify-content-between mb-3">
                                    <h5 class="mb-0">Business Class</h5>
                                    <div class="ps-2">
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                    </div>
                                </div>
                                <div class="d-flex mb-3">
                                    <small class="border-end me-3 pe-3"><i class="fa fa-plane text-primary me-2"></i>Comfortable</small>
                                    <small class="border-end me-3 pe-3"><i class="fa fa-money-bill text-primary me-2"></i>Little Costly</small>
                                    <small><i class="fa fa-glass-cheers text-primary me-2"></i>Unlimited</small>
                                </div>
                                <p class="text-body mb-3">This type of ticket allows the purchaser to sit in business class. It is a ticket that provides ...</p>
                                <div class="d-flex justify-content-between">
                                    <a class="btn btn-sm btn-primary rounded py-2 px-4" href="tickettype">View Detail</a>
                                    <a class="btn btn-sm btn-dark rounded py-2 px-4" href="booking_error_msg">Book Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.6s">
                        <div class="room-item shadow rounded overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/ecoclass.png" alt="">
                                <small class="position-absolute start-0 top-100 translate-middle-y bg-primary text-white rounded py-1 px-3 ms-4">₹8000 Starting</small>
                            </div>
                            <div class="p-4 mt-2">
                                <div class="d-flex justify-content-between mb-3">
                                    <h5 class="mb-0">Coach Ticket</h5>
                                    <div class="ps-2">
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                    </div>
                                </div>
                                <div class="d-flex mb-3">
                                    <small class="border-end me-3 pe-3"><i class="fa fa-plane text-primary me-2"></i>Adjustable</small>
                                    <small class="border-end me-3 pe-3"><i class="fa fa-money-bill text-primary me-2"></i>Cheap</small>
                                    <small><i class="fa fa-glass-cheers text-primary me-2"></i>Limited</small>
                                </div>
                                <p class="text-body mb-3">Coach tickets are a type of ticket in which fliers travel in coach or economy class.</p>
                                <div class="d-flex justify-content-between">
                                    <a class="btn btn-sm btn-primary rounded py-2 px-4" href="tickettype">View Detail</a>
                                    <a class="btn btn-sm btn-dark rounded py-2 px-4" href="booking_error_msg">Book Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Room End -->



        <!-- Service Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title text-center text-primary text-uppercase">Our Services</h6>
                    <h1 class="mb-5">Explore Our <span class="text-primary text-uppercase">Services</span></h1>
                </div>
                <div class="row g-4">
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <a class="service-item rounded" href="">
                            <div class="service-icon bg-transparent border rounded p-1">
                                <div class="w-100 h-100 border rounded d-flex align-items-center justify-content-center">
                                    <i class="fa fa-search fa-2x text-primary"></i>
                                </div>
                            </div>
                            <h5 class="mb-3">Flight search</h5>
                            <p class="text-body mb-0">Online airline booking sites allow users to search for flights based on their preferred travel dates, destinations, and budget..</p>
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                        <a class="service-item rounded" href="">
                            <div class="service-icon bg-transparent border rounded p-1">
                                <div class="w-100 h-100 border rounded d-flex align-items-center justify-content-center">
                                    <i class="fa fa-utensils fa-2x text-primary"></i>
                                </div>
                            </div>
                            <h5 class="mb-3">Food & Baggage allowance</h5>
                            <p class="text-body mb-0">These sites provide information on baggage allowances and fees for each airline, so customers can plan accordingly.</p>
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <a class="service-item rounded" href="">
                            <div class="service-icon bg-transparent border rounded p-1">
                                <div class="w-100 h-100 border rounded d-flex align-items-center justify-content-center">
                                    <i class="fa fa-eye fa-2x text-primary"></i>
                                </div>
                            </div>
                            <h5 class="mb-3">Flight status updates</h5>
                            <p class="text-body mb-0">Online airline booking sites often provide real-time updates on flight statuses, delays, and cancellations.</p>
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
                        <a class="service-item rounded" href="">
                            <div class="service-icon bg-transparent border rounded p-1">
                                <div class="w-100 h-100 border rounded d-flex align-items-center justify-content-center">
                                    <i class="fa fa-credit-card fa-2x text-primary"></i>
                                </div>
                            </div>
                            <h5 class="mb-3">Online payment options</h5>
                            <p class="text-body mb-0">Many online airline booking sites allow customers to select their preferred seats during the booking process.</p>
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <a class="service-item rounded" href="">
                            <div class="service-icon bg-transparent border rounded p-1">
                                <div class="w-100 h-100 border rounded d-flex align-items-center justify-content-center">
                                    <i class="fa fa-glass-cheers fa-2x text-primary"></i>
                                </div>
                            </div>
                            <h5 class="mb-3">Relaxation</h5>
                            <p class="text-body mb-0">Online airline booking sites display all fees and charges upfront, so customers can make informed decisions about the total cost of their flights.</p>
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.6s">
                        <a class="service-item rounded" href="">
                            <div class="service-icon bg-transparent border rounded p-1">
                                <div class="w-100 h-100 border rounded d-flex align-items-center justify-content-center">
                                    <i class="fa fa-braille fa-2x text-primary"></i>
                                </div>
                            </div>
                            <h5 class="mb-3">Seat Selection</h5>
                            <p class="text-body mb-0">Many online airline booking sites allow customers to select their preferred seats during the booking process.</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service End -->

        
       
        <!-- Testimonial Start -->
        <div class="container-xxl testimonial my-5 py-5 bg-dark wow zoomIn" data-wow-delay="0.1s">
            <div class="container">
                <div class="owl-carousel testimonial-carousel py-5">
                    <div class="testimonial-item position-relative bg-white rounded overflow-hidden">
                        <p>A good airline online booking website should have a clear and user-friendly interface that allows users to easily search for flights based on their travel dates, destination, and budget. The website should be easy to navigate, with clear menu options and search filters. This is the site.</p>
                        <div class="d-flex align-items-center">
                            <img class="img-fluid flex-shrink-0 rounded" src="img/testimonial-1.jpg" style="width: 45px; height: 45px;">
                            <div class="ps-3">
                                <h6 class="fw-bold mb-1">Rossy</h6>
                                <small>Client</small>
                            </div>
                        </div>
                        <i class="fa fa-quote-right fa-3x text-primary position-absolute end-0 bottom-0 me-4 mb-n1"></i>
                    </div>
                    <div class="testimonial-item position-relative bg-white rounded overflow-hidden">
                        <p>The website should have a robust and efficient flight search engine that provides accurate and up-to-date information on available flights, schedules, and pricing. According to me this is best. </p>
                        <div class="d-flex align-items-center">
                            <img class="img-fluid flex-shrink-0 rounded" src="img/testimonial-2.jpg" style="width: 45px; height: 45px;">
                            <div class="ps-3">
                                <h6 class="fw-bold mb-1">Adam</h6>
                                <small>Client</small>
                            </div>
                        </div>
                        <i class="fa fa-quote-right fa-3x text-primary position-absolute end-0 bottom-0 me-4 mb-n1"></i>
                    </div>
                    <div class="testimonial-item position-relative bg-white rounded overflow-hidden">
                        <p>The website should offer a range of secure and convenient payment options, including credit cards, PayPal, and other electronic payment methods. This is best one!</p>
                        <div class="d-flex align-items-center">
                            <img class="img-fluid flex-shrink-0 rounded" src="/img/testimonial-3.jpg" style="width: 45px; height: 45px;">
                            <div class="ps-3">
                                <h6 class="fw-bold mb-1">John</h6>
                                <small>Client</small>
                            </div>
                        </div>
                        <i class="fa fa-quote-right fa-3x text-primary position-absolute end-0 bottom-0 me-4 mb-n1"></i>
                    </div>
                </div>
            </div>
        </div>
        <!-- Testimonial End -->


        <!-- Team Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title text-center text-primary text-uppercase">Our Team</h6>
                    <h1 class="mb-5">Explore Our <span class="text-primary text-uppercase">Co Leads</span></h1>
                </div>
                <div class="row g-4">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/me.png" alt="">
                                <div class="position-absolute start-50 top-100 translate-middle d-flex align-items-center">
                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">Tanmoy Das</h5>
                                <small>Designer</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/me.png" alt="">
                                <div class="position-absolute start-50 top-100 translate-middle d-flex align-items-center">
                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">Tanmoy Das</h5>
                                <small>Developer</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/me.png" alt="">
                                <div class="position-absolute start-50 top-100 translate-middle d-flex align-items-center">
                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">Tanmoy Das</h5>
                                <small>Back End Management</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/me.png" alt="">
                                <div class="position-absolute start-50 top-100 translate-middle d-flex align-items-center">
                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-square btn-primary mx-1" href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">Tanmoy Das</h5>
                                <small>Technical Support</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Team End -->


        <!-- Newsletter Start -->
        <jsp:include page="WEB-INF/includes/newsletter.jsp"/>
        <!-- Newsletter Start -->


        <!-- Footer Start -->
       <jsp:include page="WEB-INF/includes/footer.jsp" />
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <jsp:include page="WEB-INF/includes/footer_js_links.jsp"/>

    <!-- Template Javascript -->


</body>

</html>