<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Processing</title>
</head>
<body>
    <%
        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");

        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/prp","root","");

            String sql = "SELECT * FROM login WHERE uname=? AND pass=?";
            pst = conn.prepareStatement(sql);
            pst.setString(1, uname);
            pst.setString(2, pass);

            rs = pst.executeQuery();

            if (rs.next()) 
            {    
                // Forwarding the request to "manage.jsp" while preserving request attributes
                request.setAttribute("uname", uname);
                request.getRequestDispatcher("manage.jsp").forward(request, response);
            } 
            else 
            {
                response.sendRedirect("login.jsp");
            }
        } 
        catch (SQLException | ClassNotFoundException e) 
        {
            e.printStackTrace();
        } 
        finally 
        {
            try 
            {
                if (rs != null) rs.close();
                if (pst != null) pst.close();
                if (conn != null) conn.close();
            } 
            catch (SQLException e) 
            {
                e.printStackTrace();
            }
        }
    %>
</body>
</html>
