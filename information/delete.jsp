<%-- 
    Document   : delete
    Created on : Apr 12, 2020, 4:33:32 PM
    Author     : PAVI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DELETE Page</title>
    </head>
    <body>
       <%
String info_id=request.getParameter("info_id");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fyp1", "pavi", "pavi123");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM transport_information WHERE info_id="+info_id);
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
