<%-- 
    Document   : updateB_process
    Created on : May 4, 2020, 1:23:46 PM
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
String booking_id = request.getParameter("booking_id");
String cont_loading_Date=request.getParameter("cont_loading_Date");
String full_addr=request.getParameter("full_addr");
String book_date=request.getParameter("book_date");
String admin_id=request.getParameter("admin_id");
int a= Integer.parseInt(admin_id);
String info_id=request.getParameter("info_id");
int info= Integer.parseInt(info_id);
String cont_id=request.getParameter("cont_id");
int c= Integer.parseInt(cont_id); 

if(booking_id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(booking_id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update transportation_booking set booking_id=?,cont_loading_Date=?,full_addr=?,book_date=?,admin_id=?,info_id=?,cont_id=?, where booking_id="+booking_id;
ps = con.prepareStatement(sql);
ps.setString(1,booking_id);
ps.setString(2, cont_loading_Date);
ps.setString(3, full_addr);
ps.setString(4, book_date);
ps.setInt(5, a);
ps.setInt(6, info);
ps.setInt(7, c);

int i = ps.executeUpdate();
if(i > 0)
{
response.sendRedirect("viewBook.jsp");
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
