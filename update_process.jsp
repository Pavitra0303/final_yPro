<%-- 
    Document   : update_process
    Created on : Apr 14, 2020, 3:39:08 PM
    Author     : PAVI
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update process</title>
    </head>
    <body>
        <%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/fyp1";%>
<%!String user = "pavi";%>
<%!String psw = "pavi123";%>
<%
String cont_id = request.getParameter("cont_id");
String con_ref_num=request.getParameter("con_ref_num");
String cont_type=request.getParameter("cont_type");
String length=request.getParameter("length");
int l= Integer.parseInt(length);
String width=request.getParameter("width");
int w= Integer.parseInt(width);
String height=request.getParameter("height");
int h= Integer.parseInt(height);
String destination=request.getParameter("destination");
String EstimatedDateArrived = request.getParameter("EstimatedDateArrived"); 

if(cont_id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(cont_id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update container_profile set cont_id=?,con_ref_num=?,cont_type=?,length=?,width=?,height=?,destination=?,EstimatedDateArrived=? where cont_id="+cont_id;
ps = con.prepareStatement(sql);
ps.setString(1,cont_id);
ps.setString(2, con_ref_num);
ps.setString(3, cont_type);
ps.setInt(4, l);
ps.setInt(5, w);
ps.setInt(6, h);
ps.setString(7,destination);
ps.setString(8,EstimatedDateArrived);
int i = ps.executeUpdate();
if(i > 0)
{
response.sendRedirect("viewContainer.jsp");
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
