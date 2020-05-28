<%-- 
    Document   : Sregister
    Created on : Nov 28, 2019, 11:04:19 PM
    Author     : PAVI
--%>

<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>

<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport"
              content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

        <title> Register</title>
        <style>
            .navbar{
                min-height: 40px;
                max-height: 70px;
                background:#383d41;
                font-family: cursive;
                font-weight: bold;    
                color:black;
            }

            .navbar-brand {
                padding-top:30px;


            }
            .body, html{
                height:100%;
                margin-top:0;

            }
            .bg{
                background-image: url("images/img3.jpg");  
                height: 200%;

                background-repeat: no-repeat;
                background-size: cover;
            }

            .register{
                background: -webkit-linear-gradient(left, #3931af, #6a5acd);
                margin-top: 3%;
                padding: 3%;
            }
            .register-left{
                text-align: center;
                color: #fff;
                margin-top: 4%;
            }
            .register-left input{
                border: none;
                border-radius: 1.5rem;
                padding: 2%;
                width: 60%;
                background: #f8f9fa;
                font-weight: bold;
                color: #383d41;
                margin-top: 30%;
                margin-bottom: 3%;
                cursor: pointer;
            }
            .register-right{
                background: #f8f9fa;
                border-top-left-radius: 10% 50%;
                border-bottom-left-radius: 10% 50%;
            }
            .register-left img{
                margin-top: 15%;
                margin-bottom: 5%;
                width: 25%;
                -webkit-animation: mover 2s infinite  alternate;
                animation: mover 1s infinite  alternate;
            }
            @-webkit-keyframes mover {
                0% { transform: translateY(0); }
                100% { transform: translateY(-20px); }
            }
            @keyframes mover {
                0% { transform: translateY(0); }
                100% { transform: translateY(-20px); }
            }
            .register-left p{
                font-weight: lighter;
                padding: 12%;
                margin-top: -9%;
            }
            .register .register-form{
                padding: 10%;
                margin-top: 10%;
            }
            .btnRegister{
                float: right;
                margin-top: 10%;
                border: none;
                border-radius: 1.5rem;
                padding: 2%;
                background: #0062cc;
                color: #fff;
                font-weight: 600;
                width: 50%;
                cursor: pointer;
            }
            .register .nav-tabs{
                margin-top: 3%;
                border: none;
                background: #0062cc;
                border-radius: 1.5rem;
                width: 28%;
                float: right;
            }
            .register .nav-tabs .nav-link{
                padding: 2%;
                height: 34px;
                font-weight: 600;
                color: #fff;
                border-top-right-radius: 1.5rem;
                border-bottom-right-radius: 1.5rem;
            }
            .register .nav-tabs .nav-link:hover{
                border: none;
            }
            .register .nav-tabs .nav-link.active{
                width: 100px;
                color: #0062cc;
                border: 2px solid #0062cc;
                border-top-left-radius: 1.5rem;
                border-bottom-left-radius: 1.5rem;
            }
            .register-heading{
                text-align: center;
                margin-top: 8%;
                margin-bottom: -15%;
                color: #495057;
            }

        </style>

    </head>
    <body>

        <nav class="navbar navbar-expand-sm navbar-dark fixed-top">
            <a class="navbar-brand" href="#">
                <img src="images/logo.png" alt="Logo" class="rounded-circle" style="width:230px;">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </nav>
        <div class="bg">

            <div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Welcome</h3>
                        <p>If you are already registered user, feel free to login.</p>
                        <input type="submit" name="" value="Login"/><br/>
                    </div>
                    <div class="col-md-9 register-right">
                        <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Agents</a>
                            </li>

                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Registration of Transport Agent Here</h3>
                                <form action="process.jsp" method="post">
                                    <div class="row register-form">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                Username:    <input type="text" class="form-control" placeholder="Enter your name" name="username"  />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                Email:    <input type="text" class="form-control" placeholder="Enter your email" name="email"  />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                Password:  <input type="password" class="form-control" placeholder="Password *"name="password" size="50" onkeyup='check();' />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                Contact Number:   <input type="text" class="form-control" placeholder="Contact Number *" name="contact_no"  />
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                Agency name:    <input type="text" class="form-control" placeholder="Enter your Agency name" name="agency_name"  />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                Company Address:    <textarea class="form-control" placeholder="Enter your compsny address" name="company_addr" ></textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                Number of Isothermal and Refrigerator Trucks: <input type="number" class="form-control"  name="num_iso"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            Number of 20t truck with 40ft container Trucks:<input type="number" class="form-control"  name="num_40ft" size="10"/>
                                        </div>
                                    </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    Number of 10t tent Trucks: <input type="number" class="form-control"  name="num_10t"/>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    Number of 10t truck with 20 ft container Trucks:<input type="number" class="form-control"  name="num_20ft"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    Company website:    <input type="text" class="form-control" placeholder="Enter your company Website" name="companyWebsite" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    Office Contact Number:<input type="text" class="form-control" placeholder="Office Number *" name="office_no"  />
                                </div>
                            </div>
                            <input type="submit" class=" col-md-4 btn btn-info" value="Register" style="float: right;"/>

                        </div>
                    </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
</div>

<div class="jumbotron text-center" style="margin-bottom:0;background-color:#495057;height:20px;">
    <p style="color:wheat">Copyright &copy; Pavitra2020</p>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
