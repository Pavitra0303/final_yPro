<%-- 
    Document   : containerProcess
    Created on : Feb 17, 2020, 9:47:19 PM
    Author     : PAVI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Process</title>
    </head>
    <body>
        <%
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

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fyp1", "pavi", "pavi123");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into container_profile(con_ref_num,cont_type,length,width,height,destination,EstimatedDateArrived)values('"+con_ref_num+"','"+cont_type+"','"+l+"','"+w+"','"+h+"','"+destination+"','"+EstimatedDateArrived+"')");
response.sendRedirect("viewContainer.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
    </body>
</html>
