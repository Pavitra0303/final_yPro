<%-- 
    Document   : detailsAgent
    Created on : Apr 26, 2020, 11:50:49 AM
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
        <title>Details Page</title>
      
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
            body {

                background-image:url(images/img9.jpg) !important;
                background-size:140%;
                background-repeat: no-repeat;

            }
            .container{
                float: inherit;
                margin-top: 250px;
                border-collapse: collapse;
                border: 1px solid #ccc;
                background-color: #000000;
                opacity:80%;
            }


            
            td{
                font:bold;
                color:#ffff00;
                text-align: left;
                font-size: 25px;
            }
           #background-wrap {
    bottom: 0;
	left: 0;
	position: fixed;
	right: 0;
	top: 0;
	z-index: -1;
}


.wrap1 {
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
}

.button {
  min-width: 300px;
  min-height: 60px;
  font-family: 'Nunito', sans-serif;
  font-size: 22px;
  text-transform: uppercase;
  letter-spacing: 1.3px;
  font-weight: 700;
  color: #313133;
  background: #4FD1C5;
background: linear-gradient(90deg, rgba(129,230,217,1) 0%, rgba(79,209,197,1) 100%);
  border: none;
  border-radius: 1000px;
  box-shadow: 12px 12px 24px rgba(79,209,197,.64);
  transition: all 0.3s ease-in-out 0s;
  cursor: pointer;
  outline: none;
  position: relative;
  padding: 10px;
  }

button::before {
content: '';
  border-radius: 1000px;
  min-width: calc(300px + 12px);
  min-height: calc(60px + 12px);
  border: 6px solid #00FFCB;
  box-shadow: 0 0 60px rgba(0,255,203,.64);
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  opacity: 0;
  transition: all .3s ease-in-out 0s;
}

.button:hover, .button:focus {
  color: #313133;
  transform: translateY(-6px);
}

button:hover::before, button:focus::before {
  opacity: 1;
}

button::after {
  content: '';
  width: 30px; height: 30px;
  border-radius: 100%;
  border: 6px solid #00FFCB;
  position: absolute;
  z-index: -1;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  animation: ring 1.5s infinite;
}

button:hover::after, button:focus::after {
  animation: none;
  display: none;
}

@keyframes ring {
  0% {
    width: 30px;
    height: 30px;
    opacity: 1;
  }
  100% {
    width: 300px;
    height: 300px;
    opacity: 0;
  }
}
.button1{
    padding: 15px 25px;
  font-size: 24px;
  font-weight: bold;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #000000;
  background-color:#00ffff;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
  width: 200px;
}
.button1:hover {background-color:#009999;
}

.button1:active {
    background-color: #0099cc;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-sm navbar-light fixed-top">
            <a class="navbar-brand" href="#">
                <img src="images/logo.png" alt="Logo" class="rounded-circle" style="width:230px; padding-top:no-padding;"> 

            </a>
            <div class="wrap1">
                <button class="button" onclick="window.location.href = 'adminHome.jsp';">Home</button>
            </div>

        </nav>
          <%
    String id = request.getParameter("agent_id");
    String info_id=request.getParameter("info_id");
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
    ResultSet rst = null;
%>
        <%
                try {
                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                    statement = connection.createStatement();
                    String sql = "select * from transport_information where agent_id='" + id + "'";
                    rst = statement.executeQuery(sql);
                    while (rst.next()) {
            %>
           
               <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
        <div class="container">
           
                   
            <h1 style="color:#ffffff"> Transport Agent  <%=rst.getString("agent_id")%> </h1>

                
                <table>
                           
                            
                            <tr><td>Information Id:</td><td  style="color:#00ffff"><%=rst.getInt("info_id")%></td>
                </tr>
                <tr><td>Number Plate:</td><td style="color:#00ffff"><%=rst.getString("no_plate")%></td></tr>
                 <tr><td>Type of Trucks:</td><td  style="color:#00ffff"><%=rst.getString("type_trucks")%></td></tr>
                  <tr><td>Person In Charge/ Driver:</td><td  style="color:#00ffff"><%=rst.getString("person_inCharge")%></td></tr>
                   <tr><td>Contact Number:</td><td  style="color:#00ffff"><%=rst.getString("contacT_no")%></td></tr>
                   <tr><td>Cost Per Trip (RM):</td><td  style="color:#00ffff"><%=rst.getInt("costPerTrip")%></td></tr>
                   <tr><td></td><td><input type="button" class="button1" value="Book Now !" onclick="window.location.href = 'book.jsp?info_id=<%=rst.getString("info_id")%>';" style="float:right"></td></tr>
                            
                        </table>

            </div>
     
                   
           
                    
            <%
                    }
                    connection.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
    </body>
</html>
