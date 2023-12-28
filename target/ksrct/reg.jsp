<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet, java.sql.SQLException, java.sql.Statement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% 
    if(request.getParameter("submit")!=null)
    {
        String team = request.getParameter("team");
        String fname = request.getParameter("fname");
        String sname = request.getParameter("sname");
        String project = request.getParameter("project");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        try
        {
            con = DriverManager.getConnection("jdbc:mysql://localhost/prp","root","");
            pst = con.prepareStatement("insert into project_reg(team,fname,sname,project)values(?,?,?,?)");
            pst.setString(1, team);
            pst.setString(2, fname);
            pst.setString(3, sname);
            pst.setString(4, project);
            int rowsAffected = pst.executeUpdate();

            if (rowsAffected > 0) 
            {
                response.sendRedirect("registered.jsp");
            }
            else 
            {
                response.sendRedirect("register.jsp");
            }
            pst.close();
            con.close();
        }
        catch (SQLException e) 
        {
            e.printStackTrace();
        }
    }
%>