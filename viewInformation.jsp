<%-- 
    Document   : viewInformation
    Created on : Apr 10, 2020, 10:23:31 PM
    Author     : PAVI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" >
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.15.5/dist/bootstrap-table.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>Show All Containers</title>
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
                padding-top:30px;
            }
            .t1{
                padding-top:80;

            }
            #sticky-footer {
                flex-shrink: none;
            }
        </style>
    </head>
    <%
        String info_id = request.getParameter("info_id");
       
        String driver = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String database = "fyp1";
        String userid = "pavi";
        String password = "pavi123";
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
    %>

    <body>
        <nav class="navbar navbar-expand-sm navbar-light fixed-top">
            <a class="navbar-brand" href="#">
                <img src="images/logo.png" alt="Logo" class="rounded-circle" style="width:230px; padding-top:no-padding;"> 

            </a>

        </nav>

        <div class="card card-cascade narrower" style="padding-top:90px;background-color:#cc99ff;">
            <!--Card image-->

          

            <p style="text-align:right; padding-right: 30px;"><a href="logOut.jsp">Logout</a>
                 <p style="text-align:right; padding-right: 30px;"><a href="adminHome.jsp">Home</a>

            <div><h1 style="text-align:center;">View Transporation information</h1></div>


         <table class="table table-sm table-dark">
  <thead>
    <tr>
      <th scope="col">Transport Information Id</th>
      <th scope="col">Number Plate</th>
      <th scope="col">Type of Trucks</th>
      <th scope="col">Person In Charge</th>
      <th scope="col">Contact Number</th>
        <th scope="col">Cost Per Trip</th>
          
       <th scope="col" class="text-center">Action</th>
      
    </tr>
  </thead>
                    

                

                         

                        <%
                            try {
                                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                statement = connection.createStatement();
                                String sql = "select * from transport_information";
                                resultSet = statement.executeQuery(sql);
                                while (resultSet.next()) {
                        %>
                    <tbody>
                    <tr>
                        <td><%=resultSet.getString("info_id")%></td>  
                        <td><%=resultSet.getString("no_plate")%></td>
                         <td><%=resultSet.getString("type_trucks")%></td>
                        <td><%=resultSet.getString("person_inCharge")%></td>
                        <td><%=resultSet.getString("contacT_no")%></td>
                        <td><%=resultSet.getDouble("costPerTrip")%></td>
                         
                        <td><a href="booking.jsp">Book Now!</a>
                       </td>
                       
                  

            </tr>
             </tbody>

                        <%
                                }
                                connection.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                  
               
            </table>


            <footer id="sticky-footer" class="py-4 bg-dark text-white-50" style="padding-bottom:0px;">
                <div class="container text-center">
                    <small>Copyright &copy; Pavitra2020</small>
                </div>
            </footer>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
        <script src="https://unpkg.com/bootstrap-table@1.15.5/dist/bootstrap-table.min.js"></script>

    </body>

</html>


