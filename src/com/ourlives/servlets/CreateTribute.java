package com.ourlives.servlets;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.sql.*;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/CreateTribute")
public class CreateTribute extends HttpServlet {

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

        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String dob = request.getParameter("dob");
        String dod = request.getParameter("dod");
        String birth_place = request.getParameter("birth_place");
        String about_me = request.getParameter("about_me");
        String profile_pic = request.getParameter("profile_pic");

        System.out.println(request.getParameter("first_name"));
        System.out.println(request.getParameter("last_name"));
        System.out.println(request.getParameter("dob"));
        System.out.println(request.getParameter("dod"));
        System.out.println(request.getParameter("birth_place"));
        System.out.println(request.getParameter("about_me"));
        System.out.println(request.getParameter("profile_pic"));

        Connection conn = null;
        Statement stmt = null;

        try {

            //loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");

            //creating connection with the database 
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ourlives?useSSL=false", "admin", "admin");

            //STEP 4: Execute a query
            System.out.println("Inserting records into the table...");
            stmt = conn.createStatement();

            String sql = "INSERT INTO tributes(first_name, last_name, dob, dod, birth_place, about_me, profile_pic)" +
                    "VALUES ('" + first_name + "', '" + last_name + "', '" + dob + "', '" + dod + "', '" + birth_place + 
                    "', '" + about_me + "', '" + profile_pic + "')";
            stmt.executeUpdate(sql);

            response.setContentType("text/html");
            out.println("You are sucessfully registered<br>");
            out.println("<a href='main.jsp'>Return to Homepage</a><br>");
            out.println("Registration Confirmation<br>");

        } catch (Exception se) {
            se.printStackTrace();
        }

    }
}
