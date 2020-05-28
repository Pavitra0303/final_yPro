<%-- 
    Document   : viewAgent
    Created on : Mar 11, 2020, 2:16:55 AM
    Author     : PAVI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String id = request.getParameter("agent_id");
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
        <title>Transport Agent List</title>
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
    <body>
        <nav class="navbar navbar-expand-sm navbar-light fixed-top">
            <a class="navbar-brand" href="#">
                <img src="images/logo.png" alt="Logo" class="rounded-circle" style="width:230px; padding-top:no-padding;"> 

            </a>
<p style="text-align:right; padding-right: 30px;"><a href="adminHome.jsp">Home</a>
        </nav>
        <div class="card card-cascade narrower" style="padding-top:90px;background-color:#cc99ff;"> </div>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">Agent Id</th>
                    <th scope="col">Username</th>
                    <th scope="col">Email</th>
                    <th scope="col">Contact Number</th>
                    <th scope="col">Agency Name</th>
                    <th scope="col">Company Address</th>
                    <th scope="col"></th>

                </tr>
            </thead>
            <%
                try {
                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                    statement = connection.createStatement();
                    String sql = "select * from transport_agent";
                    resultSet = statement.executeQuery(sql);
                    while (resultSet.next()) {
            %>
            <tbody>
                <tr>
                    <td><%=resultSet.getString("agent_id")%></td>
                    <td><%=resultSet.getString("username")%></td>
                    <td><%=resultSet.getString("email")%></td>
                    <td><%=resultSet.getString("contact_no")%></td>
                    <td><%=resultSet.getString("Agency_name")%></td>
                    <td><%=resultSet.getString("Company_addr")%></td>
                    <td><i class="fas fa-list-alt" style="font-size:70px;color:#2196F3"><a href="detailsAgent.jsp?agent_id=<%=resultSet.getString("agent_id")%>">For More Information</a></i><br></td>
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


    </body>
</html>
