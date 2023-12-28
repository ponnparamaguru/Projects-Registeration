<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" %>
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
        
        <% String idParameter = request.getParameter("id");
        
            if (idParameter != null && !idParameter.isEmpty()) 
            {
                String fetchedTeam = "";
                String fetchedFname = "";
                String fetchedSname = "";
                String fetchedProject = "";
            
                Connection con = null;
                PreparedStatement pst = null;
                ResultSet rs = null;
            
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost/prp", "root", "");
                    String fetchQuery = "SELECT * FROM project_reg WHERE id = ?";
                    pst = con.prepareStatement(fetchQuery);
                    pst.setString(1, idParameter);
                    rs = pst.executeQuery();
                
                    if (rs.next()) 
                    {
                    
                        fetchedTeam = rs.getString("team");
                        fetchedFname = rs.getString("fname");
                        fetchedSname = rs.getString("sname");
                        fetchedProject = rs.getString("project");
                    } 
                
                } 
                catch (ClassNotFoundException | SQLException e) 
                {
                    e.printStackTrace();
                } 
                finally 
                { 
                    try 
                    {
                     if (rs != null) rs.close();
                     if (pst != null) pst.close();
                     if (con != null) con.close();
                    } 
                    catch (SQLException e) 
                    {
                        e.printStackTrace();
                    }
                } %>
            <form method="post" action="update.jsp">
                <label>Team Name:</label>
                <input type="text" name="team" placeholder="Team Name" value="<%= fetchedTeam %>"/><br><br>
                
                <label>Member 1:</label>
                <input type="text" name="fname" placeholder="Member 1" value="<%= fetchedFname %>"/><br><br>
                
                <label>Member 2:</label>
                <input type="text" name="sname" placeholder="Member 2" value="<%= fetchedSname %>"/><br><br>
                
                <label>Project Title:</label>
                <input type="text" name="project" placeholder="Project Title" value="<%= fetchedProject %>"/><br><br>
                
                <input type="hidden" name="id" value="<%= idParameter %>">
                <input type="submit" id="submit" class="submit" value="Submit" name="submit">
            </form>
            
        <% } 
        else 
        { %>
            <p>Error: Missing or invalid ID parameter</p>
        <% } %>
    </div>
</body>
</html>
