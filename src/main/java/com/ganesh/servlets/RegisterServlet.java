package com.ganesh.servlets;

import java.io.IOException;
import com.ganesh.bean.AdminBean;
import com.ganesh.dao.RegisterDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/reg")
public class RegisterServlet extends HttpServlet {
	public RegisterDao rd = null;
	public AdminBean ab = null;

	@Override
	public void init() throws ServletException {
		rd = new RegisterDao();
		ab = new AdminBean();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
		HttpSession hs = req.getSession();
		if (hs == null) {
			req.setAttribute("msg", "Session Expired..!");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);

		} else {
			ab.setAdminName(req.getParameter("aname"));
			ab.setAdminPass(req.getParameter("pass"));
			ab.setFirstName(req.getParameter("fname"));
			ab.setLastName(req.getParameter("lname"));
			ab.setMid(req.getParameter("mid"));
			ab.setPhno(Long.parseLong(req.getParameter("phno")));
			int k = rd.registerAdmin(ab);
			if (k > 0) {
				req.setAttribute("msg", "Admin Registration Successfull..!");
				req.getRequestDispatcher("Adminregister.jsp").include(req, res);
			} else {
				req.setAttribute("msg", "Admin Registration Failed..!!");
				req.getRequestDispatcher("Adminregister.jsp").include(req, res);
			}
		}

	}
}
