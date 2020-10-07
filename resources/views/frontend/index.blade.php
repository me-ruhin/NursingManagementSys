<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Nursing | Website</title>
        <!-- favicon -->
        <link rel="icon" href="{{asset('frontend/assets//images/favicon/favicon.png')}}">
        <!-- font awesome css -->
        <link rel="stylesheet" href="{{asset('frontend/assets//css/all.min.css')}}">
        <!-- bootstrap css -->
        <link rel="stylesheet" href="{{asset('frontend/assets//css/bootstrap.min.css')}}">
        <!-- fonts -->
        <link rel="stylesheet" href="{{asset('frontend/assets//css/roboto-stylesheet.css')}}">
        <!-- carousel -->
        <link rel="stylesheet" href="{{asset('frontend/assets//css/owl.theme.default.min.css')}}">
        <link rel="stylesheet" href="{{asset('frontend/assets//css/owl.carousel.min.css')}}">
        <!-- slick slider css -->
        <link rel="stylesheet" href="{{asset('frontend/assets//css/slickslick.css')}}">
        <link rel="stylesheet" href="{{asset('frontend/assets//css/slick-theme.css')}}">
        <!-- hover css -->
        <link rel="stylesheet" href="{{asset('frontend/assets//css/hover-min.css')}}">
        <!-- main css -->
        <link rel="stylesheet" href="{{asset('frontend/assets//css/style.css')}}">
        <!-- responsive css -->
        <link rel="stylesheet" href="{{asset('frontend/assets//css/responsive.css')}}">
    </head>
    <body>
        <!-- =================================START HEADER SECTION   ========================================= -->        
        <header class="header-section clearfix">
            <div class="container">
                <!-- start header top -->
                <div class="main-header">
                   <div class="row">
                       <div class="col-xl-4 col-lg-4 col-md-4">
                            <!-- logo -->
                            <div class="header-logo">
                                <a href="index.html"><img class="logo-size " src="{{asset('frontend/assets/images/logo/logo-retina-1.png')}}" alt="header logo"></a>
                            <!-- address -->
                       </div>
                       <div class="col-xl-5 col-lg-5 col-md-5 text-center">
                            <div class="header-address">
                                <ul class="d-flex">
                                    <li> <span><i class="fas fa-map-marker-alt"></i></span></li>
                                    <li> Flat No:-EE, House No:-0000, Abdus Sobhan Dhali Road  Solmaid, Vatara, Dhaka. (Near Apollo Hospital)</li>
                                </ul>
                            </div>
                       </div>
                       <div class="col-xl-3 col-lg-3 col-md-3 text-right">
                            <div class="header-contact">
                                <ul class="d-flex justify-content-end">
                                    <li><span><i class="fas fa-phone-alt"></i> </span></li>
                                    <li><a href="tel:01700000000">+880 170 0000 000</a></li>
                                </ul>
                           </div>
                       </div>
                   </div>
                </div>
                <!-- end header top -->
            </div>
        </header>
         <!-- start main menu -->
        <nav class="menu-area  clearfix">
            <div class="container">
                <div class="main-menu clearfix">
                    <div class="menu-left clearfix">
                        <ul class="current-page">
                            <li><a href="index.html">Home</a></li>
                            <li><a href="about.html">About Us</a></li>
                            <li><a href="#our-service">Services</a></li>
                            <li><a href="contact.html">Contact Us</a></li>
                        </ul>
                    </div>
                    <div class="menu-right clearfix">
                        <ul>
                            <li><a class="menu-right-border" href="#">Online Agreement</a>
                                <!-- agreement sub menu -->
                                <ul>
                                    <li><a href="cylinder-rent-service.html">Cylinder Rent service</a></li>
                                    <li><a href="#">Nursing service</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
         <!-- end main menu -->
        <!-- =================================END HEADER SECTION   ============================================= -->


        <!-- ================================START MOBILE MENU  ========================================= --> 
       <div class="mobile-menu-area">
           <div class="top-header">
                <div class="container">
                    <div class="main-header">
                        <div class="row py-3">
                            <div class="col-xl-7 col-lg-7 col-md-7 col-sm-12 text-center">
                                <div class="header-address">
                                    <ul class="d-flex">
                                        <li> <span><i class="fas fa-map-marker-alt"></i></span></li>
                                        <li class="text-left"> Flat No:-EE, House No:-0000, Abdus Sobhan Dhali Road  Solmaid, Vatara, Dhaka. (Near Apollo Hospital)</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-xl-5 col-lg-5 col-md-5 col-sm-12 text-right">
                                <div class="header-contact">
                                    <ul class="d-flex justify-content-end">
                                        <li><span><i class="fas fa-phone-alt"></i> </span></li>
                                        <li><a href="tel:01700000000">+880 170 0000 000</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>       
           </div>
            <nav class="navbar navbar-light bg-light navbar-expand-lg">
                <div class="container">
                    <a class="navbar-brand" href="index.html"><img class="logo-size " src="{{asset('frontend/assets//images/logo/logo-retina-1.png')}}" alt=""></a>

                    <button class="navbar-toggler navbar-toggler-right" data-toggle="collapse" data-target="#myNav">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="myNav">
                        <ul class="navbar-nav">
                            <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="about.html">About Us</a></li>
                            <li class="nav-item"><a class="nav-link" href="#our-service">Services</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact.html">Contact Us</a></li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Online Agreement</a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="cylinder-rent-service.html">Cylinder Rent service</a>
                                    <a class="dropdown-item" href="#">Nursing service</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
       </div>
        <!-- =================================END MOBILE MENU  ============================================= -->

    
        <!-- =================================START SLIDER SECTION ============================================= -->
        <section class="home-slider-section clearfix">
            <div class="home-slick-slider">
                <!-- slider item -->
                <div>
                    <img class="w-100" src="{{asset('frontend/assets//images/slider/1.jpg')}}" alt="first slider image">
                </div>
                <!-- slider item -->
                <div>
                    <img class="w-100" src="{{asset('frontend/assets//images/slider/2.jpg')}}" alt="second slider image">
                </div>
                <!-- slider item -->
                <div>
                    <img class="w-100" src="{{asset('frontend/assets//images/slider/3.jpg')}}" alt="third slider image">
                </div>
                <!-- slider item -->
                <div>
                    <img class="w-100" src="{{asset('frontend/assets//images/slider/1.jpg')}}" alt="fourth slider image">
                </div>
                <!-- slider item -->
                <div>
                    <img class="w-100" src="{{asset('frontend/assets//images/slider/2.jpg')}}" alt="fourth slider image">
                </div>
            </div>
        </section>
        <!-- =================================END SLIDER SECTION =============================================== -->


        <!-- =================================START SERVICES SECTION =========================================== -->
        <section class="services-section section-padding clearfix" id="our-service">
            <div class="container">
                <!-- section title -->
                <div class="row">
                    <div class="col-12 text-center">
                        <div class="section-title">
                            <h2>Our <span>Service</span></h2>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam quam, autem, iusto mollitia beatae maxime ut illum sapiente excepturi veniam.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- single services -->
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-service clearfix">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="text-center">Baby Nursing Care</h4>
                                        <div class="card-image">
                                            <img class="w-100" src="{{asset('frontend/assets//images/services/1.jpg')}}" alt="">
                                            <div class="single-service-inner">
                                                <a href="service-details.html"><i class="fas fa-link"></i></a>
                                            </div>
                                        </div>
                                    <p class="text-center">Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- single services -->
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-service clearfix">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="text-center">Home Nursing Care</h4>
                                        <div class="card-image">
                                            <img class="w-100" src="{{asset('frontend/assets//images/services/2.jpg')}}" alt="">
                                            <div class="single-service-inner">
                                                <a href="service-details.html"><i class="fas fa-link"></i></a>
                                            </div>
                                        </div>
                                    <p class="text-center">Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- single services -->
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-service clearfix">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="text-center">Newborn Care</h4>
                                        <div class="card-image">
                                            <img class="w-100" src="{{asset('frontend/assets//images/services/3.jpg')}}" alt="">
                                            <div class="single-service-inner">
                                                <a href="service-details.html"><i class="fas fa-link"></i></a>
                                            </div>
                                        </div>
                                    <p class="text-center">Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- single services -->
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-service clearfix">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="text-center">On-Demand Nursing Services</h4>
                                        <div class="card-image">
                                            <img class="w-100" src="{{asset('frontend/assets//images/services/service-1.jpg')}}" alt="">
                                            <div class="single-service-inner">
                                                <a href="service-details.html"><i class="fas fa-link"></i></a>
                                            </div>
                                        </div>
                                    <p class="text-center">Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- single services -->
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-service clearfix">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="text-center">Care Giver Support</h4>
                                        <div class="card-image">
                                            <img class="w-100" src="{{asset('frontend/assets//images/services/service-2.jpg')}}" alt="">
                                            <div class="single-service-inner">
                                                <a href="service-details.html"><i class="fas fa-link"></i></a>
                                            </div>
                                        </div>
                                    <p class="text-center">Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- single services -->
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-service clearfix">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="text-center">Rehabilitation Services</h4>
                                        <div class="card-image">
                                            <img class="w-100" src="{{asset('frontend/assets//images/services/service-3.jpg')}}" alt="">
                                            <div class="single-service-inner">
                                                <a href="service-details.html"><i class="fas fa-link"></i></a>
                                            </div>
                                        </div>
                                    <p class="text-center">Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                
                </div>
            </div>
        </section>
        <!-- =================================END SERVICES SECTION ============================================= -->
   

        <!-- ================================= START OUR TEAM SECTION ========================================== -->
        <section class="our-team-section section-padding clearfix">
            <div class="container">
                <div class="row">
                    <!-- section title -->
                    <div class="col-12 text-center">
                        <div class="section-title">
                            <h2>Our <span>Team</span></h2>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam quam, autem, iusto mollitia beatae maxime ut illum sapiente excepturi veniam.</p>
                        </div>
                    </div>
                </div>
                 <!-- our team -->
                 <div class="row our-team owl-carousel owl-theme no-gutters">
                     <!-- single team -->
                    <div class="col-xl-12 text-center">
                        <div class="our-team-single-item">
                            <div class="card">
                                <img class="w-100" src="{{asset('frontend/assets//images/team/team-1.jpg')}}" alt="">
                                <div class="card-body">
                                   <h4>David Parker</h4>
                                   <small>Chief Executive Officer</small>
                                   <div class="team-social-link">
                                       <a class="hvr-float-shadow" href="#"><i class="fab fa-facebook-f"></i></a>
                                       <a class="hvr-float-shadow" href="#"><i class="fab fa-twitter"></i></a>
                                       <a class="hvr-float-shadow" href="#"><i class="fab fa-instagram"></i></a>
                                       <a class="hvr-float-shadow" href="#"><i class="fab fa-pinterest-p"></i></a>
                                   </div>
                                </div>
                            </div>
                        </div>
                    </div>
                     <!-- single team -->
                    <div class="col-xl-12 text-center">
                        <div class="our-team-single-item">
                            <div class="card">
                                <img class="w-100" src="{{asset('frontend/assets//images/team/team-2.jpg')}}" alt="">
                                <div class="card-body">
                                   <h4>David Parker</h4>
                                   <small>Chief Executive Officer</small>
                                   <div class="team-social-link">
                                       <a class="hvr-float-shadow" href="#"><i class="fab fa-facebook-f"></i></a>
                                       <a class="hvr-float-shadow" href="#"><i class="fab fa-twitter"></i></a>
                                       <a class="hvr-float-shadow" href="#"><i class="fab fa-instagram"></i></a>
                                       <a class="hvr-float-shadow" href="#"><i class="fab fa-pinterest-p"></i></a>
                                   </div>
                                </div>
                            </div>
                        </div>
                    </div>
                     <!-- single team -->
                    <div class="col-xl-12 text-center">
                        <div class="our-team-single-item">
                            <div class="card">
                                <img class="w-100" src="{{asset('frontend/assets//images/team/team-3.jpg')}}" alt="">
                                <div class="card-body">
                                   <h4>David Parker</h4>
                                   <small>Chief Executive Officer</small>
                                   <div class="team-social-link">
                                       <a class="hvr-float-shadow" href="#"><i class="fab fa-facebook-f"></i></a>
                                       <a class="hvr-float-shadow" href="#"><i class="fab fa-twitter"></i></a>
                                       <a class="hvr-float-shadow" href="#"><i class="fab fa-instagram"></i></a>
                                       <a class="hvr-float-shadow" href="#"><i class="fab fa-pinterest-p"></i></a>
                                   </div>
                                </div>
                            </div>
                        </div>
                    </div>
                     <!-- single team -->
                    <div class="col-xl-12 text-center">
                        <div class="our-team-single-item">
                            <div class="card">
                                <img class="w-100" src="{{asset('frontend/assets//images/team/team-4.jpg')}}" alt="">
                                <div class="card-body">
                                   <h4>David Parker</h4>
                                   <small>Chief Executive Officer</small>
                                   <div class="team-social-link">
                                       <a class="hvr-float-shadow" href="#"><i class="fab fa-facebook-f"></i></a>
                                       <a class="hvr-float-shadow" href="#"><i class="fab fa-twitter"></i></a>
                                       <a class="hvr-float-shadow" href="#"><i class="fab fa-instagram"></i></a>
                                       <a class="hvr-float-shadow" href="#"><i class="fab fa-pinterest-p"></i></a>
                                   </div>
                                </div>
                            </div>
                        </div>
                    </div>
                     <!-- single team -->
                    <div class="col-xl-12 text-center">
                        <div class="our-team-single-item">
                            <div class="card">
                                <img class="w-100" src="{{asset('frontend/assets//images/team/team-5.jpg')}}" alt="">
                                <div class="card-body">
                                   <h4>David Parker</h4>
                                   <small>Chief Executive Officer</small>
                                   <div class="team-social-link">
                                       <a class="hvr-float-shadow" href="#"><i class="fab fa-facebook-f"></i></a>
                                       <a class="hvr-float-shadow" href="#"><i class="fab fa-twitter"></i></a>
                                       <a class="hvr-float-shadow" href="#"><i class="fab fa-instagram"></i></a>
                                       <a class="hvr-float-shadow" href="#"><i class="fab fa-pinterest-p"></i></a>
                                   </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- =================================  END OUR TEAM SECTION =========================================== -->

       <!-- ============================= START OUR MAIN POWER QUALITY SECTION ================================= -->
       <section class="services-section section-padding clearfix">
        <div class="container">
            <!-- section title -->
            <div class="row">
                <div class="col-12 text-center">
                    <div class="section-title">
                        <h2>Our <span>Man Power Quality</span></h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam quam, autem, iusto mollitia beatae maxime ut illum sapiente excepturi veniam.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- single services -->
                <div class="col-xl-4 col-lg-4 col-md-6">
                    <div class="single-service clearfix">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="text-center">Baby Nursing Care</h4>
                                    <div class="card-image">
                                        <img class="w-100" src="{{asset('frontend/assets//images/services/1.jpg')}}" alt="">
                                        <div class="single-service-inner">
                                            <a href="service-details.html"><i class="fas fa-link"></i></a>
                                        </div>
                                    </div>
                                <p class="text-center">Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- single services -->
                <div class="col-xl-4 col-lg-4 col-md-6">
                    <div class="single-service clearfix">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="text-center">Home Nursing Care</h4>
                                    <div class="card-image">
                                        <img class="w-100" src="{{asset('frontend/assets//images/services/2.jpg')}}" alt="">
                                        <div class="single-service-inner">
                                            <a href="service-details.html"><i class="fas fa-link"></i></a>
                                        </div>
                                    </div>
                                <p class="text-center">Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- single services -->
                <div class="col-xl-4 col-lg-4 col-md-6">
                    <div class="single-service clearfix">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="text-center">Newborn Care</h4>
                                    <div class="card-image">
                                        <img class="w-100" src="{{asset('frontend/assets//images/services/3.jpg')}}" alt="">
                                        <div class="single-service-inner">
                                            <a href="service-details.html"><i class="fas fa-link"></i></a>
                                        </div>
                                    </div>
                                <p class="text-center">Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- single services -->
                <div class="col-xl-4 col-lg-4 col-md-6">
                    <div class="single-service clearfix">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="text-center">On-Demand Nursing Services</h4>
                                    <div class="card-image">
                                        <img class="w-100" src="{{asset('frontend/assets//images/services/service-1.jpg')}}" alt="">
                                        <div class="single-service-inner">
                                            <a href="service-details.html"><i class="fas fa-link"></i></a>
                                        </div>
                                    </div>
                                <p class="text-center">Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- single services -->
                <div class="col-xl-4 col-lg-4 col-md-6">
                    <div class="single-service clearfix">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="text-center">Care Giver Support</h4>
                                    <div class="card-image">
                                        <img class="w-100" src="{{asset('frontend/assets//images/services/service-2.jpg')}}" alt="">
                                        <div class="single-service-inner">
                                            <a href="service-details.html"><i class="fas fa-link"></i></a>
                                        </div>
                                    </div>
                                <p class="text-center">Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- single services -->
                <div class="col-xl-4 col-lg-4 col-md-6">
                    <div class="single-service clearfix">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="text-center">Rehabilitation Services</h4>
                                    <div class="card-image">
                                        <img class="w-100" src="{{asset('frontend/assets//images/services/service-3.jpg')}}" alt="">
                                        <div class="single-service-inner">
                                            <a href="service-details.html"><i class="fas fa-link"></i></a>
                                        </div>
                                    </div>
                                <p class="text-center">Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.</p>
                            </div>
                        </div>
                    </div>
                </div>
             </div>
            </div>
        </section>
        <!-- ============================= END OUR MAIN POWER QUALITY SECTION ==================================== -->


        <!-- ================================= START OUR HAPPY CLIENT SECTION ================================== -->
        <section class="happy-client-section section-padding clearfix">
            <div class="container">
                <div class="row">

                    <!-- for mobile device -->
                     <div class="d-col-xl-6 col-lg-6 col-md-12 d-block d-lg-none mb-5">
                        <div class="happy-client-right mb-4">
                            <img class="w-100" src="{{asset('frontend/assets//images/happy-client/right/office-400x314.jpg')}}" alt="">
                        </div>
                    </div>
                    <!-- for mobile device -->

                    <!-- our team right -->
                    <div class="col-xl-6 col-lg-6 col-md-12 ">
                        <div class="col-12">
                            <div class="happy-client-title">
                                <h3>Happy <span>Client</span></h3>
                            </div>
                        </div>
                        <div class="happy-client-left">
                            <div class="row happy-client owl-carousel owl-theme">
                                <!-- single team -->
                                <div class="col-xl-12 ">
                                    <div class="single-team">
                                        <div class="card">
                                            <div class="card-body">
                                                <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear.</p>
                                                <div class="member-info d-flex">
                                                    <div class="member-img mr-2">
                                                        <img src="{{asset('frontend/assets//images/happy-client/left/team-3.jpg')}}" alt="">
                                                    </div>
                                                    <div class="member-details">
                                                        <h5>Mr. Ruhin Mia</h5>
                                                        <small>Sr. Software Engineer</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- single team -->
                                <div class="col-xl-12 ">
                                    <div class="single-team">
                                        <div class="card">
                                            <div class="card-body">
                                                <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear.</p>
                                                <div class="member-info d-flex">
                                                    <div class="member-img mr-2">
                                                        <img src="{{asset('frontend/assets//images/happy-client/left/client2.jpg')}}" alt="">
                                                    </div>
                                                    <div class="member-details">
                                                        <h5>Mr. Ruhin Mia</h5>
                                                        <small>Sr. Software Engineer</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ourt team left -->
                    <div class="col-xl-6 col-lg-6  d-none d-lg-block ">
                        <div class="happy-client-right ">
                            <img class="w-100" src="{{asset('frontend/assets//images/happy-client/right/office-400x314.jpg')}}" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ================================= END OUR HAPPY CLIENT SECTION ==================================== -->


        <!-- ================================== START FIXED CALL ITEM ========================================== -->
       <div class="caller-row">
            <div class="call-item">
                <div class="call-circle">
                    <img src="{{asset('frontend/assets//images/call/call-girl.png')}}" alt="call girl">
                </div>
                <div class="call-number">
                    <a href="tel:+880 170 0000 000">+880 170 0000 000</a>
                </div>
            </div>
       </div>
        <!-- ================================== END FIXED CALL ITEM  =========================================== -->


        <!-- ================================= ======START FOOTER  SECTION======= ============================== -->
        <footer class="footer-section section-padding clearfix">
            <!-- footer top -->
            <div class="footer-top">
                <div class="container">
                    <div class="row pb-5">
                        <div class="col-lg-4 col-md-6  mt-lg-block part-about">
                            <a href="index.html"><img class="footer-logo-size " src="{{asset('frontend/assets//images/logo/logo-retina-1.png')}}" alt="header logo"></a>
                            <p class=" ">Founded At 2011. Architecting secure, efficient and user-friendly items by writing codes to turn ideas into reality. Working on a daily basis to bring unique, standard and trendy product for various marketplace and clients.</p>
                        </div>

                        <div class="col-lg-2 col-md-3 col-sm-6 col-6 mt-5 mt-md-0 mt-lg-block part-link">
                            <h3>Company</h3>
                            <ul>
                                <li class="d-block"><a href="#">About Us </a></li>
                                <li class="d-block"><a href="#">Our Timeline </a></li>
                                <li class="d-block"><a href="#">Datacenter </a></li>
                                <li class="d-block"><a href="#">Our Services </a></li>
                                <li class="d-block"><a href="#">Career with us</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-2 col-md-3 col-sm-6 col-6 mt-5 mt-md-0 mt-lg-block part-link">
                            <h3>Our Expertise</h3>
                            <ul>
                                <li class="d-block"><a href="#">Web Application</a></li>
                                <li class="d-block"><a href="#">Mobile Apps</a></li>
                                <li class="d-block"><a href="#">UI/UX</a></li>
                                <li class="d-block"><a href="#">Plugin & Extension</a></li>
                                <li class="d-block"><a href="#">IT Consultancy</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-2 col-md-4 mt-5 mt-lg-0 col-sm-6 col-6 mt-lg-block part-link">
                            <h3>Terms</h3>
                            <ul>
                                <li class="d-block"><a href="#">Announcements</a></li>
                                <li class="d-block"><a href="#">Privacy Policy</a></li>
                                <li class="d-block"><a href="#">Terms of Service</a></li>
                                <li class="d-block"><a href="#">Refund Policy</a></li>
                                <li class="d-block"><a href="#">Licences info</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-2 col-md-4 mt-5 mt-lg-0 col-sm-6 col-6 mt-lg-block part-link">
                            <h3>Support</h3>
                            <ul>
                                <li class="d-block"><a href="#">F.A.Q.</a></li>
                                <li class="d-block"><a href="#">Get Support</a></li>
                                <li class="d-block"><a href="#">Our Forum</a></li>
                                <li class="d-block"><a href="#">Member Area</a></li>
                                <li class="d-block"><a href="#">Contact Us</a></li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
            <!-- footer top -->
            <!-- footer bottom -->
            <div class="footer-bottom">
                <div class="container border-top">
                    <div class="row mt-5">
                        <div class="col-lg-7 col-md-12 part-copyright">
                            <!-- <h3 class="text-white">&copy; 2011 - 2020 LOREMIPSUM. All Rights Reserved.</h3> -->
                            <p>LOREMIPSUM is not partnered with any other company or person. We work as a team and do not have any reseller, distributor or partner!</p>
                        </div>
                        <div class="col-lg-5 col-md-12 part-social text-lg-right text-md-left ">
                            <h4 class="mt-lg-block">Stay Connected</h4>
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-linkedin-in"></i></a>
                            <a href="#"><i class="fab fa-youtube"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- footer bottom -->
        </footer>
        <!-- =====================================END FOOTER  SECTION ========================================== -->


        <!--==================================== all js link============================================ ========-->
        <!-- js link -->
        <script src="{{asset('frontend/assets//js/jquery.min.js')}}"></script>
        <!-- bootstrap js -->
        <script src="{{asset('frontend/assets//js/bootstrap.bundle.min.js')}}"></script>
        <!-- fixed navbar -->
        <script src="{{asset('frontend/assets//js/navbar-fixed.js')}}"></script>
        <!-- slick slider js -->
        <script src="{{asset('frontend/assets//js/slick.min.js')}}"></script>
        <!-- carousel -->
        <script src="{{asset('frontend/assets//js/owl.carousel.min.js')}}"></script>
        <!-- main js -->
        <script src="{{asset('frontend/assets//js/script.js')}}"></script>
    <body>
</html>