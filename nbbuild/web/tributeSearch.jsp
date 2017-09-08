<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<html>
    <head>
        <%@ include file="header.jsp" %>
        <link rel="stylesheet" href="css/header.css">

        <script>
            function getCities() {
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (xhttp.readyState === 4 && xhttp.status === 200) {
                        document.getElementById("city").innerHTML = xhttp.responseText;
                    }
                };
                xhttp.open("GET", "getCities.jsp?stateAbbr=" + document.getElementById("State").value, false);
                xhttp.send();
            }
        </script>
    </head>
    <body>
        <div class="content">
            <h1 style="text-align:left">Looking for a Tribute Page</h1>
            <br> 
            <br>
            <div style="width:100%">
                <font size="+3" color="green"><br>Search for a Tribute by Name</font> 
                <form action="Search.jsp" method="get">               
                    <table style="background-color: #ECE5B6;" >
                        <tr> 
                            <th>State</th> 
                            <td><select onchange="getCities()" name="State" id="State" size="1"> 
                                    <script>
                                        <%
                                            Connection conn = null;
                                            Statement stmt = null;

                                            try {
                                                //STEP 2: Register JDBC driver
                                                Class.forName("com.mysql.jdbc.Driver");

                                                //STEP 3: Open a connection
                                                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sportz", "admin", "admin");
                                                //STEP 4: Execute a query

                                                stmt = conn.createStatement();

                                                String sql = "select state_name, state_abbr from states";
                                                ResultSet rs = stmt.executeQuery(sql);
                                                //STEP 5: Extract data from result set
                                                out.println("<option selected>Select State</option> ");
                                                while (rs.next()) {
                                                    //Retrieve by column name
                                                    String stateName = rs.getString("state_name");
                                                    String stateAbbr = rs.getString("state_abbr");

                                                    out.println("<option value='" + stateAbbr + "'>" + stateName + "</option> ");

                                                }
                                                rs.close();
                                            } catch (SQLException se) {
                                                //Handle errors for JDBC
                                                se.printStackTrace();
                                            } catch (Exception e) {
                                                //Handle errors for Class.forName
                                                e.printStackTrace();
                                            } finally {
                                                //finally block used to close resources
                                                try {
                                                    if (stmt != null) {
                                                        conn.close();
                                                    }
                                                } catch (SQLException se) {
                                                }// do nothing
                                                try {
                                                    if (conn != null) {
                                                        conn.close();
                                                    }
                                                } catch (SQLException se) {
                                                    se.printStackTrace();
                                                }//end finally try
                                            }//end try
                                        %>
                                    </script>
                                    <br>
                                    <th> City </th>
                                    <td>
                                        <select id = "city" size = "1">
                                        </select>
                                    <th> Zip Code </th>
                                    <td>
                                        <input value = ""> </option> <br>
                                        </form>
                                        </div>
                                        <div>
                                            <input type = "submit" value = "Search">
                                        </div>
                                        </div>
                                        </body>
                                        </html>

