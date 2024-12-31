package com.ganesh.servlets;

import java.io.IOException;

import com.ganesh.bean.UserBean;
import com.ganesh.dao.LoginUser;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/clog")
public class LoginUserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        UserBean ab = new LoginUser().login(req);
        if (ab != null) {
            HttpSession session = req.getSession(); 
            session.setAttribute("uid", ab.getUserid());
            session.setMaxInactiveInterval(30 * 60); 
            req.setAttribute("msg", "Login successfully..!");
            req.getRequestDispatcher("loginsuccessuser.jsp").include(req, res);
        } else {
            req.setAttribute("msg","error");
            req.getRequestDispatcher("UserLogin.jsp").include(req, res);
        }
    }
}
