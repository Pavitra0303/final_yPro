<%-- 
    Document   : process
    Created on : Feb 17, 2020, 4:19:01 PM
    Author     : PAVI
--%>
<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
String username=request.getParameter("username");
String email=request.getParameter("email");
String password=request.getParameter("password");
String contact_no=request.getParameter("contact_no");

String agency_name=request.getParameter("agency_name");
String addr=request.getParameter("company_addr");
String num_iso=request.getParameter("num_iso");
int S= Integer.parseInt(num_iso);
String num_40ft=request.getParameter("num_40ft");
int D= Integer.parseInt(num_40ft);
String num_20ft=request.getParameter("num_20ft");
int F= Integer.parseInt(num_20ft);
String num_10t=request.getParameter("num_10t");
int G= Integer.parseInt(num_10t);
String website=request.getParameter("companyWebsite");
String office_no = request.getParameter("office_no");  




try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fyp1", "pavi", "pavi123");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into transport_agent(username,email,password,contact_no,Agency_name,Company_addr,num_iso,num_40ft,num_20ft,num_10t,company_website,office_no)values('"+username+"','"+email+"','"+password+"','"+contact_no+"','"+agency_name+"','"+addr+"','"+S+"','"+D+"','"+F+"','"+G+"','"+website+"','"+office_no+"')");
response.sendRedirect("login.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
    </body>
</html>
