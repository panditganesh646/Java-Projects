package com.ganesh.servlets;

import java.io.IOException;

import com.ganesh.bean.AdminBean;
import com.ganesh.dao.LoginDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/log")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        AdminBean ab = new LoginDao().login(req);
       

        if (ab != null) {
            HttpSession session = req.getSession(); 
            session.setAttribute("adminName", ab.getAdminName());
            session.setMaxInactiveInterval(30 * 60); 
            req.setAttribute("msg", "Login successfully..!");
            req.getRequestDispatcher("loginsuccess.jsp").include(req, res);
        } else {
            req.setAttribute("msg","error");
            req.getRequestDispatcher("Adminlogin.jsp").include(req, res);
        }
    }
}
