<%-- 
    Document   : information
    Created on : Apr 10, 2020, 9:38:33 PM
    Author     : PAVI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
        <title>Transport Information</title>
         
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


        <h1 style="text-align:center;">ADD TRANSPORT INFORMATION </h1>

        <div class="container">
            <table class="table table-striped">
                <tbody>
                    <tr>
                        <td colspan="1">
                            <form class="well form-horizontal" method="POST" action= "process.jsp" >

                                <fieldset>

                                    
                                    <div class="form-group"> 
                                        <label class="col-md-4 control-label"> Number Plate :</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                                                <input type="text" name="no_plate" class="form-control"/> </div> 
                                        </div>
                                    </div>
                                    <div class="form-group"> 
                                        <label class="col-md-4 control-label"> Type of Truck :</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                                                <select id="type_trucks" name="type_trucks"> 
                                                    <option value="Isothermal Truck">Isothermal Truck</option>
                                                    <option value="20ft Truck">20ft Truck</option>
                                                    <option value="40ft Truck">40ft Truck</option>
                                                    <option value="10t Truck">10t Truck</option>
                                                </select>
                                            </div> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Person In Charge :</label> 
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-th-large"></i></span>
                                                <input type="text" name="person_inCharge" class="form-control"/> </div> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Contact Number:</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                <input type="text" name="contacT_no" class="form-control"/></div> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Cost Per Trip :</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                <input type="number" name="costPerTrip" class="form-control" placeholder="00.00" step="00.00"/></div> 
                                        </div>
                                    </div>
                                      <div class="form-group">
                                        <label class="col-md-4 control-label">Agent ID :</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                                                            <input type="number" name="agent_id" class="form-control"/></div> 
                                        </div>
                                    </div>
                                                           


                                    <div class="col-md-8 form-group">
                                        <input type="submit" class=" col-md-4 btn btn-info" value="Submit" style="float: right;"/><br/>
                                        
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
