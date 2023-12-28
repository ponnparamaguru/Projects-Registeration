<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<% %>
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
        <div class="home">
            <h3>Welcome to </h3>
            <h1>KS Rangasamy College of Technology</h1>
            <h4>Project Management System</h4>
            <div>
                <a href="slogin.jsp"><button class="reg-btn">Register</button></a>
                <a href="report.jsp"><button class="view-btn">View</button></a>
            </div>
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