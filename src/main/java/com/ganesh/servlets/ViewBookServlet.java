package com.ganesh.servlets;

import java.io.IOException;
import java.util.List;

import com.ganesh.bean.BookBean;
import com.ganesh.dao.ViewBookDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@SuppressWarnings("serial")
@WebServlet("/view")
public class ViewBookServlet extends HttpServlet {
    private ViewBookDao viewDao;
    @Override
    public void init() throws ServletException {
        viewDao = new ViewBookDao();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        
        HttpSession hs = req.getSession();
        if (hs == null) {
			req.setAttribute("msg", "Session Expired..!");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);

		}else {
			 List<BookBean> books = viewDao.viewBooks();
		        if (books != null && !books.isEmpty()) {
		            req.setAttribute("books", books);
		        } else {
		            req.setAttribute("msg", "No books available");
		        }
		        req.getRequestDispatcher("viewAllBooks.jsp").forward(req, res);
		}
       
    }
}
