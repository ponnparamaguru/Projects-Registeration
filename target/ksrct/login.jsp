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
        <div class="login">
            <h1>Authorized Persons Only</h1>
            <center>
        <form action="validate.jsp" method="post">
            <label>Username :</label>
            <input type="text" placeholder="Username" name="uname"/><br><br>
            <label>Password :</label>
            <input type="password" placeholder="Password" name="pass"/><br><br>
            <input type="submit" class="submit" value="Submit"><br><br>
        </form>
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