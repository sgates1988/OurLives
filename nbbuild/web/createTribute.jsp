<html>
    <head>
        <link rel="stylesheet" href="css/header.css">
        <%@ include file="header.jsp" %>
    </head>
    <style>
        .profilepic {
            width: 100px;
            border-color: black;  
        }
    </style>
    <body>
        <div class="content">
            <div>
                <form method="post" action="Save">
                    <h1 style="text-align:center; color: black"> Create a Tribute </h1>

                    <div>
                        <h1>Upload Profile Pic</h1>
                        <p>
                            <label>File Location</label>
                        </p>
                        <h3 style="color: white">About Me</h3><input></input>
                        <h1 style="text-align:left;font-family:Times New Roman;">Profile</h1>
                        First Name:<br><input type="text" name="first_name" /><br/>
                        Last Name:<br><input type="text" name="last_name" /><br/>
                        Date of Birth:<br><input type="date" name="dob" /><br/>
                        Date of Death:<br><input type="date" name="dod" />(leave blank if alive)<br/> 
                        Birth Place:<br><input type="text" name="birth_place" /><br/>
                        <br><input  type="submit" value="Save" style="text-align:center;">
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>

