<%-- 
    Document   : getCities
    Created on : Jun 30, 2016, 1:05:39 AM
    Author     : sgates
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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

        String sql = "select DISTINCT city from zips where state = '" + request.getParameter("stateAbbr") + "' ORDER BY city";
        ResultSet rs = stmt.executeQuery(sql);
        //STEP 5: Extract data from result set
        while (rs.next()) {
            //Retrieve by column name
            String city = rs.getString("city");

            out.println("<option value='" + city + "'>" + city + "</option> ");

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