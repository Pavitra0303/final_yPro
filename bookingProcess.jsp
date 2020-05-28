<%-- 
    Document   : bookingProcess
    Created on : May 3, 2020, 4:50:23 PM
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
String cont_loading_Date=request.getParameter("cont_loading_Date");
String full_addr=request.getParameter("full_addr");
String book_date=request.getParameter("book_date");
String admin_id=request.getParameter("admin_id");
int a= Integer.parseInt(admin_id);
String info_id=request.getParameter("info_id");
int info= Integer.parseInt(info_id);
String cont_id=request.getParameter("cont_id");
int c= Integer.parseInt(cont_id);


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fyp1", "pavi", "pavi123");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into transportation_booking(cont_loading_Date,full_addr,book_date,admin_id,info_id,cont_id)values('"+cont_loading_Date+"','"+full_addr+"','"+book_date+"','"+a+"','"+info+"','"+c+"')");
 out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success Add Record\")");
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
