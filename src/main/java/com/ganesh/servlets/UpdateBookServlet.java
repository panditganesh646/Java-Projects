package com.ganesh.servlets;
import java.io.IOException;
import com.ganesh.bean.BookBean;
import com.ganesh.dao.UpdateBookDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@SuppressWarnings("serial")
@WebServlet("/updateBook")
public class UpdateBookServlet extends HttpServlet {
	public UpdateBookDao ubd = null;
	public BookBean bb = null;
	@Override
	public void init() throws ServletException {
		ubd = new UpdateBookDao();
		bb = new BookBean();
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
		 
		HttpSession hs = req.getSession();
		if (hs == null) {
			req.setAttribute("msg", "Session Expired..!");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);

		} else {
			bb.setBname(req.getParameter("title"));
			bb.setbAuthor(req.getParameter("author"));
			bb.setBqty(Integer.parseInt(req.getParameter("qty")));
			bb.setPrice(Double.parseDouble(req.getParameter("price")));
			int k = ubd.updateBook(req.getParameter("bookId"), bb);
			if (k > 0) {
				req.setAttribute("msg", "Book Details Update Successfully..!");
				req.getRequestDispatcher("updateBook.jsp").forward(req, res);
			} else {

				req.setAttribute("msg", "Book Details Updation failed..");
				req.getRequestDispatcher("updateBook.jsp").forward(req, res);
			}
		}

	}
}
