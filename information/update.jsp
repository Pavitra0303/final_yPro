<%-- 
    Document   : update
    Created on : Apr 12, 2020, 4:38:04 PM
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
        <title>JSP Page</title>
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
        <%
            try {
                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                statement = connection.createStatement();
                String sql = "select * from transport_information where info_id=" + info_id;
                resultSet = statement.executeQuery(sql);
                while (resultSet.next()) {
        %>
    </head>
    <body>
        <nav class="navbar navbar-expand-sm navbar-light fixed-top">
            <a class="navbar-brand" href="#">
                <img src="images/logo.png" alt="Logo" class="rounded-circle" style="width:200px; padding-top:no-padding;"> 

            </a>

        </nav>


        <h1 style="text-align:center;">UPDATE TRANSPORT INFORMATION </h1>

        <div class="container">
            <table class="table table-striped">
                <tbody>
                    <tr>
                        <td colspan="1">
                            <form class="well form-horizontal" method="POST" action= "UpdateProcess.jsp" >

                                <fieldset>
                                    <div class="form-group"> 
                                        <label class="col-md-4 control-label"> Information Id:</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                                                <input type="text" name="info_id" class="form-control" value="<%=resultSet.getString("info_id") %>" readonly="true"/>  <input type="hidden" name="info_id" class="form-control" value="<%=resultSet.getString("info_id") %>"/> </div> 
                                        </div>
                                    </div>
                                    <div class="form-group"> 
                                        <label class="col-md-4 control-label"> Number Plate :</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                                                <input type="text" name="no_plate" class="form-control" value="<%=resultSet.getString("no_plate") %>"/> </div> 
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
                                                <input type="text" name="person_inCharge" class="form-control" value="<%=resultSet.getString("person_inCharge") %>"/> </div> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Contact Number:</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                <input type="text" name="contacT_no" class="form-control" value="<%=resultSet.getString("contacT_no") %>"/></div> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Cost Per Trip :</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                <input type="number" name="costPerTrip" class="form-control" placeholder="00.00" step="00.00" value="<%=resultSet.getDouble("costPerTrip") %>"/></div> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Agent ID :</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                <input type="number" name="agent_id" class="form-control" value="<%=resultSet.getString("agent_id") %>"  readonly="true"/>
                                                <input type="hidden" name="agent_id" class="form-control" value="<%=resultSet.getString("agent_id") %>"/>
                                            </div> 
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
        </div>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
        <footer id="sticky-footer" class="py-4 bg-dark text-white-50" style="padding-top:0px;">
            <div class="container text-center">
                <small>Copyright &copy; Pavitra2020</small>
            </div>
        </footer>
    </body>
</html>
