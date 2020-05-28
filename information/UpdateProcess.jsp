<%-- 
    Document   : UpdateProcess
    Created on : Apr 14, 2020, 3:21:48 PM
    Author     : PAVI
--%>
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/fyp1";%>
<%!String user = "pavi";%>
<%!String psw = "pavi123";%>
<%
String info_id = request.getParameter("info_id");
String no_plate=request.getParameter("no_plate");
String type_trucks=request.getParameter("type_trucks");
String person_inCharge=request.getParameter("person_inCharge");
String contacT_no=request.getParameter("contacT_no");
String costPerTrip=request.getParameter("costPerTrip");
Double cost= Double.parseDouble(costPerTrip);
String agent_id=request.getParameter("agent_id");

if(info_id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(info_id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update transport_information set info_id=?,no_plate=?,type_trucks=?,person_inCharge=?,contacT_no=?,costPerTrip=?,agent_id=? where info_id="+info_id;
ps = con.prepareStatement(sql);
ps.setString(1,info_id);
ps.setString(2, no_plate);
ps.setString(3, type_trucks);
ps.setString(4, person_inCharge);
ps.setString(5, contacT_no);
ps.setDouble(6, cost);
ps.setString(7,agent_id);
int i = ps.executeUpdate();
if(i > 0)
{
response.sendRedirect("viewInformation.jsp");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
    </body>
</html>
