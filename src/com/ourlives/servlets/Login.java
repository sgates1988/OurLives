package com.ourlives.servlets;

import com.ourlives.dao.LoginDao;
import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.sql.*;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/Login")
public class Login extends HttpServlet {

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

        String n = request.getParameter("email");
        String p = request.getParameter("password");
        if (LoginDao.validate(n, p)) {
            RequestDispatcher rd = request.getRequestDispatcher("Welcome");
            rd.forward(request, response);
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.include(request, response);
            out.print("Sorry username or password error");
        }
    }
}
