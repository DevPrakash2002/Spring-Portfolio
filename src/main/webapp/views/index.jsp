<%@ page import="java.util.List" %>
<%@ page import="com.example.springsecurity.springsecuritypractice.model.Project" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>DevPrakash Portfolio - Index</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="https://img.icons8.com/?size=100&id=77rzQB0yQBfA&format=png&color=000000" rel="icon">
    <link href="/images/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i|Playfair+Display:400,400i,500,500i,600,600i,700,700i,900,900i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="/css/style.css" rel="stylesheet">

</head>

<body>

<!-- ======= Header ======= -->
<header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center justify-content-between">

        <a href="index" class="logo"><img src="https://img.icons8.com/?size=100&id=AfM2kzPzTz6Q&format=png&color=000000" alt="" class="img-fluid"></a>
        <!-- Uncomment below if you prefer to use an text logo -->
        <!-- <h1 class="logo"><a href="index.html">Folio</a></h1> -->

        <nav id="navbar" class="navbar">
            <ul>
                <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
                <li><a class="nav-link scrollto" href="#about">About</a></li>
                <li><a class="nav-link  scrollto" href="#portfolio">Portfolio</a></li>
                <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->

    </div>
</header><!-- End Header -->

<!-- ======= Hero Section ======= -->
<div id="hero" class="home">

    <div class="container">
        <div class="hero-content">
            <h1>I'm <span class="typed" data-typed-items="Dev Prakash  , Java Developer"></span></h1>
            <p>Java Developer</p>

            <ul class="list-unstyled list-social">
                <li><a href="https://www.linkedin.com/in/dev-prakash-057b31288/"><i class="bi bi-linkedin"></i></a></li>
            </ul>
        </div>
    </div>
</div><!-- End Hero -->

<main id="main">

    <!-- ======= About Section ======= -->
    <div id="about" class="paddsection">
        <div class="container">
            <div class="row justify-content-between">

                <div class="col-lg-4 ">
                    <div class="div-img-bg">
                        <div class="about-img">
                            <img src="/images/me.jpg" class="img-responsive" alt="me">
                        </div>
                    </div>
                </div>

                <div class="col-lg-7">
                    <div class="about-descr">

                        <p class="p-heading">I'm a Java developer specializing in Spring Boot who loves to design dynamic websites. I also enjoy creating dynamic backend logic. </p>
                        <p class="separator"></p>

                    </div>

                </div>
            </div>
        </div>
    </div><!-- End About Section -->
<%
    List<Project> project = (List<Project>) request.getAttribute("project");
%>
    <!-- ======= Portfolio Section ======= -->
    <div id="portfolio" class="paddsection">

        <div class="container">
            <div class="section-title text-center">
                <h2>My Portfolio</h2>
            </div>
        </div>

        <div class="container">

            <div class="row">
                <div class="col-lg-12 d-flex justify-content-center">
                    <ul id="portfolio-flters">
                        <li data-filter="*" class="filter-active">Projects</li>

                    </ul>
                </div>
            </div>

            <div class="row portfolio-container">
                <c:forEach var="project" items="${project}">
                    <div class="col-lg-4 col-md-6 portfolio-item web">
                        <img src="${project.imgLink}" class="img-fluid" alt="">
                        <div class="portfolio-info">
                            <h4>${project.title}</h4>
                            <p>web</p>
                            <a href="${project.sourceLink}" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
                        </div>
                    </div>
                </c:forEach>
            </div>

        </div>

    </div>
    <!-- End Portfolio Section -->

    <!-- ======= Contact Section ======= -->
    <div id="contact" class="paddsection">
        <div class="container">
            <div class="contact-block1">
                <div class="row">

                    <div class="col-lg-6">
                        <div class="contact-contact">

                            <h2 class="mb-30">GET IN TOUCH</h2>

                            <ul class="contact-details">
                                <li><span>New Delhi,</span></li>
                                <li><span>India</span></li>
                                <li><span>+91 8580154450</span></li>
                                <li><span>dev.tiwary5821@gmail.com</span></li>
                            </ul>

                        </div>
                    </div>

                    <div class="col-lg-6">
                        <form action="contact" method="post" role="form" class="email-form">
                            <div class="row gy-3">

                                <div class="col-lg-6">
                                    <div class="form-group contact-block1">
                                        <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                                    </div>
                                </div>

                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
                                    </div>
                                </div>

                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <textarea class="form-control" name="message" placeholder="Message" required></textarea>
                                    </div>
                                </div>

                                <div class="mt-0">
                                    <input type="submit" class="btn btn-defeault btn-send" value="Send message">
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End Contact Section -->

</main><!-- End #main -->

<!-- ======= Footer ======= -->
<div id="footer" class="text-center">
    <div class="container">
        <div class="socials-media text-center">

            <ul class="list-unstyled">
                <li><a href="https://www.linkedin.com/in/dev-prakash-057b31288/"><i class="bi bi-linkedin"></i></a></li>
            </ul>

        </div>

        <p>&copy; Copyrights. All rights reserved.</p>

        <div class="credits">
            Designed by Dev Prakash
        </div>

    </div>
</div><!-- End Footer -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/vendor/glightbox/js/glightbox.min.js"></script>
<script src="/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="/vendor/swiper/swiper-bundle.min.js"></script>
<script src="/vendor/typed.js/typed.umd.js"></script>
<script src="/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="/js/main.js"></script>

</body>

</html>