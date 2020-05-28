<%-- 
    Document   : loginForm
    Created on : Dec 6, 2019, 11:58:28 PM
    Author     : PAVI
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport"
              content="width=device-width, initial-scale=1">

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <title>login</title>
        <style>
            body {

                background-image:url(images/ocean.jpg) !important;
                background-size:120%;
                background-repeat: no-repeat;

            }



            .card {
                border: 1px solid #00FFFF;
            }
            .card-login {
                margin-top: 130px;
                padding: 18px;
                max-width: 30rem;
            }

            .card-header {
                color: #fff;
                /*background: #ff0000;*/
                font-family: sans-serif;
                font-size: 20px;
                font-weight: 600 !important;
                margin-top: 10px;
                border-bottom: 0;
            }

            .input-group-prepend span{
                width: 50px;
                background-color: #ff0000;
                color: #fff;
                border:0 !important;
            }

            input:focus{
                outline: 0 0 0 0  !important;
                box-shadow: 0 0 0 0 !important;
            }

            .login_btn{
                width: 130px;
            }

            .login_btn:hover{
                color: #fff;
                background-color: #ff0000;
            }

            .btn-outline-danger {
                color: #fff;
                font-size: 18px;
                background-color: #0000FF;
                background-image: none;
                border-color: #00FFFF;
            }

            .form-control {
                display: block;
                width: 100%;
                height: calc(2.25rem + 2px);
                padding: 0.375rem 0.75rem;
                font-size: 1.2rem;
                line-height: 1.6;
                color: #00FFFF;
                background-color: transparent;
                background-clip: padding-box;
                border: 1px solid #00FFFF;
                border-radius: 0;
                transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
            }
            .w-75{
                width: 150px;
                height: 200px;
            }

            .input-group-text {
                display: -ms-flexbox;
                display: flex;
                -ms-flex-align: center;
                align-items: center;
                padding: 0.375rem 0.75rem;
                margin-bottom: 0;
                font-size: 1.5rem;
                font-weight: 700;
                line-height: 1.6;
                color: #495057;
                text-align: center;
                white-space: nowrap;
                background-color: #0000FF;
                border: 1px solid #ced4da;
                border-radius: 0;
            }
        </style>
    </head>
    <body>
     

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
        <div class="container">
            <div class="card card-login mx-auto text-center bg-dark">
                <div class="card-header mx-auto bg-dark">
                    <span> <img src="images/logo.png" class="w-75" alt="Logo" > </span><br/>
                    <span class="logo_title mt-5"> Login Dashboard </span>

                </div>
                <form action="loginProcess.jsp" method="post">
                    <div class="card-body">

                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <input type="email" name="email" class="form-control" placeholder="Email">
                        </div>

                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <input type="password" name="password" class="form-control" placeholder="Password">
                        </div>
                      

                        <div class="form-group">
                            <input type="submit" name="btn" value="Login" class="btn btn-outline-danger float-right login_btn">
                        </div>

                    </div>
                </form>

            </div>
        </div>


    </body>
</html>
