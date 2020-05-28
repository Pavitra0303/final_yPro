<%-- 
    Document   : loginProcess
    Created on : Mar 11, 2020, 2:05:01 AM
    Author     : PAVI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <title>Login</title>
<%
String email=request.getParameter("email");

String password=request.getParameter("password");

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fyp1","pavi","pavi123");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from admin where email='"+email+"' and password='"+password+"'");
try{
rs.next();
if(rs.getString("password").equals(password)&&rs.getString("email").equals(email))
{
    response.sendRedirect("adminHome.jsp");
   
    //String usertype = request.getParameter("type_user");


}

else{
out.println("Invalid password or username.PLEASE CHECK AND RETYPE YUOR EMAIL AND PASSOWRD");
}

}
catch (Exception e) {
e.printStackTrace();
}
 
%>
    </head>
    <body>
     
    </body>
</html>