<html>
    <head>
        <link rel="stylesheet" href="css/header.css">
        <%@ include file="header.jsp" %>
        <style>
            input {
                background-color: gold;
            }
        </style> 
    </head>
    <body>
        <div class="content">
            <div style="color:black;">
                <h1 style="text-align:left;font-family:Times New Roman;">Create Account</h1>
                <form method="post" action="CreateAcct.java">
                    First Name:<br><input type="text" name="first_name" /><br/>
                    Last Name:<br><input type="text" name="last_name" /><br/>
                    Date of Birth:<br><input type="date" name="dob" /><br/>
                    Address:<br><input type="text" name="address" /><br/>
                    City:<br><input type="text" name="city" /><br/>
                    State:<br><input type="text" name="state" /><br/>
                    Zip:<br><input type="text" name="zip" /><br/>
                    Email:<br><input type="email" name="email" /><br/>
                    Password:<br><input type="password" name="pass" /><br/>
                    <input  type="submit" value="Create Account" style="text-align:center;">
                </form>
            </div>
        </div>
    </body>
</html>

