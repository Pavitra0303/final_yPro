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
                background-size:100%;
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
       .wrapper{
  position: fixed;
  top: 60%;
  left: 65%;
  transform: translate(-50%, -50%);
}

.link_wrapper{
  position: relative;
}

a{
  display: block;
  width: 250px;
  height: 50px;
  line-height: 50px;
  font-weight: bold;
  text-decoration: none;
  background: #333;
  text-align: center;
  color: #fff;
  text-transform: uppercase;
  letter-spacing: 1px;
  border: 3px solid #333;
  transition: all .35s;
}

.icon{
  width: 50px;
  height: 50px;
  border: 3px solid transparent;
  position: absolute;
  transform: rotate(45deg);
  right: 0;
  top: 0;
  z-index: -1;
  transition: all .35s;
}

.icon svg{
  width: 30px;
  position: absolute;
  top: calc(50% - 15px);
  left: calc(50% - 15px);
  transform: rotate(-45deg);
  fill: #2ecc71;
  transition: all .35s;
}

a:hover{
  width: 200px;
  border: 3px solid #2ecc71;
  background: transparent;
  color: #2ecc71;
}

a:hover + .icon{
  border: 3px solid #2ecc71;
  right: -25%;
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
                    String sql = "select * from transport_agent where agent_id='" + id + "'";
                    rst = statement.executeQuery(sql);
                    while (rst.next()) {
            %>
           
               <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
        <div class="container">
           
                   
            <h1 style="color:#ffffff"> Transport Agent  <%=rst.getString("agent_id")%> </h1>

                
                <table>
                           
                            
                            <tr><td>Username:</td><td  style="color:#00ffff"><%=rst.getString("username")%></td>
                </tr>
                <tr><td>Email:</td><td style="color:#00ffff"><%=rst.getString("email")%></td></tr>
                 <tr><td>Contact Number:</td><td  style="color:#00ffff"><%=rst.getString("contact_no")%></td></tr>
                  <tr><td>Agency Name:</td><td  style="color:#00ffff"><%=rst.getString("Agency_name")%></td></tr>
                   <tr><td>Company Address:</td><td  style="color:#00ffff"><%=rst.getString("Company_addr")%></td></tr>
                   <tr><td>Number of Isothermal Truck:</td><td  style="color:#00ffff"><%=rst.getInt("num_iso")%></td></tr>
                   <tr><td>Number of 40ft Truck:</td><td  style="color:#00ffff"><%=rst.getInt("num_40ft")%></td></tr>
                   <tr><td>Number of 20ft Truck:</td><td  style="color:#00ffff"><%=rst.getInt("num_20ft")%></td></tr>
                   <tr><td>Number of 10t Truck:</td><td  style="color:#00ffff"><%=rst.getInt("num_10t")%></td></tr>
                    <tr><td>Company Website:</td><td  style="color:#00ffff"><%=rst.getString("company_website")%></td></tr>
                     <tr><td>Office Number:</td><td  style="color:#00ffff"><%=rst.getString("office_no")%></td></tr>
                            
                        </table>

            </div>
     
                   
           <div class="wrapper">
  <div class="link_wrapper">
    <a href="InfoDetails.jsp?agent_id=<%=rst.getString("agent_id")%>">For Truck Information!</a>
    <div class="icon">
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 268.832 268.832">
        <path d="M265.17 125.577l-80-80c-4.88-4.88-12.796-4.88-17.677 0-4.882 4.882-4.882 12.796 0 17.678l58.66 58.66H12.5c-6.903 0-12.5 5.598-12.5 12.5 0 6.903 5.597 12.5 12.5 12.5h213.654l-58.66 58.662c-4.88 4.882-4.88 12.796 0 17.678 2.44 2.44 5.64 3.66 8.84 3.66s6.398-1.22 8.84-3.66l79.997-80c4.883-4.882 4.883-12.796 0-17.678z"/>
      </svg>
    </div>
  </div>
  
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
