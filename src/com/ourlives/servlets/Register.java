package com.ourlives.servlets;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.sql.*;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/Register")
public class Register extends HttpServlet {

    /**
     *
     */
    private static final long serialVersionUID = 1L;
    PrintWriter out;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        out = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");

        String mem_id = request.getParameter("mem_id");
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String dob = request.getParameter("dob");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String zip = request.getParameter("zip");        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        try {

            //loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");

            //creating connection with the database 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ourlives?", "admin", "admin");

            PreparedStatement ps = con.prepareStatement("insert into members values(?,?,?,?,?,?,?,?,?,?)");
            
            ps.setString(1, mem_id);
            ps.setString(2, first_name);
            ps.setString(3, last_name);
            ps.setString(4, dob);
            ps.setString(5, address);
            ps.setString(6, city);
            ps.setString(7, state);
            ps.setString(8, zip);
            ps.setString(9, email);
            ps.setString(10, password);
            
            int i = ps.executeUpdate();

            if (true) {
                response.setContentType("text/html");
                out.println("You are sucessfully registered<br>");
                out.println("<a href='login.jsp'>Return to Login</a><br>");
                out.println("Registration Confirmation<br>");

                out.print("<table border='1'>");
                out.print("<tr>");
                out.print("<td>");
                out.println("First Name: " + first_name + "<br>");
                out.print("</td>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<td>");
                out.println("Last Name: " + last_name + "<br>");
                out.print("</td>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<td>");
                out.println("Date of Birth: " + dob + "<br>");
                out.print("</td>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<td>");
                out.println("Address: " + address + "<br>");
                out.print("</td>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<td>");
                out.println("City: " + city + "<br>");
                out.print("</td>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<td>");
                out.println("State: " + state + "<br>");
                out.print("</td>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<td>");
                out.println("Zip: " + zip + "<br>");
                out.print("</td>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<td>");
                out.println("Email: " + email + "<br>");
                out.print("</td>");
                out.print("</tr>");
                out.print("</table>");

                
            }

        } catch (Exception se) {
            se.printStackTrace();
        }

    }
}

