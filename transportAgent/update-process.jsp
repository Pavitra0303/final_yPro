<%-- 
    Document   : update-process
    Created on : Feb 17, 2020, 11:37:59 PM
    Author     : PAVI
--%>


<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>

</style>
</head>
<body>



    <%
        String id = request.getParameter("agent_id");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String contact_no = request.getParameter("contact_no");

        String agency_name = request.getParameter("agency_name");
        String addr = request.getParameter("company_addr");
        String num_iso = request.getParameter("num_iso");
        int S = Integer.parseInt(num_iso);
        String num_40ft = request.getParameter("num_40ft");
        int D = Integer.parseInt(num_40ft);
        String num_20ft = request.getParameter("num_20ft");
        int F = Integer.parseInt(num_20ft);
        String num_10t = request.getParameter("num_10t");
        int G = Integer.parseInt(num_10t);
        String website = request.getParameter("companyWebsite");
        String office_no = request.getParameter("office_no");

        if (id != null) {
            Connection con = null;
            PreparedStatement ps = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fyp1", "pavi", "pavi123");
                String sql = "Update transport_agent set agent_id=?,username=?,email=?,password=?,contact_no=?,Agency_name=?,Company_addr=?,num_iso=?,num_40ft=?,num_20ft=?,num_10t=?,company_website=?,office_no=? where agent_id=?" + id;
                ps = con.prepareStatement(sql);

                ps.setString(1, id);
                ps.setString(2, username);
                ps.setString(3, email);
                ps.setString(4, password);
                ps.setString(5, contact_no);
                ps.setString(6, agency_name);
                ps.setString(7, addr);
                ps.setInt(8, S);
                ps.setInt(9, D);
                ps.setInt(10, F);
                ps.setInt(11, G);
                ps.setString(12, website);
                ps.setString(13, office_no);

                int i = ps.executeUpdate();
                if (i > 0) {
                    out.print("<script>window.alert('Your Profile has been Updated');</script>");
                } else {
                    out.print("There is a problem in updating Record.");
                }
            } catch (SQLException sql) {
                request.setAttribute("error", sql);
                out.println(sql);
            }
        }
    %>
</body>
</html>