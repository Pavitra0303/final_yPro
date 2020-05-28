<%-- 
    Document   : update
    Created on : Apr 8, 2020, 11:48:34 AM
    Author     : PAVI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

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

            .card {
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
                max-width: 700px;
                margin: auto;
                text-align: left;
            }


        </style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <title>Login</title>

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
                        <a class="nav-link" href="#">Transport Information</a>
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
      <%
          String id=request.getParameter("agent_id");
          String username=request.getParameter("username");
String email=request.getParameter("email");
String password=request.getParameter("password");
String contact_no=request.getParameter("contact_no");

String agency_name=request.getParameter("agency_name");
String addr=request.getParameter("company_addr");
String num_iso=request.getParameter("num_iso");
int S= Integer.parseInt(num_iso);
String num_40ft=request.getParameter("num_40ft");
int D= Integer.parseInt(num_40ft);
String num_20ft=request.getParameter("num_20ft");
int F= Integer.parseInt(num_20ft);
String num_10t=request.getParameter("num_10t");
int G= Integer.parseInt(num_10t);
String website=request.getParameter("companyWebsite");
String office_no = request.getParameter("office_no");  

if (id != null) {
            Connection con = null;
            PreparedStatement ps = null;
                 try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection( "jdbc:mysql://localhost:3306/fyp1","pavi", "pavi123");
                String sql = "update transport_agent set username=?,email=?,password=?,Contact_no=?, Agency_name=?,company_addr=?,num_iso=?,num_40ft=?,num_20ft=?,num_10t=?,company_website=?,office_no=? where email=?"+email;
                ps = con.prepareStatement(sql);
               
                ps.setString(1, username);
                ps.setString(2, email);
                ps.setString(3, password);
                ps.setString(4, contact_no);
                ps.setString(5,agency_name);
                ps.setString(6,addr);
                ps.setInt(7,S);
                 ps.setInt(8,D);
                 ps.setInt(9,F);
                 ps.setInt(10,G);
                 ps.setString(11,website);
                 ps.setString(12,office_no);
                int i = ps.executeUpdate();
                if (i > 0) {
                  out.println("alert('You sucessfully update Your Profile');"); 
                } else {
                    out.print("There is a problem in updating Record.");
                }
            } catch (SQLException sql) {
                request.setAttribute("error", sql);
                out.println(sql);
            }
        }
    %>

        
     

    
      
    </body>
</html>

