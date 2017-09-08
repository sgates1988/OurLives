<html>
    <head>
        <style>
            body{
                background: gold;
            }
            .loginbox {
                border: white;
                margin: auto;
                position: relative;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <div class="loginbox">
            <h1 style="text-align:center;font-family:Times New Roman;">
                Welcome to #OurLives <br>Join The Movement<h1>
                    <h2>
                        Please enter your Email and Password to Login
                    </h2>
                    <?php
                    echo "My first PHP script!";
                    ?> 
                    <form method="Post" action="Login">
                        Email:<br><input type="email" name="email"/><br/>
                        Password:<br><input type="password" name="password"/>
                        <br/>
                        <br>
                        <input  type="submit" value="Login" style="text-align:center;">  
                        <br>
                    </form>
                    <div class="loginbox">
                        <a href="main.jsp"><button>Cancel</button></a>
                        <br>
                    </div>
                    </body>
                    </html>