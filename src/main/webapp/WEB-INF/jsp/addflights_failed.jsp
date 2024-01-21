<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Airline Reservation System</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <script src="https://cdn.tailwindcss.com"></script>

    <jsp:include page="../includes/header_css_links.jsp"/>
</head>

<body>
    <div class="container-xxl bg-white p-0">
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
        <div class="container-fluid page-header mb-5 p-0" style="background-image: url(../../img/addpln.png);">
            <div class="container-fluid page-header-inner py-5">
                <div class="container text-center pb-5">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">Adding Flight Details</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="admin_login_pass">Home</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Adding Flight Details</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Page Header End -->

        <div class="container-xxl py-5">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title text-center text-primary text-uppercase">Sorry To Say That!</h6>
                <h1 class="mb-5">Flight Adding <span class="text-primary text-uppercase">Failed</span></h1>
                <h6 class="section-title text-center text-primary text-uppercase">May Be Same ID Or Missed Some Inputs</h6>
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
        
        <!-- Newsletter Start -->
        <jsp:include page="../includes/newsletter.jsp"/>
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
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>