<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
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
        <center>
            <table>
                <tr>
                    <th>Team Name</th>
                    <th>Member 1</th>
                    <th>Member 2</th>
                    <th>Project Title</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                <%   

                Connection con;
                PreparedStatement pst;
                ResultSet rs;
                  
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/prp","root","");
                                          
                String query = "select * from project_reg";
                Statement st = con.createStatement();
                                            
                rs =  st.executeQuery(query);
                                              
                while(rs.next())
                {
                  String id = rs.getString("id");
                %>
                <tr>
                    <td><%=rs.getString("team") %></td>
                    <td><%=rs.getString("fname") %></td>
                    <td><%=rs.getString("sname") %></td>
                    <td><%=rs.getString("project") %></td>
                    <td><a href="fupdate.jsp?id=<%=id%>"><i class="icon fa-solid fa-pen-to-square"></i></a></td>
                    <td><a href="delete.jsp?id=<%=id%>"><i class="icon fa-solid fa-trash-can"></i></a></td>
                </tr>
                <%
                }
                %>
            </table>
            </center>
    </body>
</html>