package com.ganesh.servlets;

import java.io.IOException;
import com.ganesh.bean.UserBean;
import com.ganesh.dao.UserRegisterDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/creg")
public class UserRegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        String userName = req.getParameter("cname");
        String userPass = req.getParameter("cpass");
        String userFirstName = req.getParameter("cfname");
        String userLastName = req.getParameter("clname");
        String userMid = req.getParameter("cmid");

        UserBean user = new UserBean();
        user.setUserName(userName);
        user.setUserPass(userPass);
        user.setUserFirstName(userFirstName);
        user.setUserLastName(userLastName);
        user.setUserMid(userMid);
        boolean isRegistered = new UserRegisterDao().insertUser(user);
        if (isRegistered) {
            req.setAttribute("msg", "User registered successfully!");
            req.getRequestDispatcher("userRegisterSuccess.jsp").forward(req, res);
        } else {
            req.setAttribute("msg", "User registration failed. Please try again.");
            req.getRequestDispatcher("userRegisterSuccess.jsp").forward(req, res);
        }
    }
}
