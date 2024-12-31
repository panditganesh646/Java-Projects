package com.ganesh.servlets;
import java.io.IOException;

import com.ganesh.dao.DeleteBorrowedBookDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/returnBorrowedBook")
public class returnBookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private DeleteBorrowedBookDao deleteBorrowedBookDao;

    @Override
    public void init() throws ServletException {
        deleteBorrowedBookDao = new DeleteBorrowedBookDao();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        String bookIdParam = req.getParameter("bcode");
        if (bookIdParam == null || bookIdParam.trim().isEmpty()) {
            req.setAttribute("msg", "Borrowed Book Code is required.");
            req.getRequestDispatcher("returnbooksuccess.jsp").forward(req, res);
            return;
        }
        try {
            int bookId = Integer.parseInt(bookIdParam);
            boolean isDeleted = deleteBorrowedBookDao.deleteBorrowedBookById(bookId);
            if (isDeleted) {
                req.setAttribute("msg", "Borrowed Book with Book code " + bookId + " returned successfully.");
            } else {
                req.setAttribute("msg", "Failed to return the Borrowed Book. ID " + bookId + " may not exist.");
            }
        } catch (NumberFormatException e) {
            req.setAttribute("msg", "Invalid Borrowed Book ID. Please enter a valid number.");
        }
        req.getRequestDispatcher("returnbooksuccess.jsp").forward(req, res);
    }
}
