<%-- 
    Document   : updateBooking
    Created on : May 4, 2020, 12:59:22 PM
    Author     : PAVI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
        <title>Update Container</title>
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

<%
String booking_id = request.getParameter("booking_id");

String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/fyp1";

String userid = "pavi";
String password = "pavi123";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>
<%
try{
connection = DriverManager.getConnection(url, userid, password);
statement=connection.createStatement();
String sql ="select * from transportation_booking where booking_id="+ booking_id;
rs = statement.executeQuery(sql);
while(rs.next()){
%>
        <h1 style="text-align:center;">Edit Booking </h1>

        <div class="container">
            <table class="table table-striped">
                <tbody>
                    <tr>
                        <td colspan="1">
                            <form class="well form-horizontal" method="POST" action= "updateB_process.jsp" >

                                <fieldset>
                                      <div class="form-group"> 
                                        <label class="col-md-4 control-label"> Booking ID :</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                                                <input type="hidden" name="booking_id" class="form-control" value="<%=rs.getString("booking_id")%>" readonly="true"/> 
                                                <input type="text" name="booking_id" class="form-control" readonly="true" value="<%=rs.getString("booking_id")%>"/> </div> 
                                        </div>
                                    </div>

                                    <div class="form-group"> 
                                        <label class="col-md-4 control-label"> Date for Transportation:</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                                                <input type="date" name="cont_loading_Date" class="form-control" value="<%=rs.getString("cont_loading_Date")%>"/> </div> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Full Address for destination:</label> 
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-th-large"></i></span>
                                                <input type="text" name="full_addr" class="form-control" value="<%=rs.getString("full_addr")%>"/> </div> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Booking(Today) Date:</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                <input type="date" name="book_date" class="form-control" value="<%=rs.getString("book_date")%>"/></div> 
                                        </div>
                                    </div>
                                  
            <div class="form-group">
                                        <label class="col-md-4 control-label">Admin Id :</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                               
                            <select name="admin_id" value="<%=rs.getInt("admin_id")%>">
                                <%
                                    String quni = "select admin_id,fname from admin";
                                    PreparedStatement ps = connection.prepareStatement(quni);
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
                                    ps = connection.prepareStatement(info);
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
                                    ps = connection.prepareStatement(cont);
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
                                        <input type="submit" class=" col-md-4 btn btn-info" value="Update" style="float: right;"/><br/>
                                      
                                    </div>

                                </fieldset>
                            </form>
                        </td>
                    </tr>
                </tbody>
            </table>
                                               
                                                
                                                
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>

