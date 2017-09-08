<html>
    <head>
        <%@ include file="header.jsp" %>
        <link rel="stylesheet" href="css/header.css">
        <style>
            form input {
                width: 50%;
                padding: 8px 10px;
                margin: 8px 0;
                box-sizing: border-box;
                border: 3px solid #ccc;
                -webkit-transition: 0.5s;
                transition: 0.5s;
                outline: none;
                background-color: gold;
            }
            form input:focus {
                border: 3px solid #555;
            }
        </style> 
    </head>
    <body>
        <div class="content">
        <h1>Complete Registration</h1>
        <div>
            <form class="form" method="post" action="Register">
                <label>First Name:</label><br><input type="text" name="first_name" /><br/>
                Last Name:<br><input type="text" name="last_name" /><br/>
                Date of Birth:<br><input type="date" name="dob" /><br/>
                Address:<br><input type="text" name="address" /><br/>
                City:<br><input type="text" name="city" /><br/>
                State:<br><input type="text" name="state" /><br/>
                Zip:<br><input type="text" name="zip" /><br/>
                Email:<br><input type="email" name="email" /><br/>
                Password:<br><input type="password" name="pass" /><br/>
                <button  type="submit"  style="text-align:center;">Register</button>
            </form>
        </div>
        </div>
    </body>
</html>

