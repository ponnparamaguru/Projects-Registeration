<%@page import="java.sql.*" %> 
<% 
        String id = request.getParameter("id");
        Connection con;
        PreparedStatement pst;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/prp","root","");
        pst = con.prepareStatement("delete from project_reg where id = ?");
        pst.setString(1, id);
        int rowsAffected = pst.executeUpdate();
        
        if (rowsAffected > 0) 
        {
            response.sendRedirect("deleted.jsp");
        } 
        else 
        {
            response.sendRedirect("notfound.jsp");
        }
        
        
        %>