<%-- 
    Document   : process
    Created on : Apr 10, 2020, 10:14:54 PM
    Author     : PAVI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
String no_plate=request.getParameter("no_plate");
String type_trucks=request.getParameter("type_trucks");
String person_inCharge=request.getParameter("person_inCharge");
String contacT_no=request.getParameter("contacT_no");
String costPerTrip=request.getParameter("costPerTrip");
Double cost= Double.parseDouble(costPerTrip);
String agent_id=request.getParameter("agent_id");
int id=Integer.parseInt(agent_id);


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fyp1", "pavi", "pavi123");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into transport_information(no_plate,type_trucks,person_inCharge,contacT_no,costPerTrip,agent_id)values('"+no_plate+"','"+type_trucks+"','"+person_inCharge+"','"+contacT_no+"','"+cost+"','"+id+"')");
response.sendRedirect("viewInformation.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
    </body>
</html>
