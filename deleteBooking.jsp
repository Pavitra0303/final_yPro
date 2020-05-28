<%-- 
    Document   : deleteContainer
    Created on : Feb 17, 2020, 11:54:44 PM
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
String booking_id=request.getParameter("booking_id");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fyp1", "pavi", "pavi123");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM transportation_booking WHERE booking_id="+booking_id);
out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Successfully Cancel Booking\")");
                out.println("</script>");
response.sendRedirect("viewBook.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
    </body>
</html>
