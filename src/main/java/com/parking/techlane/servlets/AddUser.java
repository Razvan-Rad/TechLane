package com.parking.techlane.servlets;

import com.parking.techlane.ejb.UserBean;
import jakarta.inject.Inject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.HttpConstraint;
import jakarta.servlet.annotation.ServletSecurity;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Arrays;

@ServletSecurity(value = @HttpConstraint(rolesAllowed = {"WRITE_CARS"}))
@WebServlet(name="AddUser",value="/AddUser")
public class AddUser extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("userGroups", new String[] {"READ_CARS", "WRITE_CARS", "READ_USERS",
                "WRITE_USERS"});
        request.getRequestDispatcher("/WEB-INF/pages/addUser.jsp").forward(request, response);
    }
    @Inject
    UserBean usersBean;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        double balance = Double.parseDouble(request.getParameter("balance"));
        String[] userGroups = request.getParameterValues("user_groups");
        if (userGroups == null) {
            userGroups = new String[0];
        }

        usersBean.createUser(username, email, password, balance, Arrays.asList(userGroups));
        response.sendRedirect(request.getContextPath() + "/Users");
            }
}
