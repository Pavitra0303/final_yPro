<%-- 
    Document   : containerForm
    Created on : Feb 17, 2020, 9:46:34 PM
    Author     : PAVI
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>
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
        <title>Booking Page</title>
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
   <%
    
      Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/fyp1";
            Connection mycon = DriverManager.getConnection(url, "pavi", "pavi123");
            ResultSet rs;
%>
        
    </head>
    <body>
        <nav class="navbar navbar-expand-sm navbar-light fixed-top">
            <a class="navbar-brand" href="#">
                <img src="images/logo.png" alt="Logo" class="rounded-circle" style="width:200px; padding-top:no-padding;"> 

            </a>

        </nav>


        <h1 style="text-align:center;">BOOKING FORM </h1>

        <div class="container">
            <table class="table table-striped">
                <tbody>
                    <tr>
                        <td colspan="1">
                            <form class="well form-horizontal" method="POST" action= "bookingProcess.jsp" >

                                <fieldset>

                                    <div class="form-group"> 
                                        <label class="col-md-4 control-label"> Date for Transportation:</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                                                <input type="date" name="cont_loading_Date" class="form-control"/> </div> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Full Address for destination:</label> 
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-th-large"></i></span>
                                                <input type="text" name="full_addr" class="form-control"/> </div> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Booking(Today) Date:</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                <input type="date" name="book_date" class="form-control"/></div> 
                                        </div>
                                    </div>
                                  
            
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Admin Id :</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                               
                            <select name="admin_id">
                                <%
                                    String quni = "select admin_id,fname from admin";
                                    PreparedStatement ps = mycon.prepareStatement(quni);
                                    rs = ps.executeQuery();
                                    while (rs.next()) {
                                %>
                                <option value="<%= rs.getInt(1)%>"><%= rs.getString(1)%></option>
                                <%
                                    }
                                %>
                            </select>
                        </div> 
                                        </div>
                                    </div>
                                      
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Information Id:</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                               
                              <select name="info_id">
                                <%
                                    String info = "select info_id,no_plate from transport_information";
                                    ps = mycon.prepareStatement(info);
                                    rs = ps.executeQuery();
                                    while (rs.next()) {
                                %>
                                <option value="<%= rs.getInt(1)%>"><%= rs.getString(1)%></option>
                                <%
                                    }
                                %>
                            </select>
                                            </div> 
                                        </div>
                                    </div>
               
             
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Container_id: </label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                <select name="cont_id">
                                <%
                                    String cont = "select cont_id,con_ref_num from container_profile";
                                    ps = mycon.prepareStatement(cont);
                                    rs = ps.executeQuery();
                                    while (rs.next()) {
                                %>
                                <option value="<%= rs.getInt(1)%>"><%= rs.getString(1)%></option>
                                <%
                                    }
                                %>
                            </select>
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

