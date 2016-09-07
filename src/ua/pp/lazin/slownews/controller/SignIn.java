
package ua.pp.lazin.slownews.controller;


import ua.pp.lazin.slownews.entity.User;
import ua.pp.lazin.slownews.persistance.UserStorage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/signin")
public class SignIn extends HttpServlet {

    private UserStorage userStorage = UserStorage.getInstance();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("Username");
        User userFromDB = userStorage.findUserbyLogin(username);

        if (userFromDB == null) {
            request.setAttribute("message", "User with username <b>" + username + "</b> not found");
            request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
            return;
        }

        if (!userFromDB.getPassword().equals(request.getParameter("Password"))) {
            request.setAttribute("message", "Incorrect password");
            request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
            return;
        }

        request.getSession().setAttribute("user", username);
        response.sendRedirect("/news");
    }
}