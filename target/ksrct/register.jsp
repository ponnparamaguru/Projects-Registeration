<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet, java.sql.SQLException, java.sql.Statement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% 
/*if(request.getParameter("submit")!=null)
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
            pst.executeUpdate();
            pst.close();
            con.close();
        }
        catch (SQLException e) 
        {
            e.printStackTrace();
        }
        
        //<script>   
          //  alert("Registeration Successfull");     
        //</script> 
    }
    */%>
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
        <center>
            <h1>Project Registeration</h1>
            <form action="reg.jsp" method="post">
                <th><label>Team Name:</label></th>
                <input type="text" id="team" name="team" placeholder="Team Name"/><br><br>    
                <label>Member 1:</label>
                <input type="text" id="fname" name="fname" placeholder="Member 1"/><br><br>
                <label>Member 2:</label>
                <input type="text" id="sname" name="sname" placeholder="Member 2"/><br><br>
                <label>Project Title:</label>
                <input type="text" id="project" name="project" placeholder="Project Title"/><br><br>
                <input type="submit" id="submit" class="submit" value="Submit" name="submit">
            </form>
        </div>
    </center>
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