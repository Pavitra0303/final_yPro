<%-- 
    Document   : UpdateContainer
    Created on : Feb 17, 2020, 11:31:24 PM
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
String cont_id = request.getParameter("cont_id");

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
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(url, userid, password);
statement=connection.createStatement();
String sql ="select * from container_profile where cont_id="+ cont_id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
        <h1 style="text-align:center;">UPDATE CONTAINER </h1>

        <div class="container">
            <table class="table table-striped">
                <tbody>
                    <tr>
                        <td colspan="1">
                            <form class="well form-horizontal" method="POST" action= "update_process.jsp" >

                                <fieldset>
                                      <div class="form-group"> 
                                        <label class="col-md-4 control-label"> Container ID :</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                                                <input type="hidden" name="cont_id" class="form-control" value="<%=resultSet.getString("cont_id")%>" readonly="true"/> 
                                                <input type="text" name="cont_id" class="form-control" readonly="true" value="<%=resultSet.getString("cont_id")%>"/> </div> 
                                        </div>
                                    </div>

                                    <div class="form-group"> 
                                        <label class="col-md-4 control-label"> Container Reference Number :</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                                                <input type="text" name="con_ref_num" class="form-control" value="<%=resultSet.getString("con_ref_num")%>"/> </div> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Container Type :</label> 
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-th-large"></i></span>
                                                <input type="text" name="cont_type" class="form-control" value="<%=resultSet.getString("cont_type")%>"/> </div> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Length:</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                <input type="number" name="length" class="form-control" value="<%=resultSet.getInt("length")%>"/></div> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Width :</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                <input type="number" name="width" class="form-control"  value="<%=resultSet.getInt("width")%>"/></div> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Height :</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                <input type="number" name="height" class="form-control"  value="<%=resultSet.getInt("height")%>"/></div> 
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Destination : </label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                <input type="text" name="destination" class="form-control"  value="<%=resultSet.getString("destination")%>"/> </div> 
                                        </div>
                                    </div>

                                    <div class="form-group">

                                        <label class="col-md-4 control-label">Estimated Arrived date :</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                                <input type="date" name="EstimatedDateArrived" class="form-control"   value="<%=resultSet.getString("EstimatedDateArrived")%>"/> </div> 
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



