<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 

<% 
    if(request.getParameter("submit")!=null)
    {
        String id = request.getParameter("id");
        String team = request.getParameter("team");
        String fname = request.getParameter("fname");
        String sname = request.getParameter("sname");
        String project = request.getParameter("project");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.
        forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/prp","root","");
        pst = con.prepareStatement("update project_reg set team = ?, fname = ?,sname =?,project= ? where id = ?");
        pst.setString(1, team);
        pst.setString(2, fname);
        pst.setString(3, sname);
        pst.setString(4, project);
        pst.setString(5, id);
        int rowsAffected = pst.executeUpdate();

            if (rowsAffected > 0) 
            {
                response.sendRedirect("updated.jsp");
            }
            else 
            {
                response.sendRedirect("update.jsp");
            }
            pst.close();
            con.close();
        %>

    <%             
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <title>KSRCT</title>
            <link href="index.css" rel="stylesheet"/>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" 
            integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" 
            crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
        <header>
            <nav class="navbar"> 
                <div class="logo">
                    <a href="index.jsp"><img src="img/logo.png" /></a>
                </div>
                <ul>
                    <li><a href="index.jsp">Home</a></li>        
                    <li><a href="about.jsp">About</a></li>       
                    <li><a href="login.jsp">Login</a></li>         
                </ul>
            </nav>
        </header>
        <div class="reg">
            <h1>Update Project Details</h1>
            <center>
            <form action="#" method="post">
                <label>Team Name:</label>
                <input type="text" placeholder="Team Name" id="team" name="team" value="" /><br><br>

                <label>Member 1:</label>
                <input type="text" placeholder="Member 1" id="fname" name="fname" /><br><br>

                <label>Member 2:</label>
                <input type="text" placeholder="Member 2" id="sname" name="sname" /><br><br>

                <label>Project Title:</label>
                <input type="text" placeholder="Project Title" id="project" name="project" /><br><br>

                <input type="submit" id="submit" class="submit" value="Submit" name="submit">
            </form>
        </center>
        </div>
        <footer>
            <div class="social-media">
            <a href="https://www.facebook.com/ksrct1994"><i class="icn fa-brands fa-facebook-f"></i></a>
            <a href="https://www.instagram.com/ksrct1994"><i class="icn fa-brands fa-instagram"></i></a>
            <a href="https://www.twitter.com/ksrct1994"><i class="icn fa-brands fa-x-twitter"></i></a>
            <a href="https://www.youtube.com/ksrct1994"><i class="icn fa-brands fa-youtube"></i></a>
            <span><i>/ ksrct1992</i></span>
            </div>
        </footer>
    </body>
</html>