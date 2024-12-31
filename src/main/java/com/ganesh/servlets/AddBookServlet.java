package com.ganesh.servlets;

import java.io.IOException;
import com.ganesh.bean.BookBean;
import com.ganesh.dao.AddBookDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@SuppressWarnings("serial")
@WebServlet("/addbook")
public class AddBookServlet extends HttpServlet {
	public BookBean bb = null;
	public AddBookDao abd = null;

	@Override
	public void init() throws ServletException {
		bb = new BookBean();
		abd = new AddBookDao();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
		HttpSession hs = req.getSession(false);
		if (hs == null) {
			req.setAttribute("msg", "Session Expired..!");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		} else {
			bb.setBcode(req.getParameter("bcode"));
			bb.setBname(req.getParameter("bname"));
			bb.setbAuthor(req.getParameter("author"));
			bb.setPrice(Double.parseDouble(req.getParameter("price")));
			bb.setBqty(Integer.parseInt(req.getParameter("qty")));
			int k = abd.AddBook(bb);
			if (k > 0) {
				req.setAttribute("msg", "Book Details Added Successfully..!");
				req.getRequestDispatcher("AddBook.jsp").include(req, res);
			} else {
				req.setAttribute("msg", "Book Details Adding Failed..!");
				req.getRequestDispatcher("AddBook.jsp").include(req, res);
			}
		}

	}
}
