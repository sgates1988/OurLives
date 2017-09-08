<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
    <head>
        <link rel="stylesheet" href="css/header.css">
        <%@ include file="header.jsp" %>
    </head>

    <body>
        <h1 style="text-align:center float"> "LOOKING FOR A TEAM.....COMING SOON"</h1>
        <br>

        <div>

            <font size="+3" color="green"><br>Search for a Team</font> 
            <FORM action="Search.jsp" method="get"> 
                <TABLE style="background-color: #ECE5B6;" WIDTH="10%" > 


                    <TR> 
                        <TH width="50%" >State</TH> 
                        <TD width="50%"><select name="State" size="1"> 
                                <option selected="selected">Alaska</option> 
                                <option value="Alabama">Alabama</option>
                                <option value="Georgia">Georgia</option>
                                <option value="Florida">Florida</option>
                                <br></select> 

                        <TH width="50%" >City</TH> 
                        <TD width="50%"><select name="City" size="1"> 
                                <option selected="selected">Atlanta</option> 
                                <option value="Alabama">Macon</option>
                                <option value="Georgia">Marietta</option>
                                <option value="Florida">Florida</option>
                                <br></select> 

                        <TH width="50%" >Zip Code</TH> 
                        <TD width="50%" size="1"> 
                            <input value=""></option> <br>
                            </FORM>
                            </div>

                            <div><input type="submit" value="Search"/></div>

                            </body>
                            </html>

