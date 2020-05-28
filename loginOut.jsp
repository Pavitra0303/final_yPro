<%-- 
    Document   : loginOut
    Created on : Apr 15, 2020, 1:04:19 PM
    Author     : PAVI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Page</title>
    </head>
    <body>
       <%
session.invalidate();
response.sendRedirect("Homepage.jsp");
%>
    </body>
</html>
