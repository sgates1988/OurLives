package com.ourlives.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/Welcome")
public class Welcome extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out;
        out = response.getWriter();

        String first_name = request.getParameter("first_name");
        out.println("Welcome to UrBaN <br>");
        out.println("<a href='main.jsp'>Click here to be redirected to the Members Page</a>");
        out.close();
    }

}
