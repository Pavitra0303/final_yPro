<%-- 
    Document   : viewContainer
    Created on : Feb 17, 2020, 10:50:52 PM
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
        String cont_id = request.getParameter("cont_id");
       
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

            <p style="text-align:right; padding-right: 30px;"><a href="containerForm.jsp"><button type="button" class="delete"><i class="fas fa-plus-square">&nbsp;Add Container</i></button></a>

            <p style="text-align:right; padding-right: 30px;"><a href="logout.jsp">Logout</a>

            <div><h1 style="text-align:center;">View Container Profiles</h1></div>


         <table class="table table-sm table-dark">
  <thead>
    <tr>
      <th scope="col">Container Id</th>
      <th scope="col">Container Reference Number</th>
      <th scope="col">Container Type</th>
      <th scope="col">Length</th>
        <th scope="col">Width</th>
          <th scope="col">Height</th>
      <th scope="col">Destination</th>
      <th scope="col">Estimated Arriving Date</th>
       <th scope="col" class="text-center">Action</th>
      
    </tr>
  </thead>
                    

                

                         

                        <%
                            try {
                                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                statement = connection.createStatement();
                                String sql = "select * from container_profile";
                                resultSet = statement.executeQuery(sql);
                                while (resultSet.next()) {
                        %>
                    <tbody>
                    <tr>
                        <td><%=resultSet.getString("cont_id")%></td>  
                        <td><%=resultSet.getString("con_ref_num")%></td>
                        <td><%=resultSet.getString("cont_type")%></td>
                        <td><%=resultSet.getInt("length")%></td>
                         <td><%=resultSet.getInt("width")%></td>
                          <td><%=resultSet.getInt("height")%></td>
                        <td><%=resultSet.getString("destination")%></td>
                        <td><%=resultSet.getString("EstimatedDateArrived")%></td>
                        <td><a href="UpdateContainer.jsp?cont_id=<%=resultSet.getString("cont_id")%>">Update</a>
                        <a href="deleteContainer.jsp?cont_id=<%=resultSet.getString("cont_id")%>" onclick="return confirm('Are you sure you want to delete this item?');">Delete</a></td>
                       
                  

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

