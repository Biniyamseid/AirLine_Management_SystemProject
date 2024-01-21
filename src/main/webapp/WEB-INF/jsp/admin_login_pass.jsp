<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>AirLine Reservation System - Admin Dashboard</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <jsp:include page="../includes/header_css_links.jsp"/>
</head>

<body>
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
                            <p class="mb-0">+91 82405 70310</p>
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
        <div class="container-fluid page-header mb-5 p-0" style="background-image: url(../../img/admin.png);">
            <div class="container-fluid page-header-inner py-5">
                <div class="container text-center pb-5">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">Admin Dashboard</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="admin_login_pass">Home</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Admin Dashboard</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Page Header End -->


        <!-- About Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6">
                        <h6 class="section-title text-start text-primary text-uppercase">Ethioair Admin Pannel</h6>
                        <h1 class="mb-4">Admin <span class="text-primary text-uppercase">Dashboard</span></h1>
                        <p class="mb-4">You and go through Users responses and connectivity with the Links Below</p>
                        <div class="row g-3 pb-4">
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.1s">
                                <div class="border rounded p-1">
                                    <div class="border rounded text-center p-4">
                                        <form method="post" action="Newsletter_res_show">
                                            <h2>Show Users Newsletters</h2>
                                            <button class="btn btn-primary py-3 px-5 mt-2" type="submit">Show Results</button>                                         
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.3s">
                                <div class="border rounded p-1">
                                    <div class="border rounded text-center p-4">
                                        <form method="post" action="Responses">
                                            <h2>Show Users Responses</h2>
                                            <button class="btn btn-primary py-3 px-5 mt-2" type="submit">Show Results</button>                                         
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <div class="col-lg-6">
                        <div class="row g-3">
                            <div class="col-6 text-end">
                                <img class="img-fluid rounded w-85 wow zoomIn" data-wow-delay="0.1s" src="img/admnlog2.png" style="margin-top: 25%;">
                            </div>
                            <div class="col-6 text-start">
                                <img class="img-fluid rounded w-100 wow zoomIn" data-wow-delay="0.3s" src="img/admnlog1.png">
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
                                <div class="row g-3">
                                    <h3 class="mb-4 text-center">Send Emails<span class="text-primary text-uppercase"> <small>To Newsletter</small></span></h3>
                                    <h6 class="text-start text-primary text-center text-uppercase"> <small>Send Emails</small> </h6>
                                    <form method="post" action="email">
                                        <div class="row g-3">
                                            <div class="col-md-12">
                                                <div class="form-floating">
                                                <input type="text" class="form-control" id="subject" placeholder="Enter Subject" name="subject">
                                                <label for="subject">Enter Subject</label>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-floating">
                                                <input type="text" class="form-control" id="msg" placeholder="Enter Message" name="msg">
                                                <label for="msg">Enter Message</label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-floating">
                                                <button class="btn btn-primary w-100 py-3" type="submit">Send Emails</button>
                                            </div>
                                        </div>
                                   </div>
                            </form>
                                </div>
                           </div>
                    </div>
                    
                    <div class="col-md-3"></div>
                </div>
            </div>
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
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <jsp:include page="../includes/footer_js_links.jsp"/>
</body>

</html>