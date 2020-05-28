<%-- 
    Document   : containerForm
    Created on : Feb 17, 2020, 9:46:34 PM
    Author     : PAVI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link type="text/css"
              href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
        <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.min.css" rel="stylesheet"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
        <title>Add New Container</title>
        <style>

            .navbar{
                min-height: 40px;
                max-height: 70px;
                background:transparent;
                font-family: cursive;
                font-weight: bold;    
                color:black;
            }
            .navbar-brand {
                padding-top:0px;
            }
            .container{
                padding-top:80px;

            }

        </style>

    </head>
    <body>
        <nav class="navbar navbar-expand-sm navbar-light fixed-top">
            <a class="navbar-brand" href="#">
                <img src="images/logo.png" alt="Logo" class="rounded-circle" style="width:200px; padding-top:no-padding;"> 

            </a>

        </nav>


        <h1 style="text-align:center;">ADD NEW CONTAINER </h1>

        <div class="container">
            <table class="table table-striped">
                <tbody>
                    <tr>
                        <td colspan="1">
                            <form class="well form-horizontal" method="POST" action= "containerProcess.jsp" >

                                <fieldset>

                                    <div class="form-group"> 
                                        <label class="col-md-4 control-label"> Container Reference Number :</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                                                <input type="text" name="con_ref_num" class="form-control"/> </div> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Container Type :</label> 
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-th-large"></i></span>
                                                <input type="text" name="cont_type" class="form-control"/> </div> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Length:</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                <input type="number" name="length" class="form-control"/></div> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Width :</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                <input type="number" name="width" class="form-control"/></div> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Height :</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                <input type="number" name="height" class="form-control"/></div> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Destination : </label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                <input type="text" name="destination" class="form-control"/> </div> 
                                        </div>
                                    </div>

                                    <div class="form-group">

                                        <label class="col-md-4 control-label" for="EstimatedDateArrived">Estimated Arrived date :</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group date" id="datepicker"><span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                                <input type="date"name="EstimatedDateArrived" id="EstimatedDateArrived" class="form-control" /> </div> 

                                        </div>
                                    </div>
                                  


                                    <div class="col-md-8 form-group">
                                        <input type="submit" class=" col-md-4 btn btn-info" value="Submit" style="float: right;"/><br/>
                                        <br/><p style="text-align:right"><a href="viewContainer.jsp">View-All-Records</a></p>
                                    </div>

                                </fieldset>
                            </form>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <footer id="sticky-footer" class="py-4 bg-dark text-white-50" style="padding-top:0px;">
            <div class="container text-center">
                <small>Copyright &copy; Pavitra2020</small>
            </div>
        </footer>
    </body>
</html>

