<%-- 
    Document   : Homepage
    Created on : Mar 10, 2020, 10:59:26 PM
    Author     : PAVI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Container Transportation Management System</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <style>

            .carousel-item{
                height: 100vh;
                min-height:300pxd;
                background: no-repeat center center scroll;
                background-size:cover;
                -webkit-background-size:cover;
                ;
            }
            .navbar{
                min-height: 40px;
                max-height: 70px;
                background:transparent;
                font-family: cursive;
                font-weight: bold;    
                color:black;
            }
            .navbar-nav a{
                font-family: poppins;
                font-size: 15px;
                text-transform: uppercase;
                font-weight: bold;
            }
            .navbar-light .navbar-nav .nav-link{
                color:#000000;
            }
            .navbar-nav{
                text-align: center;
            }
            .nav-link{
                padding: .2rem 1rem;
            }

            .navbar-brand {
                padding-top:30px;


            }
            .navbar .navbar-nav > li > a:hover, .navbar .navbar-nav > li > a:focus {

                bg-color: #000000;


            }
            .navbar-light .navbar-nav .nav-link:focus, .navbar-light .navbar-nav .nav-link:hover{
                color:#fff !important;

            }
            .navbar-toggle {
                margin-top: 23px;
                padding: 9px 10px !important;

            }
            .carousel-caption{
                bottom: 220px; 
            }
            .carousel-caption h5{
                font-size: 50px;
                text-transform: uppercase;
                letter-spacing: 2px;
                margin-top: 25px;
                font-family: merienda;
                font-weight: bold;
                color:#cc0000;
            }
            .carousel-caption p{
                width: 60%;
                margin: auto;
                font-size: 30px;
                line-height: 1.9;
                font-family: poppins;
                font-weight: bold;
                color:#009900; 

            }
            .w-100{
                height: 100vh;
            }
            @media only screen and (min-width: 768px) {

                .navbar-toggler{
                    padding: 1px 5px;
                    font-size:18px;
                    line-height: 0.3;
                    background: #fff;
                }
            }
            .card-body{
                padding-top: 30px;
            }


            #sticky-footer {
                flex-shrink: none;
            }

            .fa {
               
                font-size: 30px;
                width: 30px;
                text-align:center;
                text-decoration: none;
                margin: 5px 2px;
                border-radius: 50%;
                float: right;
            }

            .fa:hover {
                opacity: 0.7;
            }

            .fa-facebook {
                background: #3B5998;
                color: white;
            }

            .fa-twitter {
                background: #55ACEE;
                color: white;
            }

           .fa-instagram {
                background: #125688;
                color: white;
            }




        </style>

    </head>
    <body>
        <!--navbar-->
        <nav class="navbar navbar-expand-sm navbar-light fixed-top">
            <a class="navbar-brand" href="#">
                <img src="images/logo.png" alt="Logo" class="rounded-circle" style="width:230px;">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent" >
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact Us</a>
                    </li>
                </ul>

            </div>
        </nav>  
        <!--carousel-->
        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/img1.jpg" class="d-block w-100" alt="..." style="filter:opacity(75%);">
                    <div class="carousel-caption d-none d-md-block">

                        <h5 class="animated slideInRight" style="animation-delay:1s">Cont-Trans</h5>
                        <p class="animated slideInLeft" style="animation-delay:1s">This is a web based system that help you to book transportation for containers. This system will be safest site to use.</p>

                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/img2.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/img3.jpg" class="d-block w-100" alt="..." style="filter:opacity(75%);">
                    <div class="carousel-caption d-none d-md-block">
                        <h5 class="animated slideInRight" style="animation-delay:1s; color:#000066;" >Welcome</h5><br/><br><br><br>
                        <p class="animated slideInLeft" style="animation-delay:1s ;color:black">Here you can deliver your containers using transportation. Your credential will be protected.</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <!--card-->
        <div class="row">
            <div class="col-sm-4">
                <div class="card">
                    <div class="card-body">
                        <img src="images/img4.png"  alt="Management Department">
                        <h5 class="card-title" >Port Admin</h5>
                        <p class="card-text">In Container Management Department consists 20 to 30 staffs to manage the containers and cargo. To access the services in this website, Please Login.</p>
                        <a href="login.jsp" class="btn btn-primary">Login Here</a>
                    </div>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="card">
                    <div class="card-body">
                        <img src="images/img5.png"  alt="Clients">
                        <h5 class="card-title">Transport Agents</h5>
                        <p class="card-text">If you want to be a part of this port's transportation providers, Please Login.</p>
                        <a href="transportAgent/login.jsp" class="btn btn-primary">Login Here</a><br><br><br>
                        <a href="transportAgent/register.jsp" class="btn btn-primary">Register Here</a>
                    </div>
                </div>
            </div>
        </div>

        <footer id="sticky-footer" class="py-4 bg-dark text-white-50">
            <div class="container text-center">
                <small>Copyright &copy; Pavitra2020</small>
                <!-- Add font awesome icons -->
                <a href="#" class="fa fa-facebook"></a>
                <a href="#" class="fa fa-twitter"></a>
                <a href="#" class="fa fa-instagram"></a>
            </div>
        </footer>


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </body>
</html>
