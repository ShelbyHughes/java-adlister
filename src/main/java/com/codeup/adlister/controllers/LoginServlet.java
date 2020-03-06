package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = null;
        user = DaoFactory.getUsersDao().findByUsername(username);


        // TODO: find a record in your database that matches the submitted password

        boolean passwordMatch = password.equals(user.getPassword());

        // TODO: make sure we find a user with that username

        boolean usernameMatch = username.equalsIgnoreCase(user.getUsername());



        // TODO: check the submitted password against what you have in your database
        boolean validAttempt = password.equals(user.getPassword());

        if (validAttempt) {
            // TODO: store the logged in user object in the session, instead of just the username

            request.getSession().setAttribute("user", user);
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/login");
        }
    }
}
